#' Imputation Function - Beta Version
#'
#' @param impute_variable The variable you wish to impute.
#' @param wet_season_length The length of the wet season in days.
#'
#' @return A data frame.
#' @export
imputation_beta <- function(impute_variable, wet_season_length = 182){

  n = wet_season_length - length(impute_variable)

  #Remove NA's
  impute_variable = impute_variable[which(!is.na(impute_variable))]

  #Estimate Beta parameters for data split using MLE
  #Note ms-PAF as proportion
  beta_parameters = MASS::fitdistr(impute_variable/100, distr = "beta")
  shape1_beta = beta_parameters$estimate[1]
  shape2_beta = beta_parameters$estimate[2]

  beta_samples = stats::rbeta(n=n, shape1=shape1_beta, shape2=shape2_beta)
  #Multiply by 100 as imputed samples will be combined with observed samples
  beta_samples * 100

}
