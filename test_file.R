#' This is the test file for BMI585 final package testing
#'
#' Install the package from the github
library(devtools)
install_github("shaoyanpan/BMI585finalpro2",dependencies='Imports',force=TRUE)
library(BMI585finalpro)



#' The first part testing for the new functions
x <- matrix(1:10, ncol = 2)
scale_ob <- scale(x)
Unscale(scale_ob)

data(iris)
t<- iris[1:100,1:4]
npc <-3
pred <- pcApprox(t,npc)

data(iris)
t<- iris[1:100,1:4]
theplot<-pcLollipop(t)
theplot


#' The second part testing for the meansurement functions
pred <- c(1,1,1)
true <- c(1,1,0)
sensitivity(pred,true)

pred <- c(1,1,1)
true <- c(1,1,0)
specificity(pred,true)

pred <- c(1,1,1)
true <- c(1,1,0)
accuracy(pred,true)

pred <- c(1,1,1)
true <- c(1,1,0)
ppv(pred,true)

pred <- c(1,1,1)
true <- c(1,1,0)
f1(pred,true)


#' The third part testing for the homework functions
BOXMuller(500)

df <- c(1,1,1)
t <- 0.5
two_sided_t(t,df)

z <- 0.5
two_sided_z(z)

t <- c(1,1,1)
g <- c(0,0,0)
EffectSize(t,g)

t <- c(1,1,1)
g <- c(0,1,0)
welchT(t,g)

effect_size <- 1
min_sample_size(effect_size)

tib <- data.frame(Male = c(71,3,201),Female = c(64,8,89))
chiSquareCounts(tib)

d <- 1
n1 <- 20
n2 <- 20
postHocPower(d,n1,n2)

p<- c(0.0025, 0.0050, 0.0075, 0.0100, 0.0125, 0.0150, 0.0175, 0.0200, 0.0225, 0.0250)
alpha <- 0.05
bhAdjust(p,alpha)

p<- c(0.0025, 0.0050, 0.0075, 0.0100, 0.0125, 0.0150, 0.0175, 0.0200, 0.0225, 0.0250)
alpha <- 0.05
fdrAdjust(p,alpha)

y <- c(1,1,1)
y_d <- c(1,1,0.5)
R2(y,y_d)

y <- c(1,1,1)
y_d <- c(1,1,0.5)
n<-3
adjusted_R2(y,y_d,n)


