# tryR
# ¿¿Æ×£¿Ð¡×é
# 20150926

#############1###########
2
"Arr, matey!"
42
TRUE
FALSE
TRUE
x <- 42
21
"Arr, matey!"
"Arr, matey!"
TRUE
9
"Yo ho!" "Yo ho!" "Yo ho!"
4

> help(sum)
sum                    package:base                    R Documentation

Sum of Vector Elements

Description:
  
  'sum' returns the sum of all the values present in its arguments.

Usage:
  
  sum(..., na.rm = FALSE)
...
> example(min)

min> require(stats); require(graphics)

min>  min(5:1, pi) #-> one number
[1] 1

min> pmin(5:1, pi) #->  5  numbers
[1] 3.141593 3.141593 3.000000 2.000000 1.000000

...

> help(rep)
rep                    package:base                    R Documentation

Replicate Elements of Vectors and Lists

Description:    
  
  'rep' replicates the values in 'x'. It is a generic function, and
the (internal) default method is described here.
...

> list.files()
[1] "bottle1.R" "bottle2.R"

> source("bottle1.R")
[1] "This be a message in a bottle1.R!"

> source("bottle2.R")
[1] "Will ye be me pen pal?"

#############2###########

4 7 9
"a" "b" "c"
"1"     "TRUE"  "three"
5 6 7 8 9
5 6 7 8 9
5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
9 8 7 6 5

> sentence <- c('walk', 'the', 'plank')
> sentence[3]
[1] "plank"

> sentence[1]
[1] "walk"

> sentence[3] <- "dog"

sentence[4] <- 'to'

> sentence[c(1, 3)]
[1] "walk" "dog" 

> sentence[2:4]
[1] "the" "dog" "to" 

> sentence[5:7] <- c('the', 'poop', 'deck')

> sentence[6]
[1] "poop"

> ranks <- 1:3
> names(ranks) <- c("first", "second", "third")

> ranks
first second  third
1      2      3
> ranks["first"]
first 
1

> ranks["third"] <- 4

> vesselsSunk <- c(4, 5, 1)
> barplot(vesselsSunk)

> names(vesselsSunk) <- c("England", "France", "Norway")

> barplot(vesselsSunk)

> barplot(1:100)

> a <- c(1, 2, 3)
> a + 1
[1] 2 3 4

> a / 2
[1] 0.5 1.0 1.5

> a*2
[1] 2 4 6

> b <- c(4, 5, 6)
> a + b
[1] 5 7 9

> a == c(1, 99, 3)
[1]  TRUE FALSE  TRUE

> a>-c(1,99,3)
[1] TRUE TRUE TRUE

> sin(a)
[1] 0.8414710 0.9092974 0.1411200

> sqrt(a)
[1] 1.000000 1.414214 1.732051

> x <- seq(1, 20, 0.1)
> y <- sin(x)

> plot(x, y)

> values <- -10:10
> absolutes <- abs(values)
> plot(values, absolutes)

> a <- c(1, 3, NA, 7, 9)
> sum(a)
[1] NA

> help(sum)
sum                    package:base                    R Documentation

Sum of Vector Elements

Description:
  'sum' returns the sum of all the values present in its arguments.

Usage:
  sum(..., na.rm = FALSE)
...

#############3###########

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

> elevation <- matrix(1, 10, 10)

> elevation[4, 6] <- 0

> contour(elevation)

> persp(elevation)

> persp(elevation, expand=0.2)

> contour(volcano)

> persp(volcano, expand=0.2)

> image(volcano)

#############4###########
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')

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

> pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
> barplot(pounds)
> meanValue <- mean(pounds)

> abline(h = meanValue)

> deviation <- sd(pounds)

> abline(h = meanValue + deviation)

> abline(h = meanValue - deviation)

