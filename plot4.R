source("./load_data.R")
data <- load_data()


png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(data$DateTimeParsed,data$Global_active_power,xlab="",ylab="Global Active Power", type="l")
plot(data$DateTimeParsed,data$Voltage,xlab="datetime",ylab="Voltage", type="l")


plot(data$DateTimeParsed,data$Sub_metering_1,col="black",type="l",ylab="Energy sub metering",xlab="")
lines(data$DateTimeParsed,data$Sub_metering_2,col="red")
lines(data$DateTimeParsed,data$Sub_metering_3,col="blue")
legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty="n",lty=1)


plot(data$DateTimeParsed,data$Global_reactive_power,xlab="datetime",ylab="Global_rective_power", type="l")


dev.off()
