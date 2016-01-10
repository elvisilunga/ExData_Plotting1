## Reading in the data ##
hpw <- read.table("household_power_consumption.txt", header=TRUE, sep=";",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Volage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),na.strings="NA",colClasses="character")
## Subsetting the relevant data (01-20-2007 to 02-02-2007) ##
hpw2 <- hpw[66637:69516,]

## creating a png file = Plot 3 ##
png(filename = "Plot3.png", width = 480, height = 480, units = "px")

with(hpw2, { 
    plot(datetime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="n"))
    lines(datetime, Sub_metering_1, col = "grey")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend("topright",lty=c(1,1,1), col=c("grey","red","blue"), 
    bty = "n", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
