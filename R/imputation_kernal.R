#' Imputation Function - Kernal Version
#'
#' @param impute_variable The variable you wish to impute.
#' @param wet_season_length The length of the wet season in days.
#'
#' @return A data frame.
#' @export
imputation_kernel <- function(impute_variable, wet_season_length = 182){

  n = wet_season_length - length(impute_variable)

  #Store the standard deviation is worked out from the smooth kernel density curve
  #Used for sampling the kernel density
  bw = stats::density(impute_variable)$bw

  #Draw from the sample to get n means of kernels (individual gaussian distributions)
  #and then from the kernel density
  means = sample(impute_variable, n, replace = TRUE)
  #Note that the absolute value is taken only as values close to 0 can result in
  #negative values due to the nature of kernel density gaussian curves
  density_samples = abs(stats::rnorm(n, mean = means, sd = bw))
  density_samples

}
