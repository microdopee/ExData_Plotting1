setwd("~/ExData_Plotting1")
table<-read.table("EDA_Week1.txt",sep=";",header=TRUE, dec=".", stringsAsFactors = FALSE)#Edited dataset text file with 1/2/2007-2/2/2007 data
time<-strptime(paste(table$Date,table$Time,sep=" "), format = "%d/%m/%Y %H:%M:%S")
sm1<-as.numeric(table$Sub_metering_1)
sm2<-as.numeric(table$Sub_metering_2)
sm3<-as.numeric(table$Sub_metering_3)
png("plot3.png", width = 480,height=480)
plot(time, sm1, type="l",col="black",ylab="Energy Submetering")
lines(time, sm2, type="l",col="red")
lines(time, sm3, type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()
