#####kcll#####
###chapter5###
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
print(chests)
print(types)
as.integer(types)
levels(types)
##Plots With Factors##
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)
plot(weights, prices, pch=as.integer(types))
legend("topright", c("gems", "gold", "silver"), pch=1:3)
legend("topright", levels(types), pch=1:length(levels(types)))

###chapter6###
##Data Frames##
treasure <- data.frame(weights, prices, types)
##Data Frame Access##
treasure[[2]]
treasure[["weights"]]
treasure$prices
treasure$types
##Loading Data Frames##
list.files()

