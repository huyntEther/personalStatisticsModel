###question 3
# read input, create model
invoices<-read.table('datasource\\invoices.txt', header = TRUE, sep = "\t")
M3 <- lm(Time~Invoices,data = invoices )
M3smr<-summary(M3)
#3a
confint(M3,level=0.95)
#3b
tVal <-tval <- qt(1-0.05/2,length(M3smr$residuals)-2)
tValTest <- abs(M3smr$coefficients[2,1]-0.01) / M3smr$coefficients[2,2]
tVal
tValTest
tVal<tValTest
# 3c
predict.lm(M3,data.frame(Invoices=c(130)),interval = "prediction", level = 0.95)
