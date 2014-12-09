#######################################################
# The instructions didn't explicitly state that the png
# generating code must be in each plot1-4 function, so
# I decided to see if I could extract the code here.

# To make the png for plot1, call:
# plot_to_png("plot1")
#######################################################
plot_to_png <- function(plotName) {
  # Validate user input
  validPlot <- grepl("^plot[1234]$", plotName, perl=T)
  if(!validPlot) { stop("Invalid plot name") }
  
  # Setup file names and source the plot script
  script <- paste(plotName, ".R", sep="")
  pngFile <- paste("figure/", plotName, ".png", sep="")
  source(script)
  
  png(pngFile)
  old.par <- par(no.readonly=T)
  par(bg=NA) 
  
  # Finds the plot function and executes it
  get(plotName)()
  
  dev.off()
  par(old.par)
  pngFile #Return plot file location generated
}