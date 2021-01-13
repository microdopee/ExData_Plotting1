setwd("~/ExData_Plotting1")
table<-read.table("EDA_Week1.txt",sep=";",header=TRUE, dec=".", stringsAsFactors = FALSE)#Edited dataset text file with 1/2/2007-2/2/2007 data
time_hms<-strptime(paste(table$Date, table$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
#1
globalActivePower <- as.numeric(table$Global_active_power)
plot(time_hms, globalActivePower, type="l", xlab="", ylab="Global Active Power")
#2
Voltage<-as.numeric(table$Voltage)
plot(time_hms,Voltage,type="l",xlab="datetime",ylab="Voltage")
#3
sm1<-as.numeric(table$Sub_metering_1)
sm2<-as.numeric(table$Sub_metering_2)
sm3<-as.numeric(table$Sub_metering_3)
plot(time_hms, sm1, type="l",col="black",ylab="Energy Sub metering",xlab="")
lines(time_hms, sm2, type="l",col="red")
lines(time_hms, sm3, type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lty=1, bty="n",cex=0.8)

#4
ReactivePower<-as.numeric(table$Global_reactive_power)
plot(time_hms, ReactivePower, type="l",xlab="datetime",ylab ="Global_reactive_power")
dev.off()

