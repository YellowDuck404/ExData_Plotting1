## plot1 - histogram - representing Global Active Power distribution

fplot1 <- function() {
  
  # define graphic device
  png(file = "plot1.png", bg = "transparent")
  
  # generate plot1
  hist(household_power_consumption_Feb2007$Global_active_power, 
       main = "Global Active Power",
       col = "red",
       xlab = "Global Active Power (kilowatts)",
       ylab = "Frequency",
       ylim = c(0, 1200)
       )
  
  # close graphic device
  dev.off()
}