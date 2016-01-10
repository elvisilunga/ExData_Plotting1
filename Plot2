## Reading in the data ##
hpw <- read.table("household_power_consumption.txt", header=TRUE, sep=";",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Volage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),na.strings="NA",colClasses="character")
## Subsetting the relevant data (01/02/2007 - 02/02/2007) ##
hpw2 <- hpw[66637:69516,]
## Converting to date format ##
hpw2$datetime <-as.POSIXct(paste(hpw2$Date,hpw2$Time),format="%d/%m/%Y% H:%M:%S")
## Converting to date-time format ##
hpw2$datetime <- strptime(hpw2$datetime, "%d/%m/%Y %H:%M:%S")
## Creating a png file ##
png(filename = "Plot2.png", width = 480, height = 480, units = "px")
plot(hpw2$datetime,hpw2$Global_active_power, xlab="", ylab="Global Power Active (kilowatts)",type = "l")
dev.off()
