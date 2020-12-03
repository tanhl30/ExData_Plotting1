data <- read.table(file = "household_power_consumption.txt",header = TRUE, sep =";")
data <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

y1 <- as.numeric(data$Sub_metering_1)
y2 <- as.numeric(data$Sub_metering_2)
y3 <- as.numeric(data$Sub_metering_3)
x <- as.POSIXct(strptime(paste(data$Date,data$Time,sep=" "), 
                         format="%d/%m/%Y %H:%M:%S"))

png("plot3.png")

plot(x,y1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(x,y2,col="red")
lines(x,y3,col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                              "Sub_metering_3"), lwd=3, bty="n",col=c("black","red","blue"))
      
dev.off()
