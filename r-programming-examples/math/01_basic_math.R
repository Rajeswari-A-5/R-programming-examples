# ============================================================
# 01_basic_math.R
# Basic mathematical operations in R
# ============================================================

# --------------------
# min() - Find minimum value
# --------------------
values <- c(3, 12, 15, 1, 18, 21)
min_value <- min(values)
print(min_value)
# Output: [1] 1

# --------------------
# max() - Find maximum value
# --------------------
values <- c(3, 12, 15, 1, 18, 21)
max_value <- max(values)
print(max_value)
# Output: [1] 21

# --------------------
# sum() - Sum of all values
# --------------------
values <- c(3, 12, 15, 1, 18, 21)
total_sum <- sum(values)
print(total_sum)
# Output: [1] 70

# --------------------
# mean() - Average of all values
# --------------------
values <- c(3, 12, 15, 1, 18, 21)
avg <- mean(values)
print(avg)
# Output: [1] 11.66667

# --------------------
# sqrt() - Square root
# --------------------
x <- 36
sq_root <- sqrt(x)
print(sq_root)
# Output: [1] 6

# --------------------
# abs() - Absolute value
# --------------------
x <- -15
abs_value <- abs(x)
print(abs_value)
# Output: [1] 15
