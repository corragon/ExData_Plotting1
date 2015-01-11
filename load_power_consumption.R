load <- function () {
  # Used perl script to determine nrows needed to read
  # perl -lne '/^[12]\/2\/2007/ && $t++; END { print $t || 0}' household_power_consumption.txt

  library(data.table)
  power <- fread("household_power_consumption.txt", 
                 na.strings="?", 
                 skip="1/2/2007", 
                 nrows=2880, 
                 data.table=F)
  # Using skip with fread() means you lose the headers.
  # Get and set header names now
  names(power) <- names(fread("household_power_consumption.txt", header=T, nrows=0))

  # Combine and cast original Date and Time fields into one datetime column
  power$datetime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
  power <- subset(power, select = -c(Date,Time))
  power
}
