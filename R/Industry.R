# VIX index
da <- read.csv('./Data/IndustryCountry.csv')
plot(da$x, da$Industry.Effect, type = 'l', xlab = "Date", main = "Average Variance of Pure Country and Pure Industry Effects", 
     ylab = "Variance")
lines(da$x, da$Country.Effect, col = "Brown", lty = 2)
legend('topleft', inset = 0.1, legend = c("Industry Effect", "Country Effect"), 
       col = c("Black", "Brown"), lty = c(1, 2))
