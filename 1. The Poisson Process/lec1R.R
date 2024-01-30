########################################################
1+1

########################################################
1 - ppois(65, 2*30)

########################################################
help(ppois)
dpois(18, 2*10) * dpois(52, 5*10)

########################################################
pgamma(60, 4, 1/15) - pgamma(55, 4, 1/15)

########################################################
#Simulate arriving times of a Poisson process
t <- 10
lambda <- 1
N <- rpois(1, lambda * t)
unifs <- runif(N, 0, t)
arrivals <- sort(unifs)
arrivals

########################################################
1 - ppois(399, 387.5)

########################################################
#Simulate bus waiting time
mytime <- 50
lambda <- 1/10
trials <- 100000
simlist <- numeric(trials)
for (i in 1:trials) {
  N <- rpois(1, 300*lambda)
  arrivals <- sort(runif(N, 0, 300))
  wait <- arrivals[arrivals > mytime][1] - mytime
  simlist[i] <- wait
}
mean(simlist)

########################################################
1 - ppois(399, 387.5)
########################################################