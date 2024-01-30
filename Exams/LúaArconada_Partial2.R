##################### EXERCISE 1 #####################

P= matrix(c(0.5,0,0.5,0,0,0.2,0,0.8,0.3,0,0.7,0,0,0.6,0,0.4),nrow=4,byrow=T)
P
Q=matrix (c(0.5,0,0.5,0,0,0.2,0.1,0.7,0.3,0,0.7,0,0,0.6,0,0.4),nrow=4,byrow=T)
Q
R=matrix(c(0.5,0,0.5,0,0,0.2,0.1,0.7,0.3,0,0.6,0.1,0,0.6,0,0.4),nrow=4,byrow=T)
R

# b)
matrixpower(P,100)
matrixpower(P,2000)

matrixpower(Q,100)
matrixpower(Q,2000)
matrixpower(Q,2500)

matrixpower(R,100)
matrixpower(R,2000)
matrixpower(R,2500)

#c)
stationary(P)
stationary(P)%*%P #check that it is stationary

stationary(Q)
stationary(Q) %*% Q #check that it is stationary

stationary(R)
stationary(R)%*%R #check that it is stationary

#d)
alpha=c(0,1,0,0)
alpha %*% matrixpower(P,1000)
alpha %*% matrixpower(Q,1000)
alpha %*% matrixpower(R,1000)

#e)
1/stationary(R)

##################### EXERCISE 2 #####################

#a)
pnorm(1,0,sqrt(5))-pnorm(-1,0,sqrt(5))

#b)
pnorm(3,0,sqrt(4))-pnorm(1,0,sqrt(4))

#c)
2*(1-pnorm(0.3, 0, sqrt(9))) - 2*(1-pnorm(0.3, 0, sqrt(5)))

#d)
1-2/pi*acos(sqrt(1/10))
2/pi*asin((sqrt(1/10)))

#e)
mu=0.03
sigma=0.2
pnorm(log(0.8),mu*7,sigma*sqrt(7))