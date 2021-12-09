#' @title BMI585 final project: two_sided_t convert a test statistic into the area under the t-density
#' @description This functions accept a numerical value and and dataframe
#' @param t: the upper bound |t|
#' @param df: a numerical array
#' @return result: an array of area < |t|
#' @export
#' @import distributions3
#' @examples
#' df <- c(1,1,1)
#' t <- 0.5
#' two_sided_t(t,df)


two_sided_t = function(t,df){
  T <- StudentsT(df = df)  # make a T_9 distribution
  result <- 1 - cdf(T, abs(t)) + cdf(T, -abs(t))
  return (result)
}
