source('plot3.R')

makePlot4 <- function(data) {
  par(mfrow = c(2, 2))  # 3 rows and 2 columns
  
  plot(data$date_time, data$Global_active_power,
       ylab="Global Active Power", xlab="", type="n")
  lines(data$date_time, data$Global_active_power)
  
  plot(data$date_time, data$Voltage,
       xlab="datetime", ylab="Voltage", type="n")
  lines(data$date_time, data$Voltage)
  
  makePlot3(data)
  
  plot(data$date_time, data$Global_reactive_power,
       xlab="datetime", ylab="Global_reactive_power", type="n")
  lines(data$date_time, data$Global_reactive_power)
}
