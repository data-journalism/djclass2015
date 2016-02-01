# tryR
# bgxiaofendui
# 20151015
###########chapter5############
###########Creating Factors5.1############

chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
print(chests)
print(types)
as.integer(types)
levels(types)

###########Plots With Factors5.2############

weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)
plot(weights, prices, pch=as.integer(types))
legend("topright", c("gems", "gold", "silver"), pch=1:3)
legend("topright", levels(types), pch=1:length(levels(types)))

###########chapter6############
###########Data Frames6.1############

treasure <- data.frame(weights, prices, types)
print(treasure)

###########Data Frame Access6.2############

treasure[[2]]
treasure[["weights"]]
treasure$prices
treasure$types

###########Loading Data Frames6.3############
#I have created a corresponding file
list.files()
read.csv("targets.csv")
read.table("infantry.txt", sep="\t")
read.table("infantry.txt", sep="\t", header=TRUE)

###########Merging Data Frames6.4############

targets <- read.csv("targets.csv")
infantry <- read.table("infantry.txt", sep="\t", header=TRUE)
merge(x = targets, y = infantry)

###########chapter7############
###########Some Real World Data7.1############

#I can not know the correct text data
#piracy <- read.csv("piracy.csv")
#gdp <- read.table("gdp.txt", sep="  ", header=TRUE)
#countries <- merge(x = gdp, y = piracy)
#plot(countries$GDP, countries$Piracy)
#cor.test(countries$GDP, countries$Piracy)
#line <- lm(countries$Piracy ~ countries$GDP)
#abline(line)

###########ggplot2 7.2############
#I've installed this package
#install.packages("ggplot2")
help(package = "ggplot2")
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
library(ggplot2)
qplot(weights, prices, color = types)
