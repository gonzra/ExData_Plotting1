source("dataLoader.R")

## Call loadData defined in dataLoader.R and plots Submetering (1,2,3) vs Timestamp
## Saves the plot in a png file

createPlot3 <- function()
{
  data <- loadData()
  plot(data$Timestamp,
       data$Sub_metering_1,        
       type="l",
       xlab="",
       ylab="Energy sub metering")
  
  lines(data$Timestamp,
        data$Sub_metering_2,        
        type="l",
        col="red")
  
  lines(data$Timestamp,
        data$Sub_metering_3,        
        type="l",
        col="blue")
  
  legend("topright", 
         col=c("black","red","blue"), 
         lty=c(1, 1, 1), 
         pch = c(NA, NA, NA),
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
}


plot3 <- function()
{
  png(filename = "plot3.png", width = 480, height = 480 )
  createPlot3()
  dev.off()
  
}