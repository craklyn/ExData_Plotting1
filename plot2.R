makePlot2 <- function(data) {
  plot(data$date_time, data$Global_active_power, 
       ylab="Global Active Power (kilowatts)", xlab="", type='n')
  lines(data$date_time, data$Global_active_power)
}




