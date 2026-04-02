# ============================================================
# 02_math_functions.R
# Rounding, ceiling, floor, trunc, and round functions in R
# ============================================================

# --------------------
# ceiling() - Round up to nearest integer
# --------------------
x <- 8.7
ce_value <- ceiling(x)
print(ce_value)
# Output: [1] 9

# --------------------
# floor() - Round down to nearest integer
# --------------------
x <- 5.8
floor_value <- floor(x)
print(floor_value)
# Output: [1] 5

# --------------------
# trunc() - Truncate decimal part (towards zero)
# --------------------
x <- 4.7
trunc_value <- trunc(x)
print(trunc_value)
# Output: [1] 4

# --------------------
# round() - Round to specified number of digits
# --------------------
x <- 3.14266
rnd_value <- round(x, digits = 2)
print(rnd_value)
# Output: [1] 3.14
