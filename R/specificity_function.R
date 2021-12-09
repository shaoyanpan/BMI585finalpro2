#' @title BMI585 final project: including specificity
#' @description This functions accept two binary numerical arrays
#' @param pred: the prediction array
#' @param  true: the true array
#' @return sen: specificity
#' @export
#' @examples
#' pred <- c(1,1,1)
#' true <- c(1,1,0)
#' specificity(pred,true)

specificity <- function(pred,true){
  pred<-as.logical(pred)
  true<-as.logical(true)
  TP <- pred==true & true==1
  TN <- pred==true & true==0
  FP <- pred!=true & true==1
  FN <- pred!=true & true==0
  sen <- sum(TN)/sum(true==0)
  return(sen)
}


