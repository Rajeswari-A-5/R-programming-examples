# ============================================================
# 04_string_substr.R
# Substring extraction/replacement and string splitting in R
# ============================================================

# --------------------
# substr() - Extract or replace a fixed substring
# --------------------
alphabet <- paste(LETTERS, collapse = "")

# Extract 18th character
substr(alphabet, start = 18, stop = 18)
# Output: [1] "R"

# Extract 18th through 24th characters
substr(alphabet, start = 18, stop = 24)
# Output: [1] "RSTUVWX"

# Replace characters 19–24 with 'R'
substr(alphabet, start = 19, stop = 24) <- "RRRRRR"
alphabet
# Output: [1] "ABCDEFGHIJKLMNOPQRRRRRRRYZ"

# --------------------
# substring() - More flexible; supports recursive extraction
# --------------------
alphabet <- paste(LETTERS, collapse = "")

# Extract from 18th character to end
substring(alphabet, first = 18)
# Output: [1] "RSTUVWXYZ"

# Recursive extraction: start positions 18 to 24
substring(alphabet, first = 18:24)
# Output: [1] "RSTUVWXYZ" "STUVWXYZ" "TUVWXYZ" "UVWXYZ" "VWXYZ" "WXYZ" "XYZ"

# Recursive: varying start and stop positions
substring(alphabet, first = 1:5, last = 3:7)
# Output: [1] "ABC" "BCD" "CDE" "DEF" "EFG"

# --------------------
# substring() replacement
# --------------------
s <- "Hello, world!"
substring(s, first = 8) <- "universe"
s
# Output: [1] "Hello, univer"   (replacement is truncated to original length)

# --------------------
# Extracting last N characters using nchar()
# --------------------
s <- "Hello, world!"
substring(s, nchar(s) - 6 + 1, nchar(s))
# Output: [1] "world!"

# --------------------
# strsplit() - Split strings into parts
# --------------------

# Split by space
z <- "The day after I will take a break and drink a beer."
strsplit(z, split = " ")
# Output: [1] "The"   "day"   "after" "I"     "will"  "take"  "a"  "break"
#          [9] "and"   "drink" "a"     "beer."

# Split by delimiter
a <- "Alabama-Alaska-Arizona-Arkansas-California"
strsplit(a, split = "-")
# Output: [1] "Alabama" "Alaska" "Arizona" "Arkansas" "California"

# unlist() flattens the resulting list to a plain character vector
unlist(strsplit(a, split = "-"))
# Output: [1] "Alabama" "Alaska" "Arizona" "Arkansas" "California"

# --------------------
# Extract specific substring
# --------------------
substring("Hello, world!", 8, 12)
# Output: [1] "world"

# --------------------
# strsplit() on a data-like string
# --------------------
df <- "R is the statistical analysis language"
strsplit(df, split = " ")
# Output: [1] "R" "is" "the" "statistical" "analysis" "language"

df2 <- "get%better%every%day"
strsplit(df2, split = "%")
# Output: [1] "get" "better" "every" "day"
