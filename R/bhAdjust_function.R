#' @title BMI585 final project: the Bonferroni-Holm function for multiple comparison adjustment
#' @description This functions accept one numerical array and a numerical value
#' @param p: the numerical array for multiple comparison
#' @param alpha: number of values in the first array
#' @return p: post-hoc power
#' @examples
#' p<- c(0.0025, 0.0050, 0.0075, 0.0100, 0.0125, 0.0150, 0.0175, 0.0200, 0.0225, 0.0250)
#' alpha <- 0.05
#' bhAdjust(p,alpha)


bhAdjust <- function(p,alpha){
  new_p<-p.adjust(p, method = "holm", n = length(p))
  order_p <-sort(new_p, decreasing = FALSE)
  result <- vector(length=length(order_p))
  for (ind in 1:length(order_p)){
    if (order_p[ind] < alpha){
      idx <- which(new_p==order_p[ind])
      result[idx] = 1
    }
    else{
      idx <- which(new_p==order_p[ind])
      result[idx] = 0
    }
  }
  return(result)
}
