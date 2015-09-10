dataFile<-"household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
data2$Global_active_power<-as.numeric(data2$Global_active_power)
hist(data2$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

