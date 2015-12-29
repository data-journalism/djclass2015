# tryR
# luckylucky7
# 20151021
###########chapter5############
###########Expressions5.1############
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
print(chests)
print(types)
as.integer(types)
levels(types)

###########Expressions5.2############
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)
plot(weights, prices, pch=as.integer(types))
legend("topright", c("gems", "gold", "silver"), pch=1:3)
legend("topright", levels(types), pch=1:length(levels(types)))

###########chapter6############
###########Expressions6.1############
treasure <- data.frame(weights, prices, types)
print(treasure)

###########Expressions6.2############
treasure[[2]]
treasure[["weights"]]
treasure$prices
treasure[["types"]]

###########Expressions6.3############
list.files()
read.csv(file="/Users/k783/Downloads/targets.csv")
read.table(file="/Users/k783/Downloads/infantry.txt", sep="\t")
read.table(file="/Users/k783/Downloads/infantry.txt", sep="\t", header=TRUE)

###########Expressions6.4############
targets <- read.csv(file="/Users/k783/Downloads/targets.csv")
infantry <- read.table(file="/Users/k783/Downloads/infantry.txt", sep="\t", header=TRUE)
merge(x = targets, y = infantry)

###########chapter7############
###########Expressions7.1############
piracy <- read.csv("/Users/k783/Downloads/piracy.csv")
gdp <- read.table("/Users/k783/Downloads/gdp.txt", sep="  ", header=TRUE)
countries <- merge(x = gdp, y = piracy)
plot(countries$GDP, countries$Piracy)
cor.test(countries$GDP, countries$Piracy)
line <- lm(countries$Piracy ~ countries$GDP)
abline(line) 

###########Expressions7.2############
help(package = "ggplot2")
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
library(ggplot2)
qplot(weights,prices,color = types)