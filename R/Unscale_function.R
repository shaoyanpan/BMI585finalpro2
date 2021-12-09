#' @title BMI585 final project: unscale function unscales the import data
#' @description This functions accept a class from the function scale
#' @param scale_ob: a scale object
#' @return result: the class with center, scale and the original unscale data
#' @export
#' @import stats
#' @examples
#' x <- matrix(1:10, ncol = 2)
#' scale_ob <- scale(x)
#' Unscale(scale_ob)


Unscale <- function(scale_ob) {
  center <- attr(scale_ob,"scaled:center")
  scale <- attr(scale_ob,"scaled:scale")
  result <- scale_ob * attr(scale_ob, 'scaled:scale')+attr(scale_ob, 'scaled:center')[col(scale_ob)]
  return(result)
}
