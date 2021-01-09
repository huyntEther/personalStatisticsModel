playBill<-read.csv('Advertising.csv', header = TRUE, sep = ",")
#sumarize
dim(playBill)
summary(playBill)
head(playBill)
playBill[1:15,]
plot(playBill)
