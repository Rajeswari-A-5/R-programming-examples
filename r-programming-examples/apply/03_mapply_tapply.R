# ============================================================
# 03_mapply_tapply.R
# mapply() and tapply() functions in R
# ============================================================

# --------------------
# mapply() - Multivariate version of sapply
# Applies a function with multiple arguments in parallel
# --------------------
mapply(rep, times = 1:4, x = 4:1)
# Output:
# [[1]]  [1] 4
# [[2]]  [1] 3 3
# [[3]]  [1] 2 2 2
# [[4]]  [1] 1 1 1 1

# --------------------
# tapply() - Apply function to groups defined by a factor
# Useful for computing group-level summaries on data frames
# --------------------
df <- data.frame(
  team     = c('A', 'B', 'C'),
  position = c('G', 'H', 'I'),
  points   = c(14, 19, 13),
  assists  = c(4, 3, 3)
)

# View data frame
print(df)
#   team position points assists
# 1    A        G     14       4
# 2    B        H     19       3
# 3    C        I     13       3

# Mean points per team
tapply(df$points, df$team, mean)
# Output:
#  A  B  C
# 14 19 13
