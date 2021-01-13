invoices<-read.table('datasource\\invoices.txt', header = TRUE, sep = "\t")
head(invoices)
summary(invoices)
invoices[1:5,]
# plot(invoices)
plot(invoices$Invoices,invoices$Time)

M3 <- lm(Time~Invoicesdata = invoices )
M3smr<-summary(Mb)
#3b
# M3smr
# M3smr$coefficients
# thesisSlope = 0.01
# tstatsSlope <- (thesisSlope - M3smr$coefficients[2,1])/M3smr$coefficients[2,2]
# tstatsSlope
# pvalSlope <- 2* pt(abs(tstatsSlope),df=df.residual(M3), lower.tail = FALSE)
# pvalSlope2 <- 2* pt(abs(tstatsSlope),df=df.residual(M3), lower.tail = TRUE)
# pvalSlope
# pvalSlope2

#3b
x  = data.frame(Invoices=c(130,130))
predict.lm(M4,x,interval = "confidence")
