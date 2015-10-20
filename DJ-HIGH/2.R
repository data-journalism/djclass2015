# tryR2
# DJ——HIGH
# 20151018
###########chapter5############
#本次作业因为需要通过编译，将一些原本练习里的代码也写在了文档里，却注释掉了。
 chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
 types <- factor(chests)
 print(chests)
 print(types)
 as.integer(types)
 levels(types)
 weights <- c(300, 200, 100, 250, 150)
 prices <- c(9000, 5000, 12000, 7500, 18000)
 plot(weights, prices)
 plot(weights, prices, pch=as.integer(types))
 legend("topright", c("gems", "gold", "silver"), pch=1:3)
 legend("topright", levels(types), pch=1:length(levels(types)))
 
###########chapter6############
treasure <- data.frame(weights, prices, types)
print(treasure)
treasure[[2]]
treasure[["weights"]]
treasure$prices
treasure$types
list.files()

##read.csv("targets.csv")
##read.table("infantry.txt", sep="\t")
##read.table("infantry.txt", sep="\t", header=TRUE)
##targets <- read.csv("targets.csv")
##infantry <- read.table("infantry.txt", sep="\t", header=TRUE)
##merge(x = targets, y = infantry)

##上面一段因为系统找不到 targets.csv载入，所以无法在我们的电脑上编译运行，所以我们小组暂时注释掉了他们
 

###########chapter7############

## piracy <- read.csv("piracy.csv")
 ##gdp <- read.table("gdp.txt", sep="  ", header=TRUE)
 ##countries <- merge(x = gdp, y = piracy)
 ##plot(countries$GDP, countries$Piracy)
 ##cor.test(countries$GDP, countries$Piracy)
 ##line <- lm(countries$Piracy ~ countries$GDP)
 ##abline(line)
 ##上一段因为在电脑环境里面找不到"piracy.csv"无法通过编译，所以本小组暂时将其注释掉
 #install.packages("ggplot2")
#上一句话因为是要求系统载入一个包，可以在rstdio中运行，但无法cpmpile成html，所以我们也选择了注释掉它。
 help(package = "ggplot2")
 weights <- c(300, 200, 100, 250, 150)
 prices <- c(9000, 5000, 12000, 7500, 18000)
 chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
 types <- factor(chests)
 # qplot(weights, prices, color = types)##这句话因为找不到qplot函数所以未能通过编译（虽然网站上说qplot是ggplot2的常用函数并且之前已经加载了该包。）




###########chapter8############
#第八节已无更多练习需要完成