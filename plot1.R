source("./load_data.R")
data <- load_data()


png("plot1.png",width=480,height=480)
hist(data$Global_active_power,ylab="Frequency",xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power",ylim=c(0,1200))
dev.off()
