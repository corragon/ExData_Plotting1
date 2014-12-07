plot4 <- function() {
  source("load_power_consumption.R")
  power <- load()
  
  old.par <- par(no.readonly=T)
  par(cex=0.5, bg=NA, mfcol=c(2,2))
  
  # Top left
  with(power, plot(datetime, Global_active_power, 
                   type='l', 
                   xlab="",
                   ylab="Global Active Power"))
  
  # Bottom left
  with(power, plot(datetime, Sub_metering_1, type="l",
                   ylab="Energy sub metering", xlab=""))
  with(power, lines(datetime, Sub_metering_2, col="Red"))
  with(power, lines(datetime, Sub_metering_3, col="Blue"))
  legend("topright", lty=1,  bty="n",
         col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # Top right
  with(power, plot(datetime, Voltage, type="l"))
  
  #Bottom right
  with(power, plot(datetime, Global_reactive_power, type="l"))
  
  par(old.par)
  
}