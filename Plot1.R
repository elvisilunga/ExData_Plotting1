## Reading in the data ##
hpw <- read.table("household_power_consumption.txt", header=TRUE, sep=";",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Volage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),na.strings="NA",colClasses="character")
## Subsetting the relevant data (01/02/2007 - 02/02/2007) ##
hpw2 <- hpw[66637:69516,]
## Creating a png file ##
png(filename = "Plot1.png", width = 480, height = 480, units = "px")
hist(hpw2$Global_active_power, main="Global Active Power", xlab="Global Active Power (Kilowatts)", ylab="Frequency",col="red")
dev.off()
