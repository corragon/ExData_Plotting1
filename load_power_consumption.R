load <- function () {
  library(data.table)
  power <- fread("household_power_consumption.txt", 
                 na.strings="?", 
                 skip="1/2/2007", 
                 nrows=2880, 
                 data.table=F)
  powerNames <- fread("household_power_consumption.txt", header=T, nrows=0)
  names(power) <- names(powerNames)
  names(power)[1] <- "datetime"
  power$datetime <- strptime(paste(power$datetime, power$Time), "%d/%m/%Y %H:%M:%S")
  power <- subset(power, select = -Time)
  power
}
