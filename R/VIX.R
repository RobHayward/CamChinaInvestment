# VIX index
da <- read.csv('./Data/VIX.csv')
da$Date <- sub("[+]AC0", "", da$X.AD0)
da$Date <- sub("[+]AC0", "", da$Date)
da$Date <- as.Date(da$Date, format = "%Y-%m-%d")
head(da)
tail(da)
plot(da$Date, da$Adj.Close, type = 'l', xlab = "Date", ylab = "VIX index",
     main = "VIX Index 1990 to present")
plot(da$Date["01-01-2017":"28-02-2018"])
head(da$Date)
dacrisis <- subset(da, da$Date %in% as.Date("2016-01-01"):as.Date("2018-03-31"))
head(dacrisis)
plot(dacrisis$Date, dacrisis$Adj.Close, type = 'l', xlab = "Date", ylab = "VIX index",
       main = "VIX Index 2015-17")
