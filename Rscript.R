53 + 23


# ()
# ^
# /
# *
# +
# -

3 + 5 * 2
(3+5)*2


log(1)  
log10(10)
exp(0.5)
log()

x <- 1/40
x

x <- x+1
x
y <- x*2
y


this <- 100

min-len <- 1
.m <- 1

mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20

1:5
2^(1:5)
x <- 1:4
y <- 5:8
x + y


ls()
rm(x)

remove(y)

rm(list = ls())
ls()

installed.packages()

update.packages()


library(ggplot2)
library(gapminder)
library(dplyr)


# finding help #
?log
help(log)

# fuzzy search #
??read.

?"<-"
vignette("ggplot2-specs")
vignette("phyloseq-analysis")

sessionInfo()

# Data Structures #

cats <- data.frame(coat=c("calico","black","tabby"),
                   weight=c(2.1, 5.0, 3.2),
                   likes_strings=c(1, 0, 1))

cats

# save a csv file #
write.csv(cats, "data/feline_data.csv")

# read in a csv file from the data folder #
cats <- read.csv("data/feline_data.csv")

cats$weight

cats$weight <- cats$weight*2.2
cats$weight

cats$weight + cats$coat

class(cats$weight)
class(cats$coat)
cats$coat

class(cats)

str(cats)

num_vector <- c(1, 3, 5)
chr_vector <- c("a","b","c")
chr_vector2 <- c("d","e","f")
comb_vector <- c(chr_vector, chr_vector2)
comb_vector

num_vector2 <- c(100, 10, 20)
num_vector +num_vector2

my_series <- 1:10
my_series

seq(10)
seq(from=1, to=10, by =0.1)

my_example <- 5:8

names(my_example) <- c("a", "b","c","d")
my_example
names(my_example)

ah_vector <- 1:26
ah_vector*2
LETTERS
names(ah_vector) <- c(LETTERS)
ah_vector

# Data Frame #

gapminder <- read.csv("data/gapminder_data.csv")

str(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder) # dimensions
colnames(gapminder)

# Subsetting Data #

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c("a","b","c","d","e")
x
x[1]
x[3]
x[c(1, 3)]
x[1:4]
x[6]
x[-2]
x[-(2:4)]

head(gapminder)
head(gapminder["pop"])
head(gapminder[,5])


gapminder[3,]

gapminder[1:10, 5]

# life expectancy on line 138 #
gapminder[138,]

# select first six rows of numeric columns only #

head(gapminder)
gapminder[1:6, 3:6]
gapminder[1:6, c("pop","lifeExp","year","gdpPercap")]

albania <- gapminder[13:24, 1:6]
albania

gapminder[1:12,]
Afghanistan <- gapminder[1:12, ]
Afghanistan$gdp <- Afghanistan$pop*Afghanistan$gdpPercap
Afghanistan
write.csv(Afghanistan, "results/Afghanistan")
