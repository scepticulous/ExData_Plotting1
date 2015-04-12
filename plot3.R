source("./load_data.R")
data <- load_data()


png("plot3.png",width=480,height=480)

plot(data$DateTimeParsed,data$Sub_metering_1,col="black",type="l",ylab="Energy sub metering",xlab="")
lines(data$DateTimeParsed,data$Sub_metering_2,col="red")
lines(data$DateTimeParsed,data$Sub_metering_3,col="blue")

legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=1)
dev.off()
