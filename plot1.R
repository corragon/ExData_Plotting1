plot1 <- function() {
  source("load_power_consumption.R")
  power <- load()
  
  hist(power$Global_active_power, 
       main="Global Active Power", 
       col=rgb(255, 37, 0, max=255), 
       xlab="Global Active Power (kilowatts)")
}