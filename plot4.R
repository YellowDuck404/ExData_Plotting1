## plot4 - plot - in function of time

fplot4 <- function() {
  
  # define graphic device
  png(file = "plot4.png", bg = "transparent")
  
  # generate plot3
  par(mfrow = c(2,2))
  
  # sub-plot1: Global Active Power in funciton of time
  with(household_power_consumption_Feb2007, 
       plot(
         Global_active_power ~ DateTime, household_power_consumption_Feb2007,
         xlab = "1 Feb 2007 - 2 Feb 2007",
         ylab = "Global Active Power",
         type = "l"
       ))
  
  # sub-plot2: Voltage in function of time
  with(household_power_consumption_Feb2007, 
       plot(
         Voltage ~ DateTime, household_power_consumption_Feb2007,
         xlab = "1 Feb 2007 - 2 Feb 2007",
         ylab = "Voltage",
         type = "l"
       ))
  
  # sub-plot3: Energy Sub Metering in function of time
  with(household_power_consumption_Feb2007, 
       plot(Sub_metering_1 ~ DateTime, 
            type = "n", 
            xlab = "1 Feb 2007 - 2 Feb 2007",
            ylab = "Energy Sub Metering"))
  
  with(household_power_consumption_Feb2007, lines(Sub_metering_1 ~ DateTime, col = "black", type = "l"))
  with(household_power_consumption_Feb2007, lines(Sub_metering_2 ~ DateTime, col = "red", type = "l"))
  with(household_power_consumption_Feb2007, lines(Sub_metering_3 ~ DateTime, col = "blue", type = "l"))
  
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.col = "transparent")
  
  # sub-plot4: Global Reactive Power in fuction of time
  with(household_power_consumption_Feb2007, 
       plot(
         Global_reactive_power ~ DateTime, household_power_consumption_Feb2007,
         xlab = "1 Feb 2007 - 2 Feb 2007",
         ylab = "Global Reactive Power",
         type = "l"
       ))
  
  # close graphic device
  dev.off()
}
fplot4()