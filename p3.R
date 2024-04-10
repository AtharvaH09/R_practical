# Practical no.3 
# Normal Distribution

# Q1) Let X~N(50,100). Find P(X<=70), P(X>65), P(X<=30), P(35<X<60), P(40<X<50)
mean = 50; mean
var = 100; var

# Since standard deviation is square root of variance(var):
sd = sqrt(var); sd

# now, (i) P(X<=70):
P1 = pnorm(70, mean, sd); P1

# (ii) P(X>65):
ptemp = pnorm(65, mean, sd); ptemp
P2 = 1 - ptemp; P2

# (iii) P(X<=30):
P3 = pnorm(30, mean, sd); P3

# (iv) P(35<X<60):
Pt1 = pnorm(60, mean, sd); Pt1
Pt2 = pnorm(35, mean, sd); Pt2
P4 = Pt1 - Pt2; P4

# (v) P(40<X<50):
Pt1 = pnorm(50, mean, sd); Pt1
Pt2 = pnorm(40, mean, sd); Pt2
P5 = Pt1 - Pt2; P5


# Q2) Let X~N(160,400). Find K1 and K2, 
# such that P(X<K1)= 0.6 & P(X>K2) = 0.8
mean = 160; mean
var = 400; var
sd = sqrt(var); sd

# (i) P(X<K1)= 0.6
p = 0.6; p
K1 = qnorm(p, mean, sd); K1

# (ii) P(X>K2) = 0.8
p = 0.8; p
q = 1 - 0.8; q
K2 = qnorm(q, mean, sd); K2


# Q3) If X~N(2, 1.5). Find:
# P(X <= 0.8) & P(X > 0.5)
mean = 2; mean
var = 1.5; var
sd = sqrt(var); sd

# (i) P(X <= 0.8):
P1 = pnorm(0.8, mean, sd); P1

# (ii) P(X > 0.5):
P2 = 1 - pnorm(0.5, mean, sd); P2


# Q4) If X~N(0,1). Find:
# P(X <= 0.8) & P(X > 0.5)
mean = 0; mean
var = 1; var
sd = sqrt(var); sd

# (i) P(X <= 0.8):
P1 = pnorm(0.8, mean, sd); P1

# (ii) P(X > 0.5):
P2 = 1 - pnorm(0.5, mean, sd); P2


# Q5) Plot Normal Distribution Curve
x = seq(-2,6,0.02)
p = dnorm(x,2,sqrt(1.5))
