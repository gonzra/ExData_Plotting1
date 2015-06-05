library(data.table)
library(lubridate)

## This function is very specific for the Coursera's course project 1.
## It loads a subset of lines of the specified input file. 
## This si not a general purpose function to load input files, I just did not feel like repeating 
## this code in every R script for this project

loadData <- function()
{
  filename <- ".\\household_power_consumption.txt"
  startLine <- 66637
  rowcount <- 69517 - startLine
  data <- fread(filename, data.table=FALSE, header=TRUE, sep=";",skip=(startLine-1), nrows=rowcount,stringsAsFactors=FALSE, na.strings(c("?")))
  colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  data["Timestamp"] <-  with(data, dmy_hms(paste(Date, Time)))
  return(data)
}
