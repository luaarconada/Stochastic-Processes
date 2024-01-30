########################## #Exercise 1 ##############
lambda=1/2
#Part a)
(punif(10,min=0,max=12))^6-(1-punif(9,min=0,max=12))^6
(10/12)^6 - (1-9/12)^6

#Part b)
pspain=3/4
pabroad=1/4
lambda_spain=lambda*pspain
lambda_abroda=lambda*pabroad
t1=5
ppois(-1,lambda_abroda*t1,lower.tail=FALSE)*dpois(0,lambda_spain*t1)

#Part c)
n=5
pgamma(9,n,lambda)-pgamma(7,n,lambda)

#Part d)
t=12
ppois(4,lambda*t)

#Part e)
t2=5
(dpois(1,lambda_spain*t2)*dpois(1,lambda_abroda*t2))/(dpois(2,lambda*t2))

#Part f)
t3=24
dpois(12,lambda*t3)

#Part g)


#Part h)
lambda2=(1/(2*pi))*(5.5*pi + 6*sin(pi/6) - 6*sin(6.5*pi/6))
lambda2
ppois(5,lambda2)


########################## #Exercise 2 ##############################
p=0.51
k=2
n=5

#Part a)
P=matrix(c(1,0,0,0,0,0,0,
           0.49,0,0.51,0,0,0,0,
           0,0.49,0,0.51,0,0,0,
           0,0,0.49,0,0.51,0,0,
           0,0,0,0.49,0,0.51,0,
           0,0,0,0,0.49,0,0.51,
           0,0,0,0,0,0,1),byrow=T,ncol=7)
P

#Part b)
ALPHA=c(0,0,1,0,0,0,0)
ALPHA%*%matrixpower(P,1)
ALPHA%*%matrixpower(P,2)
ALPHA%*%matrixpower(P,3)
ALPHA%*%matrixpower(P,4)
0+0.2401+0.2401+0.360102

#Part c)
matrixpower(P,1600)
alpha=c(0,0,1,0,0,0,0)
alpha%*%matrixpower(P,1600)
  