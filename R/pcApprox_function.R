#' @title BMI585 final project: pcApprox function dowmscale the data's dimensionlity
#' @description This functions accept a numberical dataframe
#' @param t: a numerical dataframe for dimensionality reduction
#' @return the_result[,1:npc]: a dataframe which is the PCA conversion of the input x with npc dimensions
#' @export
#' @import stats
#' @examples
#' data(iris)
#' t<- iris[1:100,1:4]
#' pred <- pcApprox(t,2)


pcApprox <- function(t,npc){
  res.pca<-prcomp(t,scale = TRUE,center=TRUE)
  the_result <- res.pca$x * res.pca$scale+res.pca$center
  colname <-replicate(npc,'pca')
  for (ind in 1:ncol(t)){
    colname[ind] <- paste(c("pca",ind), collapse = "")
  }
  colnames(the_result) <- colname
  return(the_result[,1:npc])
}
