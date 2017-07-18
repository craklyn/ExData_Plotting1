makePlot3 <- function(data) {
  plot(data$date_time, data$Sub_metering_1,
       ylab="Energy sub metering", xlab="", type='n')
  lines(data$date_time, data$Sub_metering_1, col="black")
  lines(data$date_time, data$Sub_metering_2, col="red")
  lines(data$date_time, data$Sub_metering_3, col="blue")
  legend("topright", 
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
         col=c("black","red","blue"), lty=c(1,1,1))
}




