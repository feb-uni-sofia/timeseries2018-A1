# a)
# install.packages('xts')
library(xts)

# b) 

bitcoins <- read.csv(file = 'https://s3.eu-central-1.amazonaws.com/sf-timeseries/data/bitcoin2017-06-01-2017-11-13.csv',
                     stringsAsFactors = FALSE)
str(bitcoins)

# c) 

btc <- xts(bitcoins$close, order.by = as.Date(bitcoins$Index))
str(btc)

# d) 
plot(btc)
# e)

mean(btc['2017-06'])
mean(btc['2017-10'])

# f)

range(btc['/2017-08-31'])
range(btc['2017-09-01/'])

# g) 

weeklyBtcMean <- apply.weekly(btc, mean)
plot(weeklyBtcMean)

# h)

weeklyBtcSd <- apply.weekly(btc, sd)
plot(weeklyBtcSd)

# i)

btc_l1 <- lag(btc)

## coredata extracts the values
## of the time-series (and drops the time index)
plot(x=coredata(btc_l1), y=coredata(btc), main="Scatterplot BTC against BTC t - 1")
