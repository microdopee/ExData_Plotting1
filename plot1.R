library(dplyr)
library(lubridate)
setwd("~/ExData_Plotting1")
table<-read.table("EDA_Week1.txt",sep=";",header=TRUE)#Edited dataset text file with 1/2/2007-2/2/2007 data
table<-tibble::as_tibble(table)
table$Date<-dmy(table$Date)
png("plot1.png", width = 480,height=480)
plot1<-hist(table$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power")

dev.off()
