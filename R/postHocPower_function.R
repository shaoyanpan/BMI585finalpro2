#' @title BMI585 final project: the posthoc power for comparison of two array
#' @description This functions accept 3 numerical values
#' @param d: mean difference
#' @param n1: number of values in the first array
#' @param n2: number of values in the second array
#' @export
#' @import stats
#' @return p: post-hoc power
#' @examples
#' d <- 1
#' n1 <- 20
#' n2 <- 20
#' postHocPower(d,n1,n2)


postHocPower = function(d,n1,n2){
  p <- 0
  for (ind in 1:1000){
    group_1 <- rnorm(n1, mean = 0, sd = 1)
    group_2 <- rnorm(n2, mean = 0+d, sd = 1)
    p <- p+power.t.test(n=n,delta=mean(group_1)-mean(group_2))$power
  }
  p <- p/1000
  return(p)
}
