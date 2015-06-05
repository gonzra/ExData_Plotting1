source("dataLoader.R")

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