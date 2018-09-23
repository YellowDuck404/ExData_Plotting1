## plot3 - plot - Energy sub metering in function of time

fplot3 <- function() {

  # define graphic device
  png(file = "plot3.png", bg = "transparent")
  
  # generate plot3
  with(household_power_consumption_Feb2007, 
       plot(Sub_metering_1 ~ DateTime, 
        type = "n", 
        xlab = "1 Feb 2007 - 2 Feb 2007",
        ylab = "Energy Sub Metering"))
  
  with(household_power_consumption_Feb2007, lines(Sub_metering_1 ~ DateTime, col = "black", type = "l"))
  with(household_power_consumption_Feb2007, lines(Sub_metering_2 ~ DateTime, col = "red", type = "l"))
  with(household_power_consumption_Feb2007, lines(Sub_metering_3 ~ DateTime, col = "blue", type = "l"))
  
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # close graphic device
  dev.off()
}