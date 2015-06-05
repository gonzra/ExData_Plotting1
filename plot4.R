source("dataLoader.R")
source("plot2.R")
source("plot3.R")

## Call loadData defined in dataLoader.R to load the data for the plots
## Create Voltage vs Timestamp and Global_reactive_power vs Timestamp plots 
## Calls the functions createPlot2() and createPlot3() (defined in plot2.R and plot3.R)
## to generate the Global Active Power vs Timestamp and Submetering (1,2,3) vs Timestamp plots
## The four plots will be displayed in the same graphing device
## Saves the plot in a png file

plot4 <- function()
{
  png(filename = "plot4.png", width = 480, height = 480 )
  par(mfrow=c(2,2))
  data <- loadData()
  
  createPlot2()
  plot(data$Timestamp,
       data$Voltage,        
       type="l",
       xlab="datetime",
       ylab="Voltage")
  
  createPlot3()
  plot(data$Timestamp,
       data$Global_reactive_power,        
       type="l",
       xlab="datetime",
       ylab="Global_reactive_power")
  dev.off()
}