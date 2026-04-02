# ============================================================
# 04_vapply.R
# vapply() and replicate() functions in R
# ============================================================

# Setup
B       <- 1:10
C       <- 5:20
my_list <- list(B, C)

# --------------------
# vapply() - Like sapply but with type safety
# FUN.VALUE specifies the expected return type/length
# --------------------
vapply(my_list, sum, FUN.VALUE = integer(1))
# Output: [1]  55 105

# --------------------
# replicate() - Repeatedly evaluate an expression
# Useful for simulations
# --------------------

# Simulate sampling distribution of the mean
# Draw 100 samples of size 10 from an exponential distribution
# and plot the histogram of sample means
hist(replicate(100, mean(rexp(10))))
# Produces a histogram showing the approximate normal distribution
# of sample means (Central Limit Theorem demonstration)
