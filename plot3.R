###################################################
# plot3() creates the plot
# generate_png() creates the png file
# 
# The png file is saved in the /figure directory
###################################################

plot3 <- function() {
  # Script to load and prep data
  source("load_power_consumption.R")
  power <- load()  
    
  with(power, plot(datetime, Sub_metering_1, type="l", 
       ylab="Energy sub metering", xlab=""))
  with(power, lines(datetime, Sub_metering_2, col="Red"))
  with(power, lines(datetime, Sub_metering_3, col="Blue"))
  legend("topright", lty=1, 
         col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}

source("generate_png.R")
generate_png("plot3", plot3)