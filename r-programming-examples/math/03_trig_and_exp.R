# ============================================================
# 03_trig_and_exp.R
# Trigonometric, exponential, statistical, and matrix functions
# ============================================================

# --------------------
# Trigonometric functions
# --------------------
angle <- 45
cosine  <- cos(angle)
sine    <- sin(angle)
tangent <- tan(angle)
print(cosine)   # [1] 0.525322
print(sine)     # [1] 0.8509035
print(tangent)  # [1] 1.619775

# --------------------
# exp() - Exponential function
# --------------------
x <- 2
exp_value <- exp(x)
print(exp_value)
# Output: [1] 7.389056

# --------------------
# mean() and sd() - Mean and Standard Deviation
# --------------------
values <- c(10, 20, 30, 40, 50)

mean_value <- mean(values)
print("The mean is:")
print(mean_value)
# Output: [1] 30

sd_value <- sd(values)
print("The Standard deviation is:")
print(sd_value)
# Output: [1] 15.81139

# --------------------
# matrix() - Create a matrix
# --------------------
matrix_data <- matrix(1:9, nrow = 3, ncol = 3)

# Apply sum across rows (MARGIN = 1)
row_sums <- apply(matrix_data, 1, sum)
print(row_sums)
# Output: [1] 12 15 18

# --------------------
# Larger matrix example
# --------------------
matrix_1 <- matrix(1:16, nrow = 4)
print(matrix_1)
#      [,1] [,2] [,3] [,4]
# [1,]    1    5    9   13
# [2,]    2    6   10   14
# [3,]    3    7   11   15
# [4,]    4    8   12   16

# Sum across rows
apply(matrix_1, 1, sum)
# Output: [1] 28 32 36 40

# Sum across columns
apply(matrix_1, 2, sum)
# Output: [1] 10 26 42 58

# --------------------
# Handling NA values in a matrix
# --------------------
matrix_1[2, 3] <- NA
print(matrix_1)

apply(matrix_1, 1, sum)
# Output: [1] 28 NA 36 40
