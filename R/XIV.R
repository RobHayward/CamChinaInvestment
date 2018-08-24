# VIX index
da <- read.csv('./Data/XIV.csv')
plot(da$x, da$XIV, type = 'l', xlab = "Date", main = "XIV ETF 2015 to Feb 2018", 
     ylab = "XIV Price")
