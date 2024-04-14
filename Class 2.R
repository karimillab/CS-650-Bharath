# Defining if and else
x <- 0
count <- 0

if( x>= -1 & x <=1){
  count <- count+1
} else{
  count <- count-1
}
count

# Square root of 1 to 20
for (i in 1:20){
  print(i)
}

for (m in 1:20)
  print(m)

# Creating Vectors
myFirstVector <- c( 2, 5, 7, 1, 4)
myFirstVector
typeof(myFirstVector)

mySecondVector <- c("6","5","9")
mySecondVector
typeof(mySecondVector)
print(mySecondVector)

myThirdVector <- c( T, F, T)
myThirdVector
typeof(myThirdVector)

# How about this? How manyitems in X ? In Y ?
X <- c(3,4,5)
Y <- c(X,X,X,X)
Y

# Using a range
V <- 1:10
S <- -5:30
T <- 10:1

Mix <- c( 3:6, 24, 0:4, 31, 9:7)

# Characters
n <- c("rig","run","nec")

#print n
n

A <- 1:10
A <- seq(1,10)

# seq has a nice extra argument by:
B <- seq(1,10, by=2)
C <- seq(5, -5, by=-2)

# Another possible argument length:
D <- seq(1,10, length=20)
E <- seq(0,1, length=15)

# Creating a vector using rep function
A <- rep("Hello", 5)
B <- rep(A,2)
C <- rep(1:5,4)
D1 <- rep(c("A","B","C"), 3)
D2 <- rep( c("A","B","C"), each=3)
D3 <- rep( c("A","B","C"), c(2,1,3) )

# Mixed mode to single mode
T <- c("Hello", 3, 67L, 6.8)
typeof(T)


x<-(92.12345678)
typeof(x)


# Displaying partial vectors
w <- c ("a", "b", "c", "d","e")

w[1]
w[3]
w[-1] # all except number 1
w[-3]
w[c(1,3,5)] #get specific items
w[c(-2,-4)] #same thing
w[c(-3:-5)] # remove range 3 to 5
w[1:3] #show 1 to 3

# Sorting a vector
A <- c(5,-2,51,42,-76,42)
B <- sort(A)
A
B

# Arithmetic
X <- c( 1, 2, 3)
Y <- c( 4, 5 , 6 )
Z <- X + Y
X
Y
Z
X <- Z + Y
X


# Some more math functions 
X <- c( 34,56,22,11,65,45) 
Y <- mean(X)
Z <- min(X)
W <- max(X)
S <- sum(X)
V <- prod(X)
Y
Z
W
S
V


# temperature measurement in degrees Fahrenheit F to Celsius
C <- (45-32)*5/9
C
C <- (77-32)*5/9
C
C <- (20-32)*5/9
C
C <- (19-32)*5/9
C
C <- (101-32)*5/9
C
C <- (120-32)*5/9
C
C <- (212-32)*5/9
C