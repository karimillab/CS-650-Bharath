library(ggplot2)

inc <- read.csv(file.choose())

head(inc)
data <- subset(data, select = -Total)

qplot( x=inc$X2021.2022.Actuals, y=inc$Category)
qplot( x=inc$X2022.2023.Budget.Estimates, y=inc$Category)
qplot( x=inc$X2022.2023.Revised.Estimates, y=inc$Category)
qplot( x=inc$X2023.2024.Budget.Estimates, y=inc$Category)
results = lm ( inc$Category~inc$X2021.2022.Actuals+inc$X2022.2023.Budget.Estimates+inc$X2022.2023.Revised.Estimates+inc$X2023.2024.Budget.Estimates )
results
summary(results)

# Generate a linearly relation
x <- runif(75,0,10)
x <- sort(x)
y <- 20 + 10*x + rnorm(75,0,10) 
# see it!
plot(x,y)
# Now lets do the regression
lr <- lm(y~x)
lr # print out the deducted equation
# draw the linear regression line
points( x, lr$coefficients[1] + lr$coefficients[2] * x, type="l", col=4 )

x <- runif(75,0,10) # 75 random numbers of uniform distribution
x<- sort(x)
y <- 200 + x^3 - 10 * x^2 + x + rnorm(75,0,20)
plot(x,y)
lr <- lm(y~x)
lr
poly <- loess(y~x) # Polynomial regression
fit <- predict(poly)
points(x,fit, type="l", col=2)
points(x,lr$coefficients[1] + lr$coefficients[2] * x, type="l", col=4 )


# Load the necessary library
library(ggplot2)

# Load and inspect the data
budget_data <- read.csv(file.choose()) # Open the provided budget data CSV file
head(budget_data)

# Exploratory Data Analysis (EDA)
qplot(x = budget_data$X2021.2022.Actuals, main="2021-2022 Actuals", xlab="Amount", ylab="Frequency")
qplot(x = budget_data$X2022.2023.Budget.Estimates, main="2022-2023 Budget Estimates", xlab="Amount", ylab="Frequency")
qplot(x = budget_data$X2022.2023.Revised.Estimates, main="2022-2023 Revised Estimates", xlab="Amount", ylab="Frequency")
qplot(x = budget_data$X2023.2024.Budget.Estimates, main="2023-2024 Budget Estimates", xlab="Amount", ylab="Frequency")

# Create a hypothetical outcome variable
budget_data$Outcome <- ifelse(budget_data$X2021.2022.Actuals > 200000, 1, 0)

# Initial logistic regression model
Budget_logistic1 <- glm(Outcome ~ X2021.2022.Actuals + X2022.2023.Budget.Estimates +
                          X2022.2023.Revised.Estimates + X2023.2024.Budget.Estimates,
                        data = budget_data, family = binomial(link = "logit"))
summary(Budget_logistic1)

# Refined logistic regression model based on significant predictors
# Assuming X2021.2022.Actuals and X2022.2023.Budget.Estimates are significant
Budget_logistic2 <- glm(Outcome ~ X2021.2022.Actuals + X2022.2023.Budget.Estimates,
                        data = budget_data, family = binomial(link = "logit"))
summary(Budget_logistic2)

