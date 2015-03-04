source("EDA_proj1_read_data.R")

png("figure/plot4.png", width=480, height=480)
par(mfrow = c(2,2))
#plot1
plot(energie$time, energie$Global_active_power, 
     type="l",
     xlab="", ylab="Global Active Power (kilowatts)")
#plot2
plot(energie$time, energie$Voltage, 
     type="l",
     xlab="datetime", ylab="Voltage")
#plot3
plot(energie$time, energie$Sub_metering_1, 
     type="l",
     xlab="", ylab="Energie sub metering")
points(energie$time, energie$Sub_metering_2, type="l", col="red")
points(energie$time, energie$Sub_metering_3, type="l", col="blue")
legend("topright", pch ="---", col = c("black","red","blue"), legend = paste("Sub_metering_", 1:3))
#plot4
plot(energie$time, energie$Global_reactive_power, 
     type="l",
     xlab="datetime", ylab="Global_reactive_power")
dev.off()