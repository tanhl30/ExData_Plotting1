data <- read.table(file = "household_power_consumption.txt",header = TRUE, sep =";")
data <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

y <- as.numeric(data$Global_active_power)
x <- as.POSIXct(strptime(paste(data$Date,data$Time,sep=" "), 
                         format="%d/%m/%Y %H:%M:%S"))

png("plot2.png")

plot(x,y,type="l", ylab = "Global Active Power",xlab="")

dev.off()
