# Practical no.1
# Permutation and Combination in R

# 1) 10C3
choose(10,3)

# 2) 8C4
choose(8,4)

# 3) 9P3
factorial(9) / factorial(9-3)

# 4) 5P2
factorial(5) / factorial(5-2)


# Q) In a group of 6 boys and 4 girls, 4 children are to be seated.
# in how many ways can they be seated such that atleast one boy is there.
q1 = choose(6,1) * choose(4,3); q1
q2 = choose(6,2) * choose(4,2); q2
q3 = choose(6,3) * choose(4,1); q3
q4 = choose(6,4) * choose(4,0); q4

q1 + q2 + q3 + q4


# Q) From a group of 7 men & 6 women, 5 persons are to be selected 
# to form a committee. So that atleast 3 men are there in the committee,
# in how many ways can it be done.
q1 = choose(7,3) * choose(6,2); q1
q2 = choose(7,4) * choose(6,1); q2
q3 = choose(7,5) * choose(6,0); q3

q1 + q2 + q3


# Q) In how many ways can the letters of word "LEADING" be arranged
# such that the vowels should always come together.
# Solution => We will treat letters that are vowel i.e. 'E','A','I' 
# as one. The remaining four letters of the word are 'L','D','N','G'.
# Therefore there will be 5 places for the letters to be arranged.
factorial(5)*factorial(3)
