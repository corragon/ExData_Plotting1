plot_to_png <- function(plotName) {
  validPlot <- grepl("^plot[1234]$", plotName, perl=T)
  if(!validPlot) { stop("Invalid plot name") }
  
  script <- paste(plotName, ".R", sep="")
  pngFile <- paste("figure/", plotName, ".png", sep="")
  source(script)
  
  png(pngFile)
  old.par <- par(no.readonly=T)
  par(bg=NA)
  
  get(plotName)()
  
  dev.off()
  par(old.par)
  pngFile #Return plot file generated
}