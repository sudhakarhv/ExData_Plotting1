library(data.table)
hhpc <- fread('household_power_consumption.txt', header=T,sep=';', na.strings = '?')
hhpc2 <- hhpc[,dateClass:=as.Date(Date,format='%d/%m/%Y')]
plot1 <- hhpc2[dateClass >= as.Date('2007-02-01') & dateClass <= as.Date('2007-02-02')]
plot1a <- plot1[,Global_active_power]
hist(plot1a, freq=200,xlab = 'Global Active Power(kilowatts)',col="RED", main='Global Active Power')