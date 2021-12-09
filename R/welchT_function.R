#' @title BMI585 final project: Welch’s t-test is used to compare the means between two independent arrays
#' @description This functions accept two numerical arrays
#' @param x:the first array
#' @param y:the second array
#' @return welch: welch t test statistics
#' @export
#' @examples
#' t <- c(1,1,1)
#' g <- c(0,0,0)
#' welchT(t,g)


welchT = function(x,y){
  freeA <- sd(x)**2/length(x)
  freeB <- sd(y)**2/length(y)
  denom <- sqrt(freeA+freeB)
  welch <- (mean(x)-mean(y))/denom
  return (welch)
}
