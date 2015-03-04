source("EDA_proj1_read_data.R")
Sys.setlocale("LC_TIME", "en_US.UTF-8") 

png("figure/plot1.png", width=480, height=480)
hist(energie$Global_active_power, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     col="red")
dev.off()