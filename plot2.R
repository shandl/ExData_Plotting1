source("EDA_proj1_read_data.R")
Sys.setlocale("LC_TIME", "en_US.UTF-8") 

png("figure/plot2.png", width=480, height=480)
plot(energie$time, energie$Global_active_power, 
     type="l",
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()