data <- read.table(file = "household_power_consumption.txt",header = TRUE, sep =";")
data <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

data$Global_active_power <- as.numeric(data$Global_active_power) 

png("plot1.png")

hist(data$Global_active_power,xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency",main = "Global Active Power",col = "red")

dev.off()