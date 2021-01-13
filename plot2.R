setwd("~/ExData_Plotting1")
table<-read.table("EDA_Week1.txt",sep=";",header=TRUE, dec=".", stringsAsFactors = FALSE)#Edited dataset text file with 1/2/2007-2/2/2007 data
time_hms<-strptime(paste(table$Date, table$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(table$Global_active_power)
png("plot2.png", width=480, height=480)
plot(time_hms, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
