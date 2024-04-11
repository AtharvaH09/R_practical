# Practical no.5: 
# t-test

# Q1) A sample of 13 students from government school has following scores
# in a test: 89,88,78,76,78,78,86,83,82,76,72,77,92
# Do this data support that
# i) Mean marks of students is 80? Test at 5% l.o.s.
# ii) Mean marks of students is more than 75? Test at 1% l.o.s.
# iii) Mean marks of students is less than 85? Test at 10% l.o.s.
x = c(89,88,78,76,78,78,86,83,82,76,72,77,92)

# i) H0: mu = 80
#    H1: mu != 80

tt = t.test(x, mu=80); tt

# Conclusion: Here p-value is 0.504 which is greater than l.o.s (0.05).
# Hence we do not have enough evidence to reject the H0. 
# Output also gives additional information about confidence interval
# with sample estimate of mu. Here 95% confidence interval is 77.50427, 84.80342
# which also support the decision taken from p-value as 80 is included into 
# the confidence


# ii) H0: mu <= 75
#     H1: mu > 75

tt = t.test(x, mu=75, alternative='greater', conf.level=0.99); tt

# Conclusion: Given the p-value of 0.001592, which is significantly below the 0.01 significance level,
# we reject the null hypothesis. This result supports the conclusion that the mean score of the
# students is significantly greater than 75. 
# The 99% confidence interval, which does not include 75 and starts from 78.16846,
# further validates this conclusion.
# Therefore, we have substantial evidence to claim that the average score of students is
# higher than 75, based on the data provided.


# iii) H0: mu >= 85
#      H1: mu < 85

tt = t.test(x, mu=85, alternative='less', conf.level=0.9); tt

# Conclusion: Given that the p-value is less than 0.10, we reject the null hypothesis. 
# This result supports the conclusion that the mean mark of the students is significantly less than 
# 85 at the 10% l.o.s.
# This analysis provides substantial evidence to claim that the average score of students is
# below 85, based on the data provided.



# Q2)The yield of two variety of mangoes in tons are given below:
# variety A: 22, 24, 26, 23, 30, 32, 34
# variety B: 28, 25, 26, 30, 32, 30, 33, 28, 30, 35
# i) Test whether yield of variety A not equal to B at 2% l.o.s.
# ii) Test whether the difference between yield at variety A is less than variety B by 2 tons at 5% l.o.s.
# iii) Test whether the difference between yield at variety A is more than variety B by 0.5 tons at 10% l.o.s.

varA = c(22, 24, 26, 23, 30, 32, 34)
varB = c(28, 25, 26, 30, 32, 30, 33, 28, 30, 35)

# i) H0: muA = muB
#    H1: muA != muB
t.test(varA, varB, alternative = "two.sided", conf.level = 0.98)

# Conclusion: Here, the p-value is 0.2636, which is greater than the level of significance (0.02). 
# Hence, we do not have enough evidence to reject the null hypothesis that
# the mean yields of variety A and variety B are equal.
# The output also provides additional information about the confidence interval for the
# difference in means.
# The 98% confidence interval ranges from approximately -8.08 to 3.25.
# This interval includes zero, 
# which supports the decision taken from the p-value that the mean yields of variety A and
# variety B could be similar.


# ii) H0: muA - muB >= -2
#     H1: muA - muB < -2
t.test(varA, varB, alternative = "less", mu=-2, conf.level = 0.95)

# Conclusion: Here, the p-value is 0.4214, which is greater than the level of significance (0.05).
# Hence, we do not have enough evidence to reject the null hypothesis that the difference
# in mean yields of variety A and variety B is at least -2 tons.
# The output also provides additional information about the confidence interval for the
# difference in means.
# The 95% confidence interval ranges from negative infinity to approximately 1.29.
# This interval includes values greater than -2,
# which supports the decision taken from the p-value that the difference in mean yields of
# variety A and variety B is not less than -2 tons.


# iii) H0: muA - muB <= 0.5
#      H1: muA - muB > 0.5
t.test(varA, varB, alternative = "greater", mu=0.5, conf.level = 0.9)

# Conclusion: Here, the p-value is 0.9082, which is greater than the level of significance (0.10).
# Hence, we do not have enough evidence to reject the null hypothesis that the difference in
# mean yields between variety A and variety B is less than or equal to 0.5 tons.
# The output also provides additional information about the confidence interval for the
# difference in means.
# The 90% confidence interval ranges from approximately -5.21 to infinity, which includes 0.5 tons.
# This supports the decision taken from the p-value that the difference in mean yields of variety A
# and variety B is not significantly greater than 0.5 tons.



# Q3) A new variety of health drink in the market which helps infants to increase their weight. 
# A sample of 10 babies was selected and given the above diet drink for a month.
# The weight observed before(X) and observed after(Y) the diet drink is given below:
# X: 6.6, 6.8, 6.75, 7.2, 6.75, 6.65, 6.7, 7.3, 6.9, 6.5
# Y: 6.9, 7.3, 7, 7.6, 6.85, 7.3, 6.7
# i) Examine whether there is any significant difference in weights before and after health drink at 5% l.o.s.
# ii) Examine whether weight gained after health drink is more than 0.25 kg at 1% l.o.s.
# iii) Examine whether weight gained after health drink is less than 0.5 kg at 10% l.o.s.

X = c(6.6, 6.8, 6.75, 7.2, 6.75, 6.65, 6.7, 7.3, 6.9, 6.5)
Y = c(6.9, 7.3, 7.0, 7.6, 6.85, 7.3, 6.7, 7.3, 7.0, 6.9)

# i) H0: mu_diff = 0
#    H1: mu_diff != 0
t.test(X, Y, alternative = "two.sided", paired = TRUE)

# Conclusion: Here, the p-value is 0.003736, which is less than the level of significance (0.05).
# Hence, we reject the null hypothesis that there is no significant difference in weights before
# and after consuming the health drink.
# The 95% confidence interval ranges from approximately -0.427 to -0.113, which does not include 0.
# Therefore, we conclude that there is a statistically significant difference in weights
# before and after the health drink at the 5% l.o.s.


# ii) H0: mu_gain <= 0.25
#     H1: mu_gain > 0.25

weight_gained = Y-X;
t.test(weight_gained, mu = 0.25, alternative = "greater", conf.level = 0.99)

# Conclusion: Here, the p-value is 0.3902, which is greater than the level of significance (0.01).
# Hence, we do not have enough evidence to reject the null hypothesis that the mean weight
# gain after consuming the health drink is less than or equal to 0.25 kg.
# The output also provides additional information about the confidence interval for the
# mean weight gain.
# The 99% confidence interval ranges from approximately 0.074 kg to infinity,
# which does not include 0.25 kg.
# This supports the decision taken from the p-value that the mean weight gain after
# consuming the health drink is not significantly greater than 0.25 kg at the 1% l.o.s.


# iii) H0: mu_gain >= 0.5
#      H1: mu_gain < 0.5

weight_gained = Y-X;
t.test(weight_gained, mu = 0.5, alternative = "less", conf.level = 0.9)

# Conclusion: Here, the p-value is 0.004582, which is less than the level of significance (0.10).
# Hence, we reject the null hypothesis that the mean weight gain after consuming the health
# drink is greater than or equal to 0.5 kg.
# The output also provides additional information about the confidence interval for
# the mean weight gain. The 90% confidence interval ranges from negative infinity to
# approximately 0.37 kg, which does not include 0.5 kg.
# This supports the decision taken from the p-value that the mean weight gain after consuming
# the health drink is significantly less than 0.5 kg at the 10% l.o.s.
