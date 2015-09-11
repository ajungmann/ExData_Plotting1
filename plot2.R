dataFile<-"household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
date_time <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
global_Active_Power <- as.numeric(data2$Global_active_power)
plot(date_time, global_Active_Power, type="l", xlab="", ylab="Global Active Power (kilowatts)")Enter file contents here
