# Analytical Statistics

# Normal distribution
x <-rnorm(5)
x

N <-100000
a <-rnorm(N)
b <- rnorm(N)
a
b

#Vectorized approach
c <- a * b
c

?rnorm
X <- rnorm(5)
x
X <- rnorm( 5, 10, 1)
x
X <- rnorm (5, 10)
x
X <- rnorm(5, mean=10, sd = 1)
x
X <- rnorm(5, sd=1, mean=10)
x
X <- rnorm(5, sd=1)
x

# Some Simple Graphics
x <-rnorm(10)
plot(x)
hist(x)


X <- rnorm(7)
x
X <- rnorm( 7, 10, 2)
x
X <- rnorm (7, 10)
x
X <- rnorm(7, mean=10, sd =2)
x
X <- rnorm(7, sd=2, mean=10)
x
X <- rnorm(5, sd=2)
x

# Valid Function calls
x <-rnorm(80000)
head(x)
tail(x)
range(x)
summary(x)
boxplot(x, horizontal=TRUE)