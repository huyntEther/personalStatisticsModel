
#setwd("/Users/jadenguyen/Desktop/GiaoAn/DH_KHTN/HKII_2020_2021/CH/MHHTK_DataScience/Cours_MNg/RegressionSimple/Data")

#dev.off ()

#Advertising<-read.csv(file.choose(), header = TRUE, sep = ",")
Advertising<-read.csv('Advertising.csv', header = TRUE, sep = ",")

#Advertising <- read.table(file = "Advertising.csv", header = TRUE, sep = ",")
dim(Advertising)
Advertising[1:5,]
summary(Advertising)
plot(Advertising)

M1 <- lm(Advertising$sales ~ Advertising$TV)
summary(M1)
names(M1)
coef(M1)
confint(M1)

plot( Advertising$TV,Advertising$sales)
abline(M1,lwd=3,col="red")

par(mfrow=c(2,2))
plot(M1)

# plot(predict(M1), residuals(M1))
# plot(predict(M1), rstudent(M1))
# plot(hatvalues(M1))
# which.max(hatvalues(M1))

