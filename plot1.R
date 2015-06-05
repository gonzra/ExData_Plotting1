source("dataLoader.R")

## Call loadData defined in dataLoader.R and Plots a histogram of Global Active Power variable
## Saves the plot in a png file

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