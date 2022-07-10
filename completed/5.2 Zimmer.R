# Assignment: ASSIGNMENT 5
# Name: Zimmer, Alexis
# Date: 2022-07-10

# data set
library(tidyverse)
week.6.housing <- read.csv("C:/Users/alexi/Downloads/week-6-housing.csv")

# install dplyr
install.packages("dplyr")

# GroupBy
week.6.housing_grp_reg_cat = week.6.housing %>% group_by(week.6.housing$zip5) %>% summarize((week.6.housing$Sale.Price), .groups = 'drop')

# Summarize
summarize(group_by(week.6.housing, zip5),vars(Sale.Price))

# Mutate
week_6_housing %>%
  mutate(`Price per Sq Ft` = week.6.housing$Sale.Price/week.6.housing$square_feet_total_living)

# Filter
Newer_Homes <- dplyr::filter(week.6.housing, Week.6.housing$year_built > 2010)  
View(Newer_Homes)

# Select
week.6.housing %>% select(week.6.housing$zip5)

# Arrange
week.6.housing.Sale <- arrange(week.6.housing, week.6.housing$Sale.Price)

# install purrr
install.packages("purrr")

# keep
week.6.housing <- keep(week.6.housing$zip5, function(x) length(x)== is.NULL )
unique(unlist(map(week.6.housing, length)))


# discard
week.6.housing <- discard(week.6.housing$cityname, function(x) length(x)== is.NULL )
unique(unlist(map(week.6.housing, length)))

# cbind 
week.6.housing.new <- cbind(week.6.housing$lon, week.6.housing$lat)

# rbind
# new row 
a = (7/10/2022, 100000, 1, 1, 26, R2, 111 Redmond Way, 98052, REDMOND, REDMOND, -122.1631, 47.67912,5, 1430, 4, 2, 0, 0, 2022, 0, R4, R, 2)
week.6.housing.rbind <- rbind(week.6.housing, a)

# split a string + concatenate results
str_split_fixed(week.6.housing$lon, ' ', 3)
paste(week.6.housing$lon, ' ', 3)