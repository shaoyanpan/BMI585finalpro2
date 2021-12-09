#' @title BMI585 final project: including f1
#' @description This functions accept two binary numerical arrays
#' @param pred: the prediction array
#' @param  true: the true array
#' @export
#' @return sen: f1
#' @examples
#' pred <- c(1,1,1)
#' true <- c(1,1,0)
#' f1(pred,true)

f1 <- function(pred,true){
  pred<-as.logical(pred)
  true<-as.logical(true)
  TP <- pred==true & true==1
  TN <- pred==true & true==0
  FP <- pred!=true & true==1
  FN <- pred!=true & true==0
  sen <- 2*sum(TP)/(2*sum(TP)+sum(FP)+sum(FN))
  return(sen)
}



