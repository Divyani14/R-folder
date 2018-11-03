getwd()
setwd('/Users/Divyani/Desktop/R/Core R Plotting Data')
read<-read.table("brain_bodyweight.txt",sep='\t',header=TRUE)
read1=read[order(read[,"Bodyweight"]),]
read1=read[,"Bodyweight"]
read1[1:3]

#Exercise 1: Customising simple plots
weight<-read.table('weight_chart.txt',sep='\t',header=TRUE)
plot(weight$Age,weight$Weight,pch=15,cex=1.5,ylim=c(2,10),xlab='Age(months)',ylab='Weight(kg)',main='growth chart of baby',lwd=2,type='b')
feature<-read.table('feature_counts.txt',sep='\t',header=TRUE)
par(mar=c(4,11,2,1))N
barplot(feature$Count,main='Number of features',xlab='Count',horiz=TRUE,las=1,names.arg = feature$Feature,col='orange')

#Exercise 2: Using colour
par(mar=c(2,2,1,1),mfrow=c(1,1))
mf<-read.table("male_female_counts.txt",sep='\t',header=TRUE)
barplot(mf$Count,names.arg = mf$Sample,col=rainbow(12))
barplot(mf$Count,names.arg = mf$Sample,col=c('red','blue'))

updown<-read.table("up_down_expression.txt",sep='\t',header=TRUE)
levels(updown$State)
pal<-colorRampPalette(c('red','grey','blue'))
plot(updown$Condition2,updown$Condition1,col=updown$State)
palette()









