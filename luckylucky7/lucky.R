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
read.csv(file="/Users/k783/Downloads/3targets.csv")
read.table(file="/Users/k783/Downloads/3infantry.txt", sep="\t")
read.table(file="/Users/k783/Downloads/3infantry.txt", sep="\t", header=TRUE)

###########Expressions6.4############
targets <- read.csv(file="/Users/k783/Downloads/3targets.csv")
infantry <- read.table(file="/Users/k783/Downloads/3infantry.txt", sep="\t", header=TRUE)
merge(x = targets, y = infantry)

###########chapter7############
###########Expressions7.1############
piracy <- read.csv("/Users/k783/Downloads/piracy.csv")


