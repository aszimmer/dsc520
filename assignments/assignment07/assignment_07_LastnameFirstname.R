# Assignment: ASSIGNMENT 7
# Name: Zimmer, Alexis
# Date: 2022-07-25

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/alexi/OneDrive/Documents/GitHub/dsc520")

## Load the `data/r4ds/heights.csv` to
heights_df <- read.csv("data/r4ds/heights.csv")

# Fit a linear model
earn_lm <-  lm(earn ~ ed + race + height + age + sex, data =  heights_df)

# View the summary of your model
summary(earn_lm)

predicted_df <- data.frame(
  earn = predict(earn_lm, heights_df),
  ed=heights_df$ed, race=heights_df$race, height=heights_df$height,
  age=heights_df$age, sex=heights_df$sex
  )

## Compute deviation (i.e. residuals)
mean_earn <- mean(heights_df$earn)
## Corrected Sum of Squares Total
sst <- sum((mean_earn - heights_df$earn)^2)
## Corrected Sum of Squares for Model
ssm <- ___
## Residuals
residuals <- ___
## Sum of Squares for Error
sse <- ___
## R Squared
r_squared <- ___

## Number of observations
n <- ___
## Number of regression paramaters
p <- 8
## Corrected Degrees of Freedom for Model
dfm <- ___
## Degrees of Freedom for Error
dfe <- ___
## Corrected Degrees of Freedom Total:   DFT = n - 1
dft <- ___

## Mean of Squares for Model:   MSM = SSM / DFM
msm <- ___
## Mean of Squares for Error:   MSE = SSE / DFE
mse <- ___
## Mean of Squares Total:   MST = SST / DFT
mst <- ___
## F Statistic
f_score <- ___

## Adjusted R Squared R2 = 1 - (1 - R2)(n - 1) / (n - p)
adjusted_r_squared <- ___
