#' @title BMI585 final project: BOXMuller creates n samples from the Box-Muller transformation
#' @description This functions accept one numerical value
#' @param n: n samples
#' @return data.frame(x_1,x_2): x_1 and x_2 are samples from the Box-Muller transformation
#' @examples
#' BOXMuller(500)

BOXMuller <- function(n){
  x_1 <- vector(length=n)
  x_2 <- vector(length=n)
  for (i in 1:n){
    random_value <- runif(2, min = 0, max = 1)
    x_1[i] <- sqrt(-2*log(random_value[1]))*cos(2*pi*random_value[2])
    x_2[i] <- sqrt(-2*log(random_value[1]))*sin(2*pi*random_value[2])
  }
  return(data.frame(x_1,x_2))
}
