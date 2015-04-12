#create data
one<-read.csv("C:/Users/st/SkyDrive/Coursera/exdata/household_power_consumption.txt", header=TRUE, sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
one1<-one[one$Date %in% c("1/2/2007","2/2/2007") ,]
one1$Time1 <- strptime(paste(one1$Date, one1$Time), "%d/%m/%Y %H:%M:%S")

#plot1
hist(one1$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", ylab="Frequency",main="Global Active Power")


