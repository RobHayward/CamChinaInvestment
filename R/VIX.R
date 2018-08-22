# VIX index
da <- read.csv('./Data/VIX.csv')
da$Date <- gsub('/+AC0*', "", da$X.AD0.)
da$Date <- gsub('/+*', "", da$X.AD0.)
head(da)
