source("dataLoader.R")

plot1 <- function()
{
  png(filename = "plot1.png", width = 480, height = 480 )
  data <- loadData()
  hist(data$Global_active_power, 
       freq=TRUE, 
       main="Global Active Power",
       xlab="Global Active Power(kilowatts)",
       col="red")
  dev.off()
}