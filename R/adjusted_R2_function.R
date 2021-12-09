#' @title BMI585 final project: adjusted R^2 measure for the regression model which has penalty on the number of parameters
#' @description This functions accept two numerical arrays
#' @param y: the numerical array for the ground truth
#' @param y_d: the numerical array for the regression
#' @param n: the number of the data
#' @return R_s: the adjusted R^2 measure
#' @export
#' @examples
#' y <- c(1,1,1)
#' y_d <- c(1,1,0.5)
#' n <- 3
#' adjusted_R2(y,y_d,n)


adjusted_R2 <- function(y,y_d,n) {
  sse <- sum((y_d - y)^2)
  RSS <- sum((y_d - mean(y))^2)
  TSS <- RSS + sse
  R_s <- 1-(RSS/(length(y_d)-n-1))/(TSS/(length(y_d)-1))
  return(R_s)
}
