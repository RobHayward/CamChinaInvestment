x <- seq(-3, 3, 0.1)
fs = function(x, epsilon, delta){
  dnorm(sinh(delta*asinh(x) - epsilon)) * delta*cosh(delta*asinh(x) -
                                                       epsilon)/sqrt(1 + x^2)
}
plot(x, fs(x, -0.4, 1), type = 'l', col = 'darkgreen', main = 'Distributin with mixture',
     xlab = 'Return', ylab = 'frequency', ylim = c(0, 0.6))
# http://stats.stackexchange.com/questions/43482/transformation-to-increase-kurtosis-and-skewness-of-normal-r-v
#lines(x, fs(x, 0, 1.5), type = 'l', lty = 3)
lines(x, fs(x, 0, 1.5), type = 'l', lty = 2)
legend('topleft', legend = c('Crisis', 'Calm'), col = c('black', 'darkgreen'), lty = c(2, 1))
