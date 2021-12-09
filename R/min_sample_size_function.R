#' @title BMI585 final project: find the minimum sample size
#' @description This functions accept a numerical value
#' @param effect_size: difference in means between the two groups divided by the sd
#' @return result: minimum sample size
#' @import stats
#' @export
#' @examples
#' effect_size <- 1
#' min_sample_size(effect_size)


min_sample_size = function(effect_size){
  result <- power.t.test(power = 0.9,delta = effect_size,sd = 1)
  return (result$n[1])
}
