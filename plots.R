library("ggplot2")

hist <- ggplot(data, aes(x=value, fill=variable)) + geom_histogram(alpha=0.2, position="identity")


#cdf <- ggplot(data, aes(x=value, y=ecd)) + geom_line(aes(group=variable, colour=variable))


#smooth_cdf <- ggplot(data, aes(x=value, y=ecd, group=variable, colour=variable))
#  + geom_smooth(se=FALSE, formula=y~ns(x,3), method="lm")

cdf <- ggplot(data, aes(x=value)) + stat_ecdf(aes(colour=variable))
