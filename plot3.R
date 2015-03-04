source("EDA_proj1_read_data.R")
Sys.setlocale("LC_TIME", "en_US.UTF-8") 

png("figure/plot3.png", width=480, height=480)
plot(energie$time, energie$Sub_metering_1, 
     type="l",
     xlab="", ylab="Energy sub metering")
points(energie$time, energie$Sub_metering_2, type="l", col="red")
points(energie$time, energie$Sub_metering_3, type="l", col="blue")
legend("topright", lwd =  "2", col = c("black","red","blue"), legend = paste("Sub_metering_", 1:3))
dev.off()