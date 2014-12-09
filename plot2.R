###################################################
# This script DOES NOT save to png.
# Call the plot_to_png("plot2") to generate the png
#
# Please see plot_to_png.R for more comments
###################################################
plot2 <- function() {
  # Script to load and prep data
  source("load_power_consumption.R")
  power <- load()  

  with(power, plot(datetime, Global_active_power, 
                   type='l', 
                   xlab="",
                   ylab="Global Active Power (kilowatts)"))
}