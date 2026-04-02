# ============================================================
# 01_apply.R
# apply() function for matrices in R
# ============================================================

# --------------------
# apply() - Apply function over rows or columns of a matrix
# MARGIN = 1 means rows, MARGIN = 2 means columns
# --------------------

# Create a 4x4 matrix
matrix_1 <- matrix(1:16, nrow = 4)
print(matrix_1)
#      [,1] [,2] [,3] [,4]
# [1,]    1    5    9   13
# [2,]    2    6   10   14
# [3,]    3    7   11   15
# [4,]    4    8   12   16

# Sum of each row
apply(matrix_1, 1, sum)
# Output: [1] 28 32 36 40

# Sum of each column
apply(matrix_1, 2, sum)
# Output: [1] 10 26 42 58

# --------------------
# apply() with NA values
# --------------------
matrix_1[2, 3] <- NA

apply(matrix_1, 1, sum)
# Output: [1] 28 NA 36 40
# Note: NA propagates through sum; use na.rm = TRUE to ignore NAs:
apply(matrix_1, 1, sum, na.rm = TRUE)
# Output: [1] 28 22 36 40
