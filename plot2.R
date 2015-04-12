source("./load_data.R")
data <- load_data()


png("plot2.png",width=480,height=480)
plot(data$DateTimeParsed,data$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",bg="white",col="black",type="l")
dev.off()
