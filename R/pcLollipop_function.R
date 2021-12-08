#' @title BMI585 final project: pcLollipop function show a plot of PCA components with their importance
#' @description This functions accept a numberical dataframe
#' @param t: a numerical dataframe for PCA analysis
#' @return theplot: The plot is directly shown up
#' @import ggplot2
#' @examples
#' data(iris)
#' t<- iris[1:100,1:4]
#' theplot<-pcLollipop(t)
#' theplot


pcLollipop <- function(t){
  res.pca<-prcomp(t,scale = TRUE,center=TRUE)
  colname <-replicate(ncol(t),'pca')
  for (ind in 1:ncol(t)){
    colname[ind] <- paste(c("pca",ind), collapse = "")
  }
  data <- data.frame(x=colname, standev=res.pca$sdev)
  theplot<-ggplot(data, aes(x=x, y=standev)) +
    geom_point() +
    geom_segment( aes(x=x, xend=x, y=0, yend=standev))
  return(theplot)
}
