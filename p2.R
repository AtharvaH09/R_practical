# Practical no.2
# Binomial Distribution

# Q1) If X~B(10,0.06) find (i) P(X=0) (ii) P(X=2) (iii) P(X<=3) (iv) P(X>5)
n = 10
p = 0.06

# (i) P(X=0)
b1 = dbinom(0,n,p); b1 

# (ii) P(X=2)
b2 = dbinom(2,n,p); b2 

# (iii) P(X<=3)
b3 = pbinom(3,n,p); b3 

# (iv) P(X>5)
b4 = 1 - pbinom(5,n,p); b4


# Q2) The mean and variance of binomial distribution are 12 and 6.
# Find P(X=0), P(X>=1)

# since mean = np; var = npq
# npq / np = 6/12
# q = 1/2 = 0.5
# p = 1 - 0.5 = 0.5
# substitute value of p in np => n = 24

# P(X=0)
dbinom(0,24,0.5)
 
# P(X>=1)
1-pbinom(1,24,0.5)


# Q3) Draw a a random sample of size 10 from B(8,0.4). 
# Find mean and variance of sample values 
# and print results with proper headings.

n = 8
p = 0.4

r = rbinom(10, n, p); r

s_mean = mean(r); s_mean 
t_mean = n * p

s_var = var(r); s_var
t_var = n * p * (1 - p); t_var

cat("Sample Mean:", s_mean, "\n")
cat("Theoretical Mean:", t_mean, "\n")
cat("Sample Variance:", s_var, "\n")
cat("Theoretical Variance:", t_var, "\n")


# Q4) The pmf of X is given by 
# X   1     2     3     4     5     6     7     8
# P  1/34  6/34  7/34  8/34  5/34  4/34  2/34  1/34
# Write R program to find mean, variance, cumulative probabibilities
# and create a dataframe X values, probabilities and cumulative 
# probabibilities and display it.

x = c(1:8)
p = c(1,6,7,8,5,4,2,1)/34

# Calculate the mean
mean = sum(x * p)

# Calculate E[X^2]
ex2 = sum((x^2) * p)

# Calculate the variance
var = ex2 - mean^2

cp = cumsum(p); cp
df = data.frame(x,p,cp); df


# Q5)A r.v. X~B(10,0.25). Evaluate P(X=4) P(X<=5) P(2<X<8)

# P(X=4) 
dbinom(4, 10, 0.25)

# P(X<=5)
pbinom(5, 10, 0.25) 

# P(2<X<8)
p = pbinom(2, 10, 0.25)
q = pbinom(8, 10, 0.25)
p-q


# Q6) Generate 100 random observations from B(0, 0.4) and prepare
# a frequency table
randobs = rbinom(100,10,0.4)
freq_tab = table(randobs)
cat("frequency table:", freq_tab)
