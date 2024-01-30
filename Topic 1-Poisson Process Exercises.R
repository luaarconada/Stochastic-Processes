
setwd("~/UNIVERSIDAD/MÁSTER/2 SEMICUATRIMESTRE/PROCESOS ESTOCÁSTICOS")

####### EXAMPLE 1 (slide 10)
ppois(65,2*30,lower.tail = FALSE)
dpois(18,2*10)*dpois(52,5*10)


####### EXAMPLE 2 (slide 16)
pgamma(60, shape = 4, rate=1/15)-pgamma(55, shape = 4, rate=1/15)
pgamma(60, shape = 4, scale=15)-pgamma(55, shape = 4, scale=15) #Equivalently

n<-3
lambda<-1/15
a <- integrate(function(x) {x*((lambda^n)*(x^(n-1))*exp(-lambda*x)) / (factorial(n-1))}, 
              lower = 0, upper = 60)
a$value/pgamma(60, shape=n, rate=lambda)


####### EXAMPLE 3 (slide 20)


####### EXAMPLE 4 (slide 27)
lambda<-20; n<-60
pgamma(3, shape=n, rate=lambda)-pgamma(2.9, shape=n, rate=lambda)


####### SIMULATION OF A POISSON PROCESS (slide 30)
t <- 10
lambda <- 1/2
N <- rpois(1, lambda * t)
unifs <- runif(N, 0, t)
arrivals <- sort(unifs)
arrivals


####### THE INCIDENCE PARADOX (slide 32)
mytime <- 50
lambda <- 1/10
trials <- 10000
simlist <- numeric(trials)
for (i in 1:trials) {
  N <- rpois(1, 300*lambda)
  arrivals <- sort(runif(N, 0, 300))
  wait <- arrivals[arrivals > mytime][1] - mytime
  simlist[i] <- wait
}
mean(simlist)


####### EXAMPLE 5 (slide 34)
1-ppois(399, 387.5)
ppois(399, 387.5, lower.tail = FALSE) #Equivalently









