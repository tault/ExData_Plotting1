## If you haven't done so, use the commented code below to put the file in your working directory
## fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## download.file(fileURL,"./zippety.zip")
## unzip("./zippety.zip")
powert<-read.table("./household_power_consumption.txt",sep=";",nrow=2880,skip=66637)
colnames(powert)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","GlzAAAobal_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
powert$datetime<-as.POSIXct(paste(powert$Date, powert$Time), format="%d/%m/%Y %H:%M:%S")
png("./plot3.png",width=480,height=480)
with(powert,plot(datetime,Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering"))
with(powert,points(datetime,Sub_metering_2,type="l",col="red"))
with(powert,points(datetime,Sub_metering_3,type="l",col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()