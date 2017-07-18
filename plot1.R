makePlot1 <- function(data) {
  hist(data$Global_active_power, 
       xlab="Global Active Power (kilowatts)",
       col="Red",
       main="Global Active Power")
}
