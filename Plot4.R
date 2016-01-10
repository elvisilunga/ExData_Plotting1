## Starting by creating a png object ##
png(filename = "Plot4.png", width = 480, height = 480, units = "px")
## Then comes the command for multiple plots (two plots in a row and two in column)##
par(mfrow = c(2,2))
## First plot (top left) ##
plot(hpw2$datetime,hpw2$Global_active_power, xlab="", ylab="Global Power Active (kilowatts)",type = "l")
## Second plot (top right) ##
plot(hpw2$datetime, hpw2$Volage, type="l", xlab="datetime", ylab="Voltage")
## Third plot (bottom left) ##
with(hpw2, { 
    plot(datetime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="n"))
    lines(datetime, Sub_metering_1, col = "grey")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend("topright",lty=c(1,1,1), col=c("grey","red","blue"), 
    bty = "n", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
## Fourth plot (bottom right) ##
    plot(datetime, Global_reactive_power, type="l", xlab="datetime", 
    ylab="Global_reactive_reactive_power")}
dev.off()
