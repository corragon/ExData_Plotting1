###################################################
# plot1() creates the plot
# generate_png() creates the png file
# 
# The png file is saved in the /figure directory
###################################################

plot1 <- function() {
  # Script to load and prep data
  source("load_power_consumption.R")
  power <- load()
  
  hist(power$Global_active_power, 
       main="Global Active Power", 
       col=rgb(255, 37, 0, max=255), 
       xlab="Global Active Power (kilowatts)")
}

source("generate_png.R")
generate_png("plot1", plot1)