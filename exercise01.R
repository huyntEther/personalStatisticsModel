playBill<-read.csv('datasource\\playbill.csv', header = TRUE, sep = ",")
#sumarize
dim(playBill)
summary(playBill)
head(playBill)
playBill[1:15,]
plot(playBill)


#aaa
M1 <- lm(playBill$sales ~ playBill$)


#M1 <- lm(Advertising$sales ~ Advertising$TV)
# summary(M1)
# names(M1)
# coef(M1)
# confint(M1)

# plot( Advertising$TV,Advertising$sales)
# abline(M1,lwd=3,col="red")

# par(mfrow=c(2,2))
# plot(M1)