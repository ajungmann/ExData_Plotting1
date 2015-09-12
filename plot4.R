File<-"household_power_consumption.txt"
###Convert to table in R######
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
####Subset##########
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
####Put Together Date&Time######
date_time <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
####Convert to Numeric####
global_Active_Power <- as.numeric(data2$Global_active_power)
global_Reactive_Power <- as.numeric(data2$Global_reactive_power)
voltage<-as.numeric(data2$Voltage)
sub1<-as.numeric(data2$Sub_metering_1)
sub2<-as.numeric(data2$Sub_metering_2)
sub3<-as.numeric(data2$Sub_metering_3)
####Double Graphic#######

par(mfrow = c(2, 2))
plot(date_time, global_Active_Power, type="l", xlab="", ylab="Global Active Power", cex=0.2) 
plot(date_time, voltage, type="l", xlab="datetime", ylab="Voltage") 
plot(date_time, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sub2, type="l", col="red") 
lines(date_time, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"),cex=0.32,pt.cex=1,bty="n")
plot(date_time, global_Reactive_Power, type="l", xlab="datetime", ylab="Global_reactive_power")



