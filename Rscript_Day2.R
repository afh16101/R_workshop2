# Day 2 #

library(ggplot2)
library(dplyr)
library(tidyr)
library(knitr)

packageVersion("ggplot2")

library(gapminder)
gapminder

read.csv("data/gapminder_data.csv")
gapminder <- read.csv("data/gapminder_data.csv")

ggplot(data = gapminder, aes(x=gdpPercap,y=lifeExp,
                             color=continent))+
  geom_point(alpha=0.5)+
  scale_x_log10()+
  geom_smooth(method = "lm",size=1.5)

ggplot(data = gapminder, aes(x=year,y=lifeExp))+
  geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp,
                             color=continent)) +
  geom_point(size=2, aes(shape=continent),show.legend = FALSE) +
  scale_x_log10() +
  geom_smooth(method="lm")+
  scale_y_continuous(limits = c(0,100),breaks = seq(0,100,by=10))+
  theme_bw()+
  ggtitle("Effects of per-capita GDP on Life Expectancy")+
  xlab("GDP per Capita ($)")+
  ylab("Life Expectancy (yrs)")
ggsave(file = "life_expectancy.png")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggsave(file = "life_expectancy.pdf")

ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

ggsave(file = "life_expectancy.pdf")

ggplot(data = gapminder, aes(x = continent, y = lifeExp)) + 
  geom_boxplot()+
  geom_jitter(alpha=0.5, color="tomato")

# James Code #

number <- 37
if (number > 100) {
  print("greater than 100")
} else {
  print("less than or equal to 100")
}

# Less than <
# Equal to ==
# Not equal to !=

number <- -3
if(number > 0){
  print(1)
}else if (number < 0){
  print(-1)
}else {
  print(0)
}

number1 <- -15
number2 <- 40
if(number1 >=0 &number2>=0){
  print("both numbers are positive")
}else{
  print("at least one number was negative")
}

# Loops #

numbers <- 1:10
for (number in numbers){
  print(number)
}

for (i in 1:10){
  print(i)
}

i
letter <- "z"
letter
for (letter in c("a","b","c")){
  print(letter)
}


running_sum

# Functions #

nrow
dim
read.table

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32)*(5/9))+273.15
  return(kelvin)
}

fahr_to_kelvin(32)
fahr_to_kelvin(212)

kelvin_to_celsius <- function(temp){
  celsius <- temp - 273.15
  return(celsius)
}
kelvin_to_celsius(273.15)

# socrative q4

# Function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}

# Store the current temperature in F
temp <- 73

# Get the temperature in kelvin
kelvin_temp <- fahr_to_kelvin(temp)

# Print the temperature
print(temp)

# socrative q5

celsius_to_fahr <- function(temp){
  fahr <- (temp*(9/5)+(32))
  return(fahr)
}

celsius_to_fahr(25)

### Generating Reports ###
library(rmarkdown)
library(formatR)

