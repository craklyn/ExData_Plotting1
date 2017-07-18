setwd("c:\\users\\dblackburn\\ExData_Plotting1")

download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', dest='householdPowerConsumption.zip')
unzip('householdPowerConsumption.zip')

data_all <- read.csv('household_power_consumption.txt', stringsAsFactors=FALSE, sep=";")
data_all$date_time <- strptime(paste(data_all$Date, data_all$Time), "%d/%m/%Y %H:%M:%OS")

projData <- data_all[data_all$Date == '1/2/2007' | 
                     data_all$Date == '2/2/2007',]

projData$Global_active_power <- as.numeric(projData$Global_active_power)

source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

png('plot1.png')
makePlot1(projData)
dev.off()

png('plot2.png')
makePlot2(projData)
dev.off()

png('plot3.png')
makePlot3(projData)
dev.off()

png('plot4.png')
makePlot4(projData)
dev.off()








