#create data
one<-read.csv("C:/Users/st/SkyDrive/Coursera/exdata/household_power_consumption.txt", header=TRUE, sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
one1<-one[one$Date %in% c("1/2/2007","2/2/2007") ,]
one1$Time1 <- strptime(paste(one1$Date, one1$Time), "%d/%m/%Y %H:%M:%S")


#plot4
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0)) #starts L-to-R
        plot(one1$Time1,one1$Global_active_power,type="n",ylab="Global_active_power",xlab="")
                lines(one1$Time1,one1$Global_active_power, col = "black")
        plot(one1$Time1,one1$Voltage,type="n",ylab="Voltage",xlab="datetime")
                lines(one1$Time1,one1$Voltage, col = "black")
        plot(one1$Time1,one1$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
                lines(one1$Time1,one1$Sub_metering_1, col = "black")
                lines(one1$Time1,one1$Sub_metering_2, col = "red")
                lines(one1$Time1,one1$Sub_metering_3, col = "blue")
                legend("topright", lty=1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
        plot(one1$Time1,one1$Global_reactive_power,type="n",ylab="Global_reactive_power",xlab="datetime")
                lines(one1$Time1,one1$Global_reactive_power, col = "black")