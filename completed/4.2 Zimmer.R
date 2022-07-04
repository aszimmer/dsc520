# Assignment: ASSIGNMENT 4
# Name: Zimmer, Alexis
# Date: 2022-07-03

# Test Scores
scores <- read.csv("C:/Users/alexi/Downloads/scores.csv")

## observational units
SP = subset(scores,Section == "Sports")
head(SP)

RE = subset(scores,Section == "Regular")
head(RE)

## plot function
sports = SP[,2]
regular = RE[,2]

plot(sports, xlab = "# of Students", ylab = "Score", main = "Sports")
plot(regular, xlab = "# of Students", ylab = "Score", main = "Regular")

# Data Transformation
week_6_housing <- read_excel("C:/Users/alexi/Downloads/week-6-housing.xlsx")

## apply function
class(week_6_housing)
apply(week_6_housing, 2, median)

## aggregate function
mean <- aggregate(week_6_housing$`Sale Price`, list(week_6_housing$ctyname), mean)
mean

## plyr function
library("plyr")
summary <- ddply(week_6_housing, 
                 .(sq_ft_lot),
                 function(df) summary(df$All_Cities))
head(summary)

## check distributions
sq_ft_lot <- week_6_housing$sq_ft_lot
hist(sq_ft_lot)

sale_price <- week_6_housing$`Sale Price`
hist(sale_price)

building_grade <- week_6_housing$building_grade
hist(building_grade)


## outliers
summary(week_6_housing$`Sale Price`)
summary(week_6_housing$sq_ft_lot)

## new variables
week_6_housing$total_bath <- week_6_housing$bath_3qtr_count + week_6_housing$bath_half_count + week_6_housing$bath_full_count

week_6_housing$surrounding_sq_ft <- week_6_housing$sq_ft_lot - week_6_housing$square_feet_total_living
