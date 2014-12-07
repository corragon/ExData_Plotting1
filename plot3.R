plot3 <- function() {
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