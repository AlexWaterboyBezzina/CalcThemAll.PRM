#' Calculate Wet Season Average Pesticide Risk Metric Values Using Multiple Imputation
#'
#' @param daily_PRM_data A data set of calculated daily average PRM values.
#' This data set should also include a "Date", "Sampling Year" and "Site Name" column.
#' @param PRM_group This specifies the name of the column to run the calculations on.
#' The daily average calculations gives PRM for each pollution type and
#' total in different columns so this selects which to run. "Total" is set as
#' the default as it is the PRM of all pesticides.
#' @param imputations This sets the number of imputations to run.
#' The more imputations the greater the reliability,
#' however it also increases calculation time. You can increase imputations beyond 1000
#' however the improvement of the confidence interval on imputed values may not be
#' sufficient to warrant increased computing time. We recommend 1000 :)
#' @param min_sampling_days This is the minimum number of sampling days a site-year
#' combination must have to calculate a wet season average PRM.
#' No less than 12 is the default (1 for each month) for reliability but more is recommended.
#' @param wet_season_length The length of the wet season in days.
#'
#' @return A data frame
#' @export
#'
#' @examples
#' Kant0_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Kant0_pesticides,
#' pesticide_info = CatchThemAll.PRM::pesticide_info)
#' Kant0_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Kant0_pesticides_LOR_treated)
#' Kant0_wet_season_PSII_PRM <- calculate_wet_season_average_PRM(daily_PRM_data = Kant0_daily_PRM,
#' PRM_group = "PSII Herbicide PRM")
#' head(Kant0_wet_season_PSII_PRM)
#'
#' @importFrom dplyr .data
calculate_wet_season_average_PRM <- function(daily_PRM_data, PRM_group = "Total PRM",
                                             imputations = 1000, min_sampling_days = 12,
                                             wet_season_length = 182) {

  daily_PRM_data <- as.data.frame(daily_PRM_data)

  Daily_Avg_PRM_data <- daily_PRM_data %>% dplyr::rename("Daily.Ave.PRM" = PRM_group)

  if(min_sampling_days < 3){
    #add comment about min number being 3
    Daily_Avg_PRM_data <- Daily_Avg_PRM_data %>%
      dplyr::group_by(.data$`Site Name`, .data$`Sampling Year`) %>%
      dplyr::filter(dplyr::n() > 2)
  } else{
    Daily_Avg_PRM_data <- Daily_Avg_PRM_data %>%
      dplyr::group_by(.data$`Site Name`, .data$`Sampling Year`) %>%
      dplyr::filter(dplyr::n() > min_sampling_days)
  }

  #Create a list of dataframes of sampled days, split by site and year
  list_observed_data <- split(Daily_Avg_PRM_data$Daily.Ave.PRM,
                              f=list(Daily_Avg_PRM_data$`Site Name`,
                                     Daily_Avg_PRM_data$`Sampling Year`), drop = TRUE)

  #Create a list of lists to hold 1000 sets of imputed values
  list_kernel_imputations <- rep(list(vector("list", imputations)),
                                 length(list_observed_data))

  #Name elements of list appropriately
  names(list_kernel_imputations) <- names(list_observed_data)

  #Now assign imputed values to elements of a list once function is created
  for(i in 1:length(list_kernel_imputations)){
    for(j in 1:length(list_kernel_imputations[[i]])){
      list_kernel_imputations[[i]][[j]] = imputation_kernel(list_observed_data[[i]],
                                                            wet_season_length)
      list_kernel_imputations
    }
  }




  #Create a list of lists to hold multiple sets of imputed values concatenated with observed data
  list_kernel_imputations_observed <- rep(list(vector("list",
                                                      length(list_kernel_imputations[[1]]))),
                                          length(list_observed_data))


  names(list_kernel_imputations_observed) <- names(list_observed_data)


  for(i in 1:length(list_kernel_imputations_observed)){
    for(j in 1:length(list_kernel_imputations_observed[[i]])){
      list_kernel_imputations_observed[[i]][[j]] = c(list_observed_data[[i]],
                                                     list_kernel_imputations[[i]][[j]])
      list_kernel_imputations_observed
    }
  }



  list_kernel_MI_means <- rep(list(vector("list", length(list_kernel_imputations[[1]]))),
                              length(list_observed_data))

  names(list_kernel_MI_means) <- names(list_observed_data)

  for(i in 1:length(list_kernel_MI_means)){
    for(j in 1:length(list_kernel_MI_means[[i]])){
      list_kernel_MI_means[[i]][[j]] = mean(list_kernel_imputations_observed[[i]][[j]])
      list_kernel_MI_means
    }
  }


  #MI estimate and MI 95% Confidence interval (CI) function
  #PLEASE NOTE: CI was only used as a check to assess whether the number of imputations is
  #sufficient, i.e. that the range of possible values of PRM results for each site/year is
  #narrow indicating that PRM values will be consistent between runs of the code.
  #Not outputted in final results.
  estimate_ci_imputed_data <- function(means.1000){
    MI_Ave_PRM <- mean(means.1000)
    n <- length(means.1000)
    conf.level <- 0.95
    z <- stats::qt((1+conf.level)/2, df=n-1)
    se <- stats::sd(unlist(means.1000))/sqrt(n)
    CI <- z * se
    MI_CI_lower <- MI_Ave_PRM - CI
    MI_CI_upper <- MI_Ave_PRM + CI
    data.frame(MI_Ave_PRM)
  }

  list_kernel_MI_CIs <- vector("list", length(list_observed_data))

  names(list_kernel_MI_CIs) <- names(list_observed_data)

  for(i in 1:length(list_kernel_MI_CIs)){
    list_kernel_MI_CIs[[i]] = estimate_ci_imputed_data(unlist(list_kernel_MI_means[[i]]))
    list_kernel_MI_CIs
  }


  MI_estimates <- do.call("rbind", list_kernel_MI_CIs, 1)
  MI_estimates$`Site Name` <- unlist(lapply(strsplit(rownames(MI_estimates), "\\."), `[[`, 1))
  MI_estimates$`Sampling Year` <- unlist(lapply(strsplit(rownames(MI_estimates), "\\."), `[[`, 2))
  rownames(MI_estimates) <- NULL
  MI_estimates <- MI_estimates[, c("Site Name", "Sampling Year", "MI_Ave_PRM")]
  names(MI_estimates)[names(MI_estimates) == "MI_Ave_PRM"] <- paste0(PRM_group)
  MI_estimates

  return(dplyr::as_tibble(MI_estimates))

}
