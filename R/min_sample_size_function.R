#' @title BMI585 final project: find the minimum sample size
#' @description This functions accept a numerical value
#' @param power: power for statistics
#' @return result: minimum sample size
#' @import stats
#' @export
#' @examples
#' power <- 1
#' min_sample_size(power)


min_sample_size = function(power){
  result <- power.t.test(power = power, delta = 1)
  return (result$n[1])
}
