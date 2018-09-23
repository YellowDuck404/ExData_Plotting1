# Download and unzip the dataset
fileNameZip <- "exdata_data_household_power_consumption.zip"
fileNameTxt <- "household_power_consumption.txt"

if (!file.exists(fileNameZip)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, fileNameZip, mode = "wb")
}
if (!file.exists(fileNameTxt)) {
  unzip(fileNameZip)
}

# Load dataset
household_power_consumption <- read.table(
  "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# limit dataset to 2 days, 1 Feb 2007 and 2 Feb 2007
household_power_consumption_Feb2007 <- subset(
  household_power_consumption, 
  household_power_consumption$Date %in% c("1/2/2007", "2/2/2007"))

# convert Date and Time to DateTime field
household_power_consumption_Feb2007$DateTime <- as.POSIXct(paste(
                                                          household_power_consumption_Feb2007$Date,
                                                          household_power_consumption_Feb2007$Time))

household_power_consumption_Feb2007$DateTime <- as.POSIXct(paste(
  household_power_consumption_Feb2007$Date,
  household_power_consumption_Feb2007$Time),
  format = "%d/%m/%Y %H:%M:%S")

# remove object
rm(household_power_consumption)

# generate and save png files
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

fplot1()
fplot2()
fplot3()
fplot4()

# remove input files from working directory
if(file.exists(fileNameZip)) {
   file.remove(fileNameZip)
}
if(file.exists(fileNameTxt)) {
  file.remove(fileNameTxt)
}
