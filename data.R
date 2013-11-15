library("reshape2")
library("plyr")

set.seed(452)

data <- data.frame(
  a = rnorm(10000, 50.2, 1),
  b = rnorm(10000, 49.3, 1),
  c = rnorm(10000, 50.1, 0.5))

data <- melt(data)

data <- ddply(data, .(variable), transform, ecd=ecdf(value)(value))
