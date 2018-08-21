# BAV chart
da <- read.csv('./Data/ETF3.csv', stringsAsFactors = FALSE)
head(da)
tail(da)
plot(da$x, da$ETF, type = 'l', main = "Russell 1000 Growth and NAV: Flash Crash", 
     ylim = c(-80, 0.2), xlab = "Time", ylab = "Discount (percentage")
abline(a = 0,  col = 'red')
