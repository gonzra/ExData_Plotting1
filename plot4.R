source("dataLoader.R")
source("plot2.R")
source("plot3.R")

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