source("EDA_proj1_read_data.R")
png("figure/plot1.png", width=480, height=480)
# par(bg="grey90") # the plots in the repository from mr.peng seemed to have grey background? whatever...:)
hist(energie$Global_active_power, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     col="red")
dev.off()
