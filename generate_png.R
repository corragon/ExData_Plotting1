#######################################################
# The code for creating the png file was so similar
# between the different plots that it has been 
# extracted here and used for all plot functions
#
# The png files are saved in the /figure directory
#######################################################

generate_png <- function(plotName, plotFunction) {
  # Setup file name
  pngFile <- paste("figure/", plotName, ".png", sep="")
  
  png(pngFile)
  old.par <- par(no.readonly=T)
  par(bg=NA) 
  
  # Execute the given plot function
  plotFunction()
  
  dev.off()
  par(old.par)
  pngFile #Return plot file location generated
}