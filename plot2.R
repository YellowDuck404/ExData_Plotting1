## plot2 - plot - Global Active Power usage in function of time

fplot2 <- function() {
  
  # define graphic device
  png(file = "plot2.png", bg = "transparent")
  
  # generate plot2
  plot(
    Global_active_power ~ DateTime, household_power_consumption_Feb2007,
    xlab = "1 Feb 2007 - 2 Feb 2007",
    ylab = "Global Active Power (kilowatts)",
    type = "l"
  )
  
  # close graphic device
  dev.off()
}