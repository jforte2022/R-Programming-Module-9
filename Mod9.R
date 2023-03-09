library(ggplot2)

airline <- read.csv("USAirlines.csv")
airline <- airline[,-1]
airline$firm <- as.factor(airline$firm)

ggplot(airline, aes(x = year, y = output, group = firm, color = firm)) + geom_line()
ggplot(airline, aes(x = year, y = price, color = firm)) + geom_point(position = "jitter", size = 1.5) + geom_line()
ggplot(airline, aes(x = year, y = price, color = firm)) + geom_point(aes(size = load), position = "jitter")