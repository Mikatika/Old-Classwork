setwd("~/Bio1B/")

##Load required packages
install.packages("stats")
library("stats")

colSd <- function (x, na.rm=FALSE) apply(X=x, MARGIN=2, FUN=sd, na.rm=na.rm)

FieldData<-read.csv("Data Sheet.csv");

NYBodyLen<-c(FieldData$Body.Length[FieldData$Location=="North"&FieldData$Age=="Y"])
NYBodyWid<-c(FieldData$Body.Width[FieldData$Location=="North"&FieldData$Age=="Y"])
NYUpFem<-c(FieldData$Upper.Femur[FieldData$Location=="North"&FieldData$Age=="Y"])
NYMidFem<-c(FieldData$Middle.Femur[FieldData$Location=="North"&FieldData$Age=="Y"])
NYHindFem<-c(FieldData$Hind.Femur[FieldData$Location=="North"&FieldData$Age=="Y"])
NYWeight<-c(FieldData$Weight[FieldData$Location=="North"&FieldData$Age=="Y"])
NY = data.frame(NYBodyLen,NYBodyWid,NYUpFem,NYMidFem,NYHindFem,NYWeight)

NABodyLen<-c(FieldData$Body.Length[FieldData$Location=="North"&FieldData$Age=="A"])
NABodyWid<-c(FieldData$Body.Width[FieldData$Location=="North"&FieldData$Age=="A"])
NAUpFem<-c(FieldData$Upper.Femur[FieldData$Location=="North"&FieldData$Age=="A"])
NAMidFem<-c(FieldData$Middle.Femur[FieldData$Location=="North"&FieldData$Age=="A"])
NAHindFem<-c(FieldData$Hind.Femur[FieldData$Location=="North"&FieldData$Age=="A"])
NAWeight<-c(FieldData$Weight[FieldData$Location=="North"&FieldData$Age=="A"])
NoA = data.frame(NABodyLen,NABodyWid,NAUpFem,NAMidFem,NAHindFem,NAWeight)

NBodyLen<-c(NYBodyLen,NABodyLen)
NBodyWid<-c(NYBodyWid,NABodyWid)
NUFem<-c(NYUpFem,NAUpFem)
NMFem<-c(NYMidFem,NAMidFem)
NHFem<-c(NYHindFem,NAHindFem)
NWeight<-c(NYWeight,NAWeight)
NAll = data.frame(NBodyLen,NBodyWid,NUFem,NMFem,NHFem,NWeight)

MYBodyLen<-c(FieldData$Body.Length[FieldData$Location=="Main"&FieldData$Age=="Y"])
MYBodyWid<-c(FieldData$Body.Width[FieldData$Location=="Main"&FieldData$Age=="Y"])
MYUpFem<-c(FieldData$Upper.Femur[FieldData$Location=="Main"&FieldData$Age=="Y"])
MYMidFem<-c(FieldData$Middle.Femur[FieldData$Location=="Main"&FieldData$Age=="Y"])
MYHindFem<-c(FieldData$Hind.Femur[FieldData$Location=="Main"&FieldData$Age=="Y"])
MYWeight<-c(FieldData$Weight[FieldData$Location=="Main"&FieldData$Age=="Y"])
MY = data.frame(MYBodyLen,MYBodyWid,MYUpFem,MYMidFem,MYHindFem,MYWeight)

MABodyLen<-c(FieldData$Body.Length[FieldData$Location=="Main"&FieldData$Age=="A"])
MABodyWid<-c(FieldData$Body.Width[FieldData$Location=="Main"&FieldData$Age=="A"])
MAUpFem<-c(FieldData$Upper.Femur[FieldData$Location=="Main"&FieldData$Age=="A"])
MAMidFem<-c(FieldData$Middle.Femur[FieldData$Location=="Main"&FieldData$Age=="A"])
MAHindFem<-c(FieldData$Hind.Femur[FieldData$Location=="Main"&FieldData$Age=="A"])
MAWeight<-c(FieldData$Weight[FieldData$Location=="Main"&FieldData$Age=="A"])
MA = data.frame(MABodyLen,MABodyWid,MAUpFem,MAMidFem,MAHindFem,MAWeight)

MBodyLen<-c(MYBodyLen,MABodyLen)
MBodyWid<-c(MYBodyWid,MABodyWid)
MUFem<-c(MYUpFem,MAUpFem)
MMFem<-c(MYMidFem,MAMidFem)
MHFem<-c(MYHindFem,MAHindFem)
MWeight<-c(MYWeight,MAWeight)
MAll = data.frame(MBodyLen,MBodyWid,MUFem,MMFem,MHFem,MWeight)

SYBodyLen<-c(FieldData$Body.Length[FieldData$Location=="South"&FieldData$Age=="Y"])
SYBodyWid<-c(FieldData$Body.Width[FieldData$Location=="South"&FieldData$Age=="Y"])
SYUpFem<-c(FieldData$Upper.Femur[FieldData$Location=="South"&FieldData$Age=="Y"])
SYMidFem<-c(FieldData$Middle.Femur[FieldData$Location=="South"&FieldData$Age=="Y"])
SYHindFem<-c(FieldData$Hind.Femur[FieldData$Location=="South"&FieldData$Age=="Y"])
SYWeight<-c(FieldData$Weight[FieldData$Location=="South"&FieldData$Age=="Y"])
SY = data.frame(SYBodyLen,SYBodyWid,SYUpFem,SYMidFem,SYHindFem,SYWeight)

SABodyLen<-c(FieldData$Body.Length[FieldData$Location=="South"&FieldData$Age=="A"])
SABodyWid<-c(FieldData$Body.Width[FieldData$Location=="South"&FieldData$Age=="A"])
SAUpFem<-c(FieldData$Upper.Femur[FieldData$Location=="South"&FieldData$Age=="A"])
SAMidFem<-c(FieldData$Middle.Femur[FieldData$Location=="South"&FieldData$Age=="A"])
SAHindFem<-c(FieldData$Hind.Femur[FieldData$Location=="South"&FieldData$Age=="A"])
SAWeight<-c(FieldData$Weight[FieldData$Location=="South"&FieldData$Age=="A"])
SA = data.frame(SABodyLen,SABodyWid,SAUpFem,SAMidFem,SAHindFem,SAWeight)

SBodyLen<-c(SYBodyLen,SABodyLen)
SBodyWid<-c(SYBodyWid,SABodyWid)
SUFem<-c(SYUpFem,SAUpFem)
SMFem<-c(SYMidFem,SAMidFem)
SHFem<-c(SYHindFem,SAHindFem)
SWeight<-c(SYWeight,SAWeight)
SAll = data.frame(SBodyLen,SBodyWid,SUFem,SMFem,SHFem,SWeight)

NYMean<-colMeans(NY)
NYSDs<-colSd(NY,na.rm=TRUE)
NoAMean<-colMeans(NoA)
NoASDs<-colSd(NoA,na.rm=TRUE)
MYMean<-colMeans(MY)
MYSDs<-colSd(MY,na.rm=TRUE)
MAMean<-colMeans(MA)
MASDs<-colSd(MA,na.rm=TRUE)
SYMean<-colMeans(SY)
SYSDs<-colSd(SY,na.rm=TRUE)
SAMean<-colMeans(SA)
SASDs<-colSd(SA,na.rm=TRUE)
#1=Bodylength,2=BOdyWidth,

length(NABodyLen)
length(NYBodyLen)
length(SABodyLen)
length(SYBodyLen)
length(MABodyLen)
length(MYBodyLen)

length(NYBodyLen)/length(NABodyLen)
length(MYBodyLen)/length(MABodyLen)
length(SYBodyLen)/length(SABodyLen)

NYSE=c()
NoASE=c()
MYSE=c()
MASE=c()
SYSE=c()
SASE=c()
for (i in 1:length(NYMean)) {
  NYSE[i]<-NYSDs[i]/(sqrt(nrow(NY)))
  NoASE[i]<-NoASDs[i]/(sqrt(nrow(NoA)))
  MYSE[i]<-MYSDs[i]/(sqrt(nrow(MY)))
  MASE[i]<-MASDs[i]/(sqrt(nrow(MA)))
  SYSE[i]<-SYSDs[i]/(sqrt(nrow(SY)))
  SASE[i]<-SASDs[i]/(sqrt(nrow(SA)))
}


t1<-t.test(NABodyLen,y=MABodyLen)
t1
t2<-t.test(SABodyLen,y=MABodyLen)
t2
t3<-t.test(SYBodyLen,y=SYBodyLen)
t4<-t.test(NYBodyLen,y=MYBodyLen)

AData<-FieldData[FieldData$Age=="A",c(1:9)]
AData
YData<-FieldData[FieldData$Age=="Y",c(1:9)]
YData


AnovaALen<-aov(Body.Length~Location,data=AData)
AnovaAWid<-aov(Body.Width~Location,data=AData)
AnovaAUpp<-aov(Upper.Femur~Location,data=AData)
AnovaAMid<-aov(Middle.Femur~Location,data=AData)
AnovaAHin<-aov(Hind.Femur~Location,data=AData)
AnovaAWei<-aov(Weight~Location,data=AData)

summary(AnovaAHin)

AnovaLen<-aov(Body.Length~Location,data=FieldData)
AnovaWid<-aov(Body.Width~Location,data=FieldData)
AnovaUpp<-aov(Upper.Femur~Location,data=FieldData)
AnovaMid<-aov(Middle.Femur~Location,data=FieldData)
AnovaHin<-aov(Hind.Femur~Location,data=FieldData)
AnovaWei<-aov(Weight~Location,data=FieldData)

AnovaRatioLen<-aov(Body.Length/Weight~Location,data=FieldData)
AnovaRatioWid<-aov(Body.Width/Weight~Location,data=FieldData)
AnovaRatioALen<-aov(Body.Length/Weight~Location,data=AData)
AnovaRatioAWid<-aov(Body.Width/Weight~Location,data=AData)
AnovaRatioYLen<-aov(Body.Length/Weight~Location,data=YData)
AnovaRatioYWid<-aov(Body.Width/Weight~Location,data=YData)

AnovaWeitoMid<-aov(Weight~Middle.Femur,data=YData)
summary(AnovaWeitoMid)

AnovaRatioYMidLen<-aov(Middle.Femur/Weight~Location,data=YData)
summary(AnovaRatioYMidLen)

boxplot(Hind.Femur/Body.Length~Location, data=YData, main="Hind Femur vs Location", xlab = "Location", ylab = "Hind Femur Length")


plot(FieldData$Weight,FieldData$Body.Length, main = "Body Length vs Weight",xlab="Weight (mg)", ylab = "Body Length (cm)")
abline(lm(FieldData$Body.Length~FieldData$Weight),col="blue")
abline(v=35,col="red")
regrMid<-lm(FieldData$Body.Length~FieldData$Weight)
summary(regrMid)$r.squared

plot(YData$Hind.Femur,YData$Weight/YData$Body.Length, main = "Body Condition vs Hind Femur Length (Small Striders)",xlab="Hind Femur Length (cm)", ylab = "Body Condition (mg/cm)")
abline(lm(YData$Weight/YData$Body.Length~YData$Hind.Femur),col="blue")
regrHind<-lm(YData$Weight/YData$Body.Length~YData$Hind.Femur)
summary(regrHind)$r.squared

plot(YData$Middle.Femur,YData$Weight/YData$Body.Length, main = "Body Condition vs Middle Femur Length (Small Striders)",xlab="Middle Femur Length (cm)", ylab = "Body Condition (cm/mg)")
abline(lm(YData$Weight/YData$Body.Length~YData$Middle.Femur),col="blue")
regrMiddle<-lm(YData$Weight/YData$Body.Length~YData$Middle.Femur)
summary(regrMiddle)$r.squared



summary(AnovaRatioLen)
summary(AnovaRatioWid)
summary(AnovaRatioALen)
summary(AnovaRatioAWid)
summary(AnovaRatioYLen)
summary(AnovaRatioYWid)


summary(AnovaLen)
summary(AnovaWid)
summary(AnovaUpp)
summary(AnovaMid)
summary(AnovaHin)
summary(AnovaWei)

summary(AnovaALen)
summary(AnovaAWid)
summary(AnovaAUpp)
summary(AnovaAMid)
summary(AnovaAHin)
summary(AnovaAWei)

AnovaYLen<-aov(Body.Length~Location,data=YData)
AnovaYWid<-aov(Body.Width~Location,data=YData)
AnovaYUpp<-aov(Upper.Femur~Location,data=YData)
AnovaYMid<-aov(Middle.Femur~Location,data=YData)
AnovaYHin<-aov(Hind.Femur~Location,data=YData)
AnovaYWei<-aov(Weight~Location,data=YData)

summary(AnovaYLen)
summary(AnovaYWid)
summary(AnovaYUpp)
summary(AnovaYMid)
summary(AnovaYHin)
summary(AnovaYWei)

TukeyYLen<-TukeyHSD(AnovaYLen)
TukeyYMid<-TukeyHSD(AnovaYMid)
TukeyYHin<-TukeyHSD(AnovaYHin)

TukeyYLen
TukeyYMid
TukeyYHin

plot(TukeyYLen)

#young striders
boxplot(Body.Length~Location, data=YData, col=c('powderblue','powderblue','#FF000099'), 
        names= c("0.02","0.05","0.57"), main="Body Length vs Chlorine Levels (Small Striders)", 
        xlab = "Chlorine Levels (mg/L)", ylab = "Body Length (cm)")
legend(2.5,1.2,legend = c("sig. difference","no sig. difference"),fill=c('#FF000099','powderblue'),box.lty=0)

boxplot(Body.Length~Location, data=YData, col=c('powderblue','powderblue','#FF000099'), 
        main="Body Length vs Location (Small Striders)", xlab = "Location", ylab = "Body Length (cm)")
legend(2.5,1.2,legend = c("sig. difference","no sig. difference"),fill=c('#FF000099','powderblue'),box.lty=0)

boxplot(Middle.Femur~Location, data=YData, col=c('powderblue','powderblue','#FF000099'), 
        main="Middle Femur vs Location (Small Striders)", xlab = "Location", ylab = "Body Length (cm)")
legend(2.5,0.9,legend = c("sig. difference","no sig. difference"),fill=c('#FF000099','powderblue'),box.lty=0)

boxplot(Middle.Femur~Location, data=YData, col=c('powderblue','powderblue','#FF000099'), names= c("0.02","0.05","0.57"),
        main="Middle Femur vs Chlorine Levels (Small Striders)", xlab = "Chlorine Levels (mg/L)", ylab = "Body Length (cm)")
legend(2.5,0.92,legend = c("sig. difference","no sig. difference"),fill=c('#FF000099','powderblue'),box.lty=0)

boxplot(Hind.Femur~Location, data=YData, col=c('powderblue','powderblue','#FF000099'), names= c("0.02","0.05","0.57"),
        main="Hind Femur vs Chlorine Levels (Small Striders)", xlab = "Chlorine Levels (mg/L)", ylab = "Body Length (cm)")
legend(0.5,0.35,legend = c("sig. difference","no sig. difference"),fill=c('#FF000099','powderblue'),box.lty=0)

boxplot(Hind.Femur~Location, data=YData, col=c('powderblue','powderblue','#FF000099'), 
        main="Hind Femur vs Location", xlab = "Location", ylab = "Body Length (cm)")
legend(0.5,0.35,legend = c("sig. difference","no sig. difference"),fill=c('#FF000099','powderblue'),box.lty=0)

#all striders
boxplot(Body.Length~Location, data=FieldData, col=c('darkolivegreen1'), 
        main="Body Length vs Location", xlab = "Location", ylab = "Body Length (cm)")
legend(1.5,0.7,legend = c("no sig. difference"),fill=c('darkolivegreen1'),box.lty=0)

boxplot(Middle.Femur~Location, data=FieldData, col=c('darkolivegreen1'), 
        main="Middle Femur vs Location", xlab = "Location", ylab = "Body Length (cm)")
legend(1.5,0.55,legend = c("no sig. difference"),fill=c('darkolivegreen1'),box.lty=0)

boxplot(Hind.Femur~Location, data=FieldData, col=c('darkolivegreen1'), 
        main="Hind Femur vs Location", xlab = "Location", ylab = "Body Length (cm)")
legend(0.5,0.35,legend = c("no sig. difference"),fill=c('darkolivegreen1'),box.lty=0)

#large striders
boxplot(Body.Length~Location, data=AData, col=c('darkorchid1'), 
        main="Body Length vs Location (Large)", xlab = "Location", ylab = "Body Length (cm)")
legend(2.5,1.23,legend = c("no sig. difference"),fill=c('darkorchid1'),box.lty=0)

boxplot(Middle.Femur~Location, data=AData, col=c('darkorchid1'), 
        main="Middle Femur vs Location (Large)", xlab = "Location", ylab = "Body Length (cm)")
legend(0.5,1.15,legend = c("no sig. difference"),fill=c('darkorchid1'),box.lty=0)

boxplot(Hind.Femur~Location, data=AData, col=c('darkorchid1'), 
        main="Hind Femur vs Location (Large)", xlab = "Location", ylab = "Body Length (cm)")
legend(0.5,1.02,legend = c("no sig. difference"),fill=c('darkorchid1'),box.lty=0)


boxplot(Body.Length~Location, data=AData, col=c('coral'), 
        main="Body Length vs Location (Large)", xlab = "Location", ylab = "Body Length (cm)")
legend(2.5,1.22,legend = c("no sig. difference"),fill=c('coral'),box.lty=0)

FieldMod <- rbind(AData,YData)               
FieldMod <- droplevels(FieldMod)

#Middle Femur to Body Length Ratio vs Size Class
boxplot(Middle.Femur/Body.Length~Age, data = FieldMod, col=c('deepskyblue3','goldenrod1'),xlab = "Size Class", 
        ylab = "Mid Femur to Body Length Ratio", names = c("Large","Small"), main = "Middle Femur to Body Length Ratio vs Size Class")
legend(0.5,1.05,legend = c("P = 1.55e-07"),box.lty=0)
AnovaFeLen <- aov(Middle.Femur/Body.Length~Age, data = FieldMod)
summary(AnovaFeLen)
TukeyHSD(AnovaFeLen)

#Hind Femur to Body Length Ratio vs Size Class
boxplot(Hind.Femur/Body.Length~Age, data = FieldMod, col=c('deepskyblue3','goldenrod1'),xlab = "Size Class", 
        ylab = "Hind Femur to Body Length Ratio", names = c("Large","Small"), main = "Hind Femur to Body Length Ratio vs Size Class")
legend(0.5,1.05,legend = c("P = 1.55e-07"),box.lty=0)
AnovaHFeLen <- aov(Middle.Femur/Body.Length~Age, data = FieldMod)
summary(AnovaHFeLen)

boxplot(Hind.Femur~Location, data=YData, names= c("0.02","0.05","0.57"), main="Hind Femur vs Chlorine Levels (Small Striders)", xlab = "Chlorine Levels (mg/L)", ylab = "Hind Femur Length (cm)")
boxplot(Hind.Femur~Location, data=YData, main="Hind Femur vs Location", xlab = "Location", ylab = "Hind Femur Length")

boxplot(Hind.Femur~Location, data=AData, main="Hind Femur vs Location (Large Striders)", xlab = "Location (Fork)", ylab = "Hind Femur Length (cm)")

boxplot(Weight/Body.Length~Location, data=YData, main="Body Condition vs Location (Small Striders)", col ='chartreuse2', xlab = "Location", ylab = "Body Condition (mg/cm)")
legend(1.5,11,legend = c("no sig. difference"),fill=c('chartreuse2'),box.lty=0)

boxplot(Weight/Body.Length~Location, data=AData, main="Body Condition vs Location (Large Striders)", col ='cyan3', xlab = "Location", ylab = "Body Condition (mg/cm)")
legend(0.5,28.5,legend = c("no sig. difference"),fill=c('cyan3'),box.lty=0)

YData$Location

plot(SYBodyLen,SYWeight)
plot(SYBodyLen,SYMidFem)
plot(SYBodyLen,SYHindFem)

boxplot()

#P<0.05, Length,Middle Femur,Hind Femur

Len<-c(FieldData$Body.Length)
Weigh<-c(FieldData$Weight)
plot(SABodyLen,SAWeight)
plot(FieldData$Body.Length/FieldData$Weight,FieldData$Location)
plot(AData$Location,AData$Body.Length/AData$Weight)
plot(YData$Location,YData$Body.Length/YData$Weight)


plot(FieldData$Body.Length,FieldData$Weight,main="Gerridae Body Length vs Weight",xlab="Body Length", ylab="Weight")

#Switch to Weight vs Length for graphs
#ANOVA box plots, do ANOVAS combining body sizes, and then do tests with ratios (width to weight)
     
     
     