#' @title BMI585 final project: two_sided_z convert a test statistic into the area under the z-density
#' @description This functions accept a numerical value and and dataframe
#' @param t: the upper bound |z|
#' @return result: an array of area < |z|
#' @export
#' @import distributions3
#' @examples
#' z <- 0.5
#' two_sided_z(z)


two_sided_z = function(z){
  z_stat <- z
  Z <- Normal(0, 1)
  result <-1 - cdf(Z, abs(z_stat)) + cdf(Z, -abs(z_stat))
  return (result)
}
