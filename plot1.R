input<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE, header=TRUE)
input$Exect_Date<-strptime(paste(input$Date,input$Time), "%d/%m/%Y %H:%M:%S")
input$Date<-as.Date(input$Date,format="%d/%m/%Y")
input<-input[input$Date=="2007-02-01" | input$Date=="2007-02-02",]
input$Global_active_power<-as.numeric(input$Global_active_power)
dev.new()
hist(input$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylim=c(0,1200))
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
