load_data <- function(){
  
  all_data <- read.csv("./data/household_power_consumption.txt",sep=";",colClasses="character",na.strings="?")
  
  data     <- subset(all_data, Date=="1/2/2007" | Date == "2/2/2007" )

  data$Global_active_power <- as.numeric(data$Global_active_power)
  data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
  data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
  data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
  data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
  data$Date     <- as.Date(data$Date,format="%d/%m/%Y")
  data$DateTime <- paste(data$Date, data$Time)
  data$DateTimeParsed <- strptime(data$DateTime,format = "%Y-%m-%d %H:%M:%S")
  
  data
}
