source("dataLoader.R")

## Call loadData defined in dataLoader.R and plots Global Active Power vs Timestamp
## Saves the plot in a png file

createPlot2 <- function()
{
  data <- loadData()
  plot(data$Timestamp,
       data$Global_active_power,        
       type="l",
       xlab="",
       ylab="Global Active Power(kilowatts)")
}

plot2 <- function()
{
  png(filename = "plot2.png", width = 480, height = 480 )
  createPlot2()
  dev.off()
}