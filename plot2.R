source("EDA_proj1_read_data.R")
par(bg="white")
png("figure/plot2.png", width=480, height=480)
plot(energie$time, energie$Global_active_power, 
     type="l",
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()