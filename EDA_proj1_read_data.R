## read data
timeformat <- "%d/%m/%Y %H:%M:%S"
skip <- as.numeric(abs(difftime(as.POSIXct("16/12/2006 17:24:00", format=timeformat), as.POSIXct("2007-02-01"), units="mins")))
nrow <- as.numeric(abs(difftime(as.POSIXct("2007-02-03"), as.POSIXct("2007-02-01"), units="mins")))
tmp <- read.csv("data/household_power_consumption.txt", sep=";", na.strings= "?", nrow=1, header=T)
energie <- read.csv("data/household_power_consumption.txt", sep=";", na.strings= "?", skip=skip, nrow=nrow, col.names=names(tmp))
energie$time <- as.POSIXct(paste(energie$Date, energie$Time), format=timeformat)

rm(tmp, nrow, skip)

