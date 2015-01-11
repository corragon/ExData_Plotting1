###################################################
# plot4() creates the plot
# generate_png() creates the png file
# 
# The png file is saved in the /figure directory
###################################################

plot4 <- function() {
  # Script to load and prep data
  source("load_power_consumption.R")
  power <- load()

  old.par <- par(no.readonly=T)
  par(cex=0.5, bg=NA, mfcol=c(2,2))
  
  # Top left plot
  with(power, plot(datetime, Global_active_power, 
                   type='l', 
                   xlab="",
                   ylab="Global Active Power"))
  
  # Bottom left plot
  with(power, plot(datetime, Sub_metering_1, type="l",
                   ylab="Energy sub metering", xlab=""))
  with(power, lines(datetime, Sub_metering_2, col="Red"))
  with(power, lines(datetime, Sub_metering_3, col="Blue"))
  legend("topright", lty=1,  bty="n",
         col=c("black", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # Top right plot
  with(power, plot(datetime, Voltage, type="l"))
  
  #Bottom right plot
  with(power, plot(datetime, Global_reactive_power, type="l"))
  
  par(old.par)
  
}

source("generate_png.R")
generate_png("plot4", plot4)