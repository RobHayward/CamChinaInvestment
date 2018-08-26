# VIX index
da <- read.csv('./Data/ETFsize.csv')
barplot(names.arg = da$Year, height = da$X, xlab = "Date", main = "The Increase In ETF Assess 2003 to 2017", ylab = "bn", col = 'Brown')

