idct<-read.table('dataSource\\indicators.txt', header = TRUE, sep = '\t')
#head(idct)
m2 <- lm(PriceChange ~ LoanPaymentsOverdue,data = idct)
summary(m2)
#2a
confint(m2,level=0.95)
#2b
predict.lm(m2, data.frame(LoanPaymentsOverdue=c(4)), interval = "confidence", level = 0.95)
