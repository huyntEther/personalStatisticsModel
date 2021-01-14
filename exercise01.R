playBill<-read.csv('datasource\\playbill.csv', header = TRUE, sep = ",")
#sumarize
dim(playBill)
summary(playBill)
head(playBill)
playBill[1:5,]
#plot(playBill)
#1a
M1 <- lm(CurrentWeek ~ LastWeek, data = playBill)
M1smr <- summary(M1)
M1smr
b0<-summary(M1)$coefficients[1,1]
b1<-summary(M1)$coefficients[2,1]
b1thesis <- 1
seb1 <-summary(M1)$coefficients[2,2]
pvalue1a <- 2*pt(b1-b1thesis/seb1,n-2)
cat(pvalue1a)
#1b
b0thesis <- 10000
seb0 <-summary(M1)$coefficients[1,2]
pvalue1b <- 2*pt(b0-b0thesis/seb0,n-2)
cat(pvalue1b)
#1c
prd1c <- predict.lm(M1,data.frame(LastWeek=c(400000)),interval = "confidence", level = 0.95)
cat(prd1c)
