# ============================================================
# 02_lapply_sapply.R
# lapply() and sapply() functions in R
# ============================================================

# Setup: create a list
A       <- matrix(1:16, nrow = 4)
B       <- 1:10
C       <- 5:20
my_list <- list(A, B, C)

# --------------------
# lapply() - Apply function over a list, ALWAYS returns a list
# --------------------
lapply(my_list, sum)
# Output:
# [[1]]  [1] 136
# [[2]]  [1] 55
# [[3]]  [1] 105

# --------------------
# unlist() + lapply() - Flatten the result to a vector
# --------------------
unlist(lapply(my_list, sum))
# Output: [1] 136  55 105

# --------------------
# sapply() - Like lapply but SIMPLIFIES result to a vector/matrix
# --------------------
sapply(my_list, sum)
# Output: [1] 136  55 105

# --------------------
# sapply() with simplify = FALSE returns a list (same as lapply)
# --------------------
sapply(my_list, sum, simplify = FALSE)
# Output:
# [[1]]  [1] 136
# [[2]]  [1] 55
# [[3]]  [1] 105
