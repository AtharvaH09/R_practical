# Practical no.6
# Chisq test and f-test

# Q1) The lifetime of bulbs(in hours) produced by a company are as follows:
# 3360, 3720, 3300, 3420, 3240, 3420, 3450, 3540, 3750, 3780
# 1) Test whether the variance is 30000 or not at 5% l.o.s.
# 2) Test whether the variance is more than 20000 at 10% l.o.s.
# 3) Test whether the variance is less than 33000 at 2% l.o.s.

x = c(3360, 3720, 3300, 3420, 3240, 3420, 3450, 3540, 3750, 3780)
var = var(x); var


# 1) H0: var = 30000
#    H1: var != 30000

test_statistic = (length(x) - 1) * var / 30000
critical_value_low <- qchisq(0.025, length(x) - 1)
critical_value_high <- qchisq(0.975, length(x) - 1)

if (test_statistic < critical_value_low || test_statistic > critical_value_high) {
    print("Reject H0: Variance is not equal to 30000 at 5% level of significance")
} else {
    print("Fail to reject H0: Variance is equal to 30000 at 5% level of significance")
}


# 2) H0: var <= 20000
#    H1: var > 20000

test_statistic = (length(data) - 1) * sample_variance / 20000
critical_value = qchisq(0.90, length(data) - 1)

if (test_statistic > critical_value) {
    print("Reject H0: Variance is more than 20000 at 10% level of significance")
} else {
    print("Fail to reject H0: Variance is less than or equal to 20000 at 10% level of significance")
}

# 3) H0: var >= 33000
#    H1: var < 33000

test_statistic <- ((length(x))- 1) * var / 33000

critical_value <- qchisq(0.02, df = (length(x)) - 1)

if (test_statistic < critical_value) {
    print("Reject H0: Variance is less than 33,000 at 2% level of significance")
} else {
    print("Fail to reject H0: Variance is greater than or equal to 33,000 at 2% level of significance")
}



# Q2) The yield of variety of mango (in tones) on two independent sample
# of 10 and 12 plants are given below
# variety A: 22,24,26,23,26,30,32,34
# variety B: 28,25,26,30,32,30,33,28,30,35
# 1) Test whether variance of variety A is not equal to variety B at 5% l.o.s.
# 2) Test whether variance of variety A is greater than variety B at 10% l.o.s.
# 3) Test whether variance of variety A is less than variety B at 1% l.o.s.

variety_A = c(22, 24, 26, 23, 26, 30, 32, 34)
variety_B = c(28, 25, 26, 30, 32, 30, 33, 28, 30, 35)

variance_A = var(variety_A)
variance_B = var(variety_B)


# 1) H0: varA = varB 
#    H1: varA != varB

test_statistic_1 = variance_A / variance_B
critical_value_low_1 = qf(0.025, df1 = length(variety_A) - 1, df2 = length(variety_B) - 1)
critical_value_high_1 = qf(0.975, df1 = length(variety_A) - 1, df2 = length(variety_B) - 1)

if (test_statistic_1 < critical_value_low_1 || test_statistic_1 > critical_value_high_1) {
    print("Reject H0: Variance of variety A is not equal to variety B at 5% level of significance")
} else {
    print("Fail to reject H0: Variance of variety A is equal to variety B at 5% level of significance")
}


# 2) H0: varA <= varB 
#    H1: varA > varB

test_statistic_2 <- variance_A / variance_B
critical_value_2 <- qf(0.90, df1 = length(variety_A) - 1, df2 = length(variety_B) - 1)

if (test_statistic_2 > critical_value_2) {
    print("Reject H0: Variance of variety A is greater than variety B at 10% level of significance")
} else {
    print("Fail to reject H0: Variance of variety A is less than or equal to variety B at 10% level of significance")
}


# 3) H0: varA >= varB 
#    H1: varA < varB

test_statistic_3 <- variance_A / variance_B
critical_value_3 <- qf(0.01, df1 = length(variety_A) - 1, df2 = length(variety_B) - 1)

if (test_statistic_3 < critical_value_3) {
    print("Reject H0: Variance of variety A is less than variety B at 1% level of significance")
} else {
    print("Fail to reject H0: Variance of variety A is greater than or equal to variety B at 1% level of significance")
}

