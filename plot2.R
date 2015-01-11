###################################################
# plot2() creates the plot
# generate_png() creates the png file
# 
# The png file is saved in the /figure directory
###################################################

plot2 <- function() {
  # Script to load and prep data
  source("load_power_consumption.R")
  power <- load()  

  with(power, plot(datetime, Global_active_power, 
                   type='l', 
                   xlab="",
                   ylab="Global Active Power (kilowatts)"))
}

source("generate_png.R")
generate_png("plot2", plot2)