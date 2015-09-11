File<-"household_power_consumption.txt"
###Convert to table in R######
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
####Subset##########
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
####Put Together Date&Time######
date_time <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
####Convert to Numeric####
sub1<-as.numeric(data2$Sub_metering_1)
sub2<-as.numeric(data2$Sub_metering_2)
sub3<-as.numeric(data2$Sub_metering_3)
####Graphic########
plot(date_time, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sub2, type="l", col="red") 
lines(date_time, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) 


