#' @title BMI585 final project: R^2 measure for the regression model
#' @description This functions accept two numerical arrays
#' @param y: the numerical array for the ground truth
#' @param y_d: the numerical array for the regression
#' @return R_s: the R^2 measure
#' @export
#' @examples
#' y <- c(1,1,1)
#' y_d <- c(1,1,0.5)
#' R2(y,y_d)


R2 <- function(y,y_d) {
  sse <- sum((y_d - y)^2)
  RSS <- sum((y_d - mean(y))^2)
  TSS <- RSS + sse
  R_s <- 1-RSS/TSS
  return(R_s)
}
