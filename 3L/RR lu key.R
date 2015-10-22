# tryR
# 3L
# 20150925
#############chapter1###############

####Expressions 1.1 ####
[1] 2
[1] "Arr, matey!"
[1] 42

####Logical Values 1.2####
[1] TRUE
[1] FALSE
[1] TRUE

####Variables 1.3####
[1] > x <- 42
[1] 21
[1] > x <- "Arr, matey!"
[1] "Arr, matey!"
[1]> x <- TRUE

####Functions 1.4####
[1] 9
[1] "Yo ho!" "Yo ho!" "Yo ho!"
[1] 4

####Help 1.5####
[1] 1

[1] 3.141593 3.141593 3.000000 2.000000 1.000000


####Files 1.6####
[1] "bottle1.R" "bottle2.R"
[1] "This be a message in a bottle1.R!"
[1] "Will ye be me pen pal?"

###########chapter2############
####Vectors 2.1####
[1] 4 7 9
[1] "a" "b" "c"
[1] "1"     "TRUE"  "three"
####Sequence Vectors 2.2####
[1] 5 6 7 8 9
[1] 5 6 7 8 9
[1] 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
[1] 9 8 7 6 5
####Vector Access 2.3####
[1] "plank"
[1] "walk"
[1] "walk" "dog" 
[1] "the" "dog" "to" 
[1] "poop"
####Vector Names 2.4####
> ranks <- 1:3
> names(ranks) <- c("first", "second", "third")

> ranks
first second  third
1      2      3
> ranks["first"]
first 
1

> ranks["third"] <- 4


####Plotting One Vector 2.5####
> vesselsSunk <- c(4, 5, 1)
> barplot(vesselsSunk)

> names(vesselsSunk) <- c("England", "France", "Norway")

> barplot(vesselsSunk)

> barplot(1:100)

####Vector Math 2.6####

[1] 2 3 4
[1] 0.5 1.0 1.5
[1] 2 4 6
[1] 5 7 9
[1] -3 -3 -3
[1]  TRUE FALSE  TRUE
[1] FALSE  TRUE FALSE
[1] 0.8414710 0.9092974 0.1411200
[1] 1.000000 1.414214 1.732051
####Scatter Plots 2.7####
> x <- seq(1, 20, 0.1)
> y <- sin(x)

> plot(x, y)

> values <- -10:10
> absolutes <- abs(values)
> plot(values, absolutes)
#### 2.8####
[1] NA
> help(sum)
sum                    package:base                    R Documentation

Sum of Vector Elements

Description:
  'sum' returns the sum of all the values present in its arguments.

Usage:
  sum(..., na.rm = FALSE)
...
[1] 20

###########chapter3############
> matrix(0, 3, 4)
[,1] [,2] [,3] [,4]
[1,]    0    0    0    0
[2,]    0    0    0    0
[3,]    0    0    0    0

> a <- 1:12

> print(a)
[1]  1  2  3  4  5  6  7  8  9 10 11 12

> matrix(a, 3, 4)
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

> plank <- 1:8

> dim(plank) <- c(2, 4)

> print(plank)
[,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

> matrix(1, 5, 5)
[,1] [,2] [,3] [,4] [,5]
[1,]    1    1    1    1    1
[2,]    1    1    1    1    1
[3,]    1    1    1    1    1
[4,]    1    1    1    1    1
[5,]    1    1    1    1    1

####Matrix Access 3.2####
> print(plank)
[,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

> plank[2, 3]
[1] 6

> plank[1, 4]
[1] 7

> plank[1, 4] <- 0

> plank[2,]
[1] 2 4 6 8

> plank[, 4]
[1] 7 8

> plank[, 2:4]
[,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8

####Matrix Plotting 3.3####
> elevation <- matrix(1, 10, 10)

> elevation[4, 6] <- 0

> contour(elevation)

> persp(elevation)

> persp(elevation, expand=0.2)

> contour(volcano)

> persp(volcano, expand=0.2)

> image(volcano)


###########chapter4############
> mean(limbs)
[1] 3.5

> barplot(limbs)

> abline(h = mean(limbs))

> limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
> names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 
                    'Scooter', 'Dan', 'Mikey', 'Davy Jones')
> mean(limbs)
[1] 4.75

> barplot(limbs)
> abline(h = mean(limbs))

> median(limbs)
[1] 4

> abline(h = median(limbs))


> abline(h = meanValue)

> deviation <- sd(pounds)

> abline(h = meanValue + deviation)

> abline(h = meanValue - deviation)