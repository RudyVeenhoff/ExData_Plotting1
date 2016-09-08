RawData <- read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";")
Feb12Data<-subset(RawData, {(RawData$Date == "2/2/2007")|(RawData$Date == "1/2/2007")})
DateTime<-paste(Feb12Data$Date, Feb12Data$Time)
Date_Time<- strptime(DateTime, format="%e/%m/%Y %H:%M:%S")
DateTimeDF <- cbind(Date_Time, Feb12Data)

par(mfcol=c(1,1))
png(file="plot2.png")
plot(DateTimeDF$Global_active_power ~ DateTimeDF$Date_Time, type="l", 
     xlab="", ylab = "Global Active Power")
dev.off()