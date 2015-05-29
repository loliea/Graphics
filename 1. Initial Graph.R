#Uses the dataset anscombe in the package datasets
library(datasets)
data(anscombe)

#Plot two boxplot (one for each set of variables) of the 4 samples 
par(mfrow = c(2,1))
boxplot(anscombe$x1, anscombe$x2, anscombe$x3, anscombe$x4, names = c("x1","x2","x3","x4"))
boxplot(anscombe$y1, anscombe$y2, anscombe$y3, anscombe$x4, names = c("y1","y2","y3","y4"))

#Plot by set of xy variables
par(mfrow = c(2,2))
mapply(FUN = plot,x=anscombe[1:4],y=anscombe[5:8], xlab = names(anscombe[1:4]), ylab = names(anscombe[5:8]), main = "Variable x vs y")

#Advance graphics in R: lattice, ggplot2, ggvis
#http://varianceexplained.org/r/teach_ggplot2_to_beginners/

#function that resets the grapg display
resetDisplay <- function() {
  dev.new()
  op <- par(no.readonly = TRUE)
  dev.off()
  op
}

#pch set the symbole used