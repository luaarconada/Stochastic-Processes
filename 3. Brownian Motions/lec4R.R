pnorm(2, 0, sqrt(3))
####################################################
#Simulting Brownian Motion
n <- 1000
t <- 1
bmex <- c(0, cumsum(rnorm(n,0,sqrt(t/n))))
steps <- seq(0,t,length=n+1)
plot(steps,bmex,type="l")
#Each time the result changes because it is a different simulation
####################################################
1-pnorm(-3,0,sqrt(2))
####################################################
2*(1-pnorm(0.5, 0, 1))
####################################################
1 - (2/pi)*asin(sqrt(3/5))
####################################################
(2/pi)*acos(sqrt(3/5))
####################################################
(2/pi)*asin(sqrt(4/5)) - (2/pi)*asin(sqrt(3/5))