# Practical 4
# Chisq-Distribution and t-Distribution

# Q1) X~chisq(10) 
# a) Find P(X>0.8), P(X<0.5)
# i) P(X>0.8)
p1 = 1 - pchisq(0.8, 10); p1

# ii) P(X<0.5)
# Since it is positively skewed lower.tail = 0
p2 = pchisq(0.5, 10, lower.tail = 0); p2


# b) chi sq curve
x = seq(0, 20, 0.02)
mu = mean(x); mu
var = var(x); var
p = dchisq(x,10)
plot(x,p)


# Q2) Use dchisq() function to calculate density of chisq-curve
# with df=7 for integer values 4 to 8
x = dchisq(4:8, 7); x

# Q3) Use pchisq() function to calculate area under the curve for 
# intervals [0,6] and [6,inf] of chisq-curve with df=7.
# Further check if the sum of both intervals is 1.
x = pchisq(0:6, 7);x
y = pchisq(6,7,lower.tail = 'false'); y

# Q4) X~t(8)
# a) Find P(X <= 0.8), P(X > 0.5)
# i) P(X <= 0.8)
df = 8; df
p1 = pt(0.8, df); p1

# ii) P(X > 0.5)
p2 = 1 - pt(0.5, df); p2
df = 8; df

# b) plot t-distribution curve
df = 8; df
x = seq(-4, 4, 0.1); x

pdf_values = dt(x, df); pdf_values

plot(x, pdf_values, 
     type = "l", 
     xlab = "Value", ylab = "Density", 
     main = "t-Distribution with 8 Degrees of Freedom",
     col = "blue", lwd = 2)

# optional
abline(v = 0.8, col = "red", lty = 2, lwd = 2)
abline(v = 0.5, col = "green", lty = 2, lwd = 2)

legend("topright", 
       legend = c("t-distribution", "x = 0.8", "x = 0.5"), 
       col = c("blue", "red", "green"), 
       lty = c(1, 2, 2), 
       lwd = c(2, 2, 2))


# Q5) Find values of t-distribution at X=1 having certain df=25
df = 25; df
x = 1; x
pdf = dt(x, df); pdf

# Q6) Find P(X <= 0.25), if X~t(20)
p = pt(0.25, 20); p

# Q7) Find P(X >= -0.1), if X~t(200)
p = pt(-0.1, 200, lower.tail = 'false'); p

# Q8) Find Z such that P(X < Z) = 0.25 if X~t(25)
prob = 0.25; prob
df = 25; df
Z = qt(prob, df); Z
