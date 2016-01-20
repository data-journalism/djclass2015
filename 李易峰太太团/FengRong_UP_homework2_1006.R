# tryR
# ÀîÒ×·åÌ«Ì«ÍÅ
# 20151004

###########chapter1###########

 ############expressions 1.1############
1+1
"Arr, matey!"
6*7

 ############Logical Values 1.2############
3<4
2+2==5
T==TRUE

 ############variables 1.3############
x<-42
x / 2
x <- "Arr, matey!"
x
x <- TRUE

############functions 1.4############
sum(1, 3, 5)
rep("Yo ho!",times=3)
sqrt(16)

############help 1.5############
help(sum)
example(min)
help(rep)

 ############files 1.6############
list.files()

###########Chapter 1 Completed###########

###########chapter2###########
# start chapter2 below

 ############vectors 2.1############
c(4,7,9)
c("a","b","c")
c(1, TRUE, "three")

############sequence vectors 2.2############
5:9
seq(5,9)
seq(5, 9, 0.5)
9:5

############vector access 2.3############
sentence <- c('walk', 'the', 'plank')
sentence[3]
sentence[1]
sentence[3] <- "dog"
sentence[4] <- 'to'
sentence[c(1, 3)]
sentence[2:4]
sentence[5:7] <- c('the', 'poop', 'deck')
sentence[6]
sentence[c(1:7)]

############vector names 2.4############
ranks <- 1:3
names(ranks) <- c("first", "second", "third")
ranks
ranks["first"]
ranks["third"] <- 4
ranks
names(ranks[2])
names(ranks[3])
  
############plotting one vector 2.5############
vesselsSunk <- c(4, 5, 1)
barplot(vesselsSunk)
names(vesselsSunk)<- c("England","France","Norway")
barplot(vesselsSunk)
barplot(1:100)

###########vector math 2.6############
a<-c(1,2,3)
a+1
a/2
a*2
sqrt(a)
b<-c(4,5,6)
d<-a+b
d
a-b
a==c(1,99,3)
a<b
a<c(1,99,3)
sin(a)
sqrt(a)

###########scatter plots 2.7############
x<-seq(1,20,0.1)
y<-sin(x)
plot(x,y)
plot(y,x)
values<--10:10
absolutes<-abs(values)
plot(values,absolutes)

###########NA values 2.8############
a<-c(1,3,NA,7,9)
sum(a)
sum(a, na.rm =TRUE)

###########Chapter 2 Completed###########

###########chapter3###########
# start chapter3 below

############matrices 3.1############
matrix(0, 3, 4)
a <- 1:12
print(a)
matrix(a, 3, 4)
plank <- 1:8
dim(plank) <- c(2, 4)
print(plank)
matrix(1:25,5,5)

############matrix access 3.2############
print(plank)
plank[2, 3]
plank[1,4]
plank[1, 4] <- 0
plank[2,]
plank[,4]
plank[, 2:4]

############matrix plotting 3.3############
elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0
contour(elevation)
persp(elevation)
persp(elevation,expand=0.2)
contour(volcano)
persp(volcano, expand=0.2)
image(volcano)

###########Chapter 3 Completed###########

###########chapter4###########
# start chapter4 below

############mean 4.1############
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')
mean(limbs)
barplot(limbs)
abline(h = mean(limbs))

############median 4.2############
limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Davy Jones')
mean(limbs)
barplot(limbs)
abline(h=mean(limbs))
median(limbs)
abline(h=median(limbs))

############standard deviation 4.3############
pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
barplot(pounds)
meanValue <- mean(pounds)
abline(h=meanValue)
deviation <- sd(pounds)
abline(h = meanValue + deviation)
abline(h = meanValue - deviation)

###########Chapter 3 Completed###########

