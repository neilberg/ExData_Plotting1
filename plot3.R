#create data
one<-read.csv("C:/Users/st/SkyDrive/Coursera/exdata/household_power_consumption.txt", header=TRUE, sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
one1<-one[one$Date %in% c("1/2/2007","2/2/2007") ,]
one1$Time1 <- strptime(paste(one1$Date, one1$Time), "%d/%m/%Y %H:%M:%S")


#plot3
plot(one1$Time1,one1$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
        lines(one1$Time1,one1$Sub_metering_1, col = "black")
        lines(one1$Time1,one1$Sub_metering_2, col = "red")
        lines(one1$Time1,one1$Sub_metering_3, col = "blue")
        legend("topright", lty=1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


