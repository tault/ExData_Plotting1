## If you haven't done so, use the commented code below to put the file in your working directory
## fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## download.file(fileURL,"./zippety.zip")
## unzip("./zippety.zip")
powert<-read.table("./household_power_consumption.txt",sep=";",nrow=2880,skip=66637)
colnames(powert)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","GlzAAAobal_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
png("./plot1.png",width=480,height=480)
hist(powert$Global_active_power,col="red",main="Frequency",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()