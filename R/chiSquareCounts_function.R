#' @title BMI585 final project: chiSquareCounts for Chi square test
#' @description This functions accept a dataframe which is a table by Nx2
#' @param tib: a dataframe as a table
#' @return result: chi square test statistics
#' @import stats
#' @export
#' @examples
#' tib <- data.frame(Male = c(71,3,201),Female = c(64,8,89))
#' chiSquareCounts(tib)


chiSquareCounts = function(tib){
  result <- chisq.test(tib)
  return(result)
}
