# This script DOES NOT save to png.
# Call the plot_to_png("plot1") to generate the png

plot1 <- function() {
  # Script to load and prep data
  source("load_power_consumption.R")
  power <- load()
  
  hist(power$Global_active_power, 
       main="Global Active Power", 
       col=rgb(255, 37, 0, max=255), 
       xlab="Global Active Power (kilowatts)")
}