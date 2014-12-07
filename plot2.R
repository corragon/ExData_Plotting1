plot2 <- function() {
  source("load_power_consumption.R")
  power <- load()  

  with(power, plot(datetime, Global_active_power, 
                   type='l', 
                   xlab="",
                   ylab="Global Active Power (kilowatts)"))
}