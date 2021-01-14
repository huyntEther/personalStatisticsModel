invoices<-read.table('datasource\\invoices.txt', header = TRUE, sep = "\t")
#head(invoices)
#summary(invoices)
#invoices[1:5,]
# plot(invoices)
#plot(invoices$Invoices,invoices$Time)
#get var from model
M3 <- lm(Time~Invoices,data = invoices )
M3smr<-summary(M3)
n <-length(M3$residuals)
b0<-summary(M3)$coefficients[1,1]
b1<-summary(M3)$coefficients[2,1]
confint(M3,level=0.95)
#3b
seb1 <-summary(M3)$coefficients[2,2]
b1thesis <- 0.01
pvalue3b <- 2*pt(b1-b1thesis/seb1,n-2)
cat(pvalue3b)
#3b
#x  = data.frame(Invoices=c(130,130))
#predict.lm(M3,data.frame(Invoices=c(130)),interval = "prediction", level = 0.95)

xstar = 130
modelSigma <- M3smr$sigma
ystar = b0+b1*xstar
alpha = 0.05
lowerY <- ystar - modelSigma*sqrt(1/30)*qt(p=1-alpha/2,df=n-2)
upperY <- ystar + modelSigma*sqrt(1/30)*qt(p=1-alpha/2,df=n-2)
cat(lowerY, ystar,upperY)
