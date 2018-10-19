# Assignment 1, Problem 1

# a) Create character vector

aChar <- c('2017-11-09', '2017-08-11')

# b) Coerce to class Date

aDate <- as.Date(aChar)

## Print the result
aDate

## The dates are not in an unambiguous format, i.e.
## 2017-11-09 could mean 9th of Novermber 2017 or 11th of September 2017.

## The default format for parsing character vectors is %Y-%m-%d.
## four digit year, dash, two digits month number, i.e 01-12,
## dash and two digits day number, i.e. 01-31

## If the default format is not appropriate you can
## specify a custom format string in as.Date

aDate1 <- as.Date(aChar, format = '%Y-%d-%m')
## Print the result
aDate1

# c) Numeric representation of dates

as.numeric(aDate)

## The result is the number of days since the origin (1970-01-01)
## that correspond to the two dates

## The following results in NA values
## because R does not know how to map
## the strings '2017-11-09' and '2017-08-11' to a numbers.

as.numeric(aChar) 

# d)

seq.Date(as.Date('2017-11-01'), as.Date('2017-11-17'), by = 'day')

# e)

seq.Date(as.Date('2017-11-01'), as.Date('2017-12-23'), by = 'week')

