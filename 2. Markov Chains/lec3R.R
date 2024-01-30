########################################################
P <- matrix(c(0.51, 0.49, 0.49, 0.51), nrow=2, byrow=T)
P
P %*% P
matrixpower(P, 5)

########################################################
alpha = matrix(c(1, 0), nrow=1, byrow=T)
markov(alpha, P, 10)
states = matrix(c(0, 1), nrow=1, byrow=T)
markov(alpha, P, 10, states)

########################################################
P <- matrix(c(0.175, 0.825, 0.526, 0.474), nrow=2, byrow=T)
P
matrixpower(P, 18)

########################################################
P <- matrix(c(0.2, 0.6, 0.2, 0.1, 0.8, 0.1, 0.1, 0.6, 0.3), nrow=3, byrow=T)
P
alpha <- matrix(c(0.5, 0.5, 0), nrow=1, byrow=T) 
alpha
alpha %*% matrixpower(P, 2)
matrixpower(P, 2)

########################################################
P <- matrix(c(0.0, 0.5, 0.5, 0.0,
              0.5, 0.0, 0.5, 0.0,
              0.4, 0.0, 0.0, 0.6,
              0.0, 0.2, 0.6, 0.2), nrow=4, byrow=T)
P
matrixpower(P, 2)
alpha <- matrix(c(0.25, 0.25, 0.25, 0.25), nrow=1, byrow=T) 
alpha
alpha %*% matrixpower(P, 3)
0.248 * 0.4 * 0.6
matrixpower(P, 34)
markov(alpha, P, 20)
########################################################
########################################################
P <- matrix(c(0.1, 0.2, 0.4, 0.3,
              0.4, 0.0, 0.4, 0.2,
              0.3, 0.3, 0.0, 0.4,
              0.2, 0.1, 0.4, 0.3), nrow=4, byrow=T)
P
matrixpower(P,24)
########################################################
# simulation of gym workouts
init <- c(1/4, 1/4, 1/4, 1/4) # initial state distribution
states <- c("a", "m", "w", "y")
n <- 100; # number of simulation steps
simlist <- markov(init, P, n, states)
table(simlist)/n
n <- 10^6
simlist <- markov(init, P, n, states)
table(simlist)/n
########################################################
P <- matrix(c(0.2, 0.6, 0.2,
              0.1, 0.8, 0.1,
              0.1, 0.6, 0.3), nrow=3, byrow=T)
states <- c("rain", "snow", "clear")
stationary(P)
stationary(P) %*% P
stationary(P) %*% P - stationary(P)

eigen(P)$values
eigen(t(P))$vectors
x <- eigen(t(P))$vectors[,1]; x/sum(x)
y=eigen(t(P))$vectors[,2]; y /sum(y)
stationary(P)-x/sum(x)
########################################################
p <- 0.51;
P <- matrix(c(1, 0, 0, 0, 0, 0,
              1-p, 0, p, 0, 0, 0,
              0, 1-p, 0, p, 0, 0,
              0, 0, 1-p, 0, p, 0,
              0, 0, 0, 1-p, 0, p,
              0, 0, 0, 0, 0, 1), nrow=6, byrow=T)
P
alpha <- matrix(c(0, 0, 1, 0, 0, 0), nrow=1, byrow=T) 
alpha %*% matrixpower(P, 200)
########################################################
# pagerank.R
# Example 3.21
# PageRank probabilities

Q <- matrix(c(0,0,0,0,1/2,1/2,0,1/3,0,1/3,0,0,1/3,0,0,0,0,1/2,0,1/2,0,0,0,0,0,0,1,0,
              1/4,0,0,1/4,0,1/4,1/4,1/2,1/2,0,0,0,0,0,1/7,1/7,1/7,1/7,1/7,1/7,1/7),nrow=7,byrow=TRUE)
states <- c("a","b","c","d","e","f","g")
rownames(Q) <- states
colnames(Q) <- states
Q
A <- matrix(rep(1/7,49),nrow=7)
rownames(A) <- states
colnames(A) <- states
A
# transition matrix with damping factor p=0.85
P <- 0.85*Q + 0.15*A
pr <- stationary(P)
pr # stationary probabilities
########################################################



P=matrix(c(1,0,0,1),nrow=2,byrow=T)
P
matrixpower(P,11)
