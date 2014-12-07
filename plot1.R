plot1 <- function() {
  source("load_power_consumption.R")
  power <- load()
  
  hist(power$Global_active_power, main="Global Active Power", col="Red", xlab="Global Active Power (kilowatts)")
}