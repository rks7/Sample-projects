
# Reading the data file from the existing directory

canopycover=read.csv(file = "cc_aquacrop_results.csv",header = TRUE) # Header = True meaning that first row in the csv file is header information.

# Reading few observations
head (canopycover)

#reading treatments in the data
canopycover$Trt

#creating data frames for individual years
cc2009=canopycover[(canopycover$Year=="2009"),]
cc2009
cc2010=canopycover[(canopycover$Year=="2010"),]
cc2010

## PLotting/visualizing canopy cover for individual years and treatments

# Plotting 2009 year 
layout(matrix(1:5, ncol = 1), widths = 1,respect = FALSE)
par(mar=c(0,7,0,2), mgp=c(5.0,1,0))
plot(Sim~ DAP,data=cc2009,font.lab=1,type="o",xaxt='n',ylab = "",xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="0",cex.axis=1.2,cex=0, lwd=3, col="red")
points(Obs~ DAP,data=cc2009,font=2,subset=Trt=="0",cex=1.5, pch=19, col="black")
legend(100,55,legend= c("Simulated","Observed"),col=c("red","black"),lwd=c(3,NA),bty="n",pch=c(NA,19),cex=1.2)
text(10,80,"Rainfed", pch=17, cex=1.5)
     
#par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
#plot(Sim~ DAP,data=cc2009,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="50",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
#points(Obs~ DAP,data=cc2009,font=2,subset=Trt=="50",cex=1.5, pch=19, col="black")
#text(10,80,"50%", pch=17, cex=1.8)

par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
plot(Sim~ DAP,data=cc2009,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="60",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
points(Obs~ DAP,data=cc2009,font=2,subset=Trt=="60",cex=1.5, pch=19, col="black")
text(10,80,"60%", pch=17, cex=1.8)

#par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
#plot(Sim~ DAP,data=cc2009,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="75",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
#points(Obs~ DAP,data=cc2009,font=2,subset=Trt=="75",cex=1.5, pch=19, col="black")
#text(10,80,"75%", pch=17, cex=1.8)

par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
plot(Sim~ DAP,data=cc2009,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="100",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
points(Obs~ DAP,data=cc2009,font=2,subset=Trt=="100",cex=1.5, pch=19, col="black")
axis (1,font=2,at=c(0,20,40,60,80,100,120,140,155),cex.axis=1.8,labels=c(0,20,40,60,80,100,120,140,155))
text(10,80,"100%", pch=17, cex=1.8)


##### Year = 2010 #####

layout(matrix(1:5, ncol = 1), widths = 1,respect = FALSE)
par(mar=c(0,7,0,2), mgp=c(5.0,1,0))
plot(Sim~ DAP,data=cc2010,type="o",font.lab=1,xaxt='n',ylab = "",xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="0",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
points(Obs~ DAP,data=cc2010,font=2,subset=Trt=="0",cex=1.5, pch=19, col="black")
legend(100,55,legend= c("Simulated","Observed"),col=c("red","black"),lwd=c(3,NA),bty="n",pch=c(NA,19),cex=1.2)
text(10,80,"Rainfed", pch=17, cex=1.5)

#par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
#plot(Sim~ DAP,data=cc2010,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="50",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
#points(Obs~ DAP,data=cc2010,font=2,subset=Trt=="50",cex=1.5, pch=19, col="black")
#text(10,80,"50%", pch=17, cex=1.8)

par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
plot(Sim~ DAP,data=cc2010,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="60",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
points(Obs~ DAP,data=cc2010,font=2,subset=Trt=="60",cex=1.5, pch=19, col="black")
text(10,80,"60%", pch=17, cex=1.8)

#par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
#plot(Sim~ DAP,data=cc2010,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="75",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
#points(Obs~ DAP,data=cc2010,font=2,subset=Trt=="75",cex=1.5, pch=19, col="black")
#text(10,80,"75%", pch=17, cex=1.8)

par(mar=c(0,7,0,2), mgp=c(3.0,1,0))
plot(Sim~ DAP,data=cc2010,type="o",ylab = "",xaxt='n',xlab = "Days after planting (DAP)",cex.sub=1.2,font=2,xlim=c(0,150),ylim=c(0,105),subset=Trt=="100",cex.lab=1.2,cex.axis=1.2,cex=0, lwd=3,pch=1, col="red")
points(Obs~ DAP,data=cc2010,font=2,subset=Trt=="100",cex=1.5, pch=19, col="black")
axis (1,font=2,at=c(0,20,40,60,80,100,120,140,155),cex.axis=1.8,labels=c(0,20,40,60,80,100,120,140,155))
text(10,80,"100%", pch=17, cex=1.8)


