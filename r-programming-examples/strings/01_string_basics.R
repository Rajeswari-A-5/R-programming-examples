# ============================================================
# 01_string_basics.R
# Basic string operations in R: multiline strings, nchar, paste
# ============================================================

# --------------------
# Multiline strings with print() vs cat()
# --------------------

# print() shows escape sequences literally
message1 <- "R is awesome
It is a powerful language
R can be used in data science"

print(message1)
# Output: [1] "R is awesome\nIt is a powerful language\nR can be used in data science"

# cat() renders the actual line breaks
cat(message1)
# Output:
# R is awesome
# It is a powerful language
# R can be used in data science

# --------------------
# nchar() - Count characters in a string
# --------------------
message1 <- "Programiz"
nchar(message1)
# Output: [1] 9

# --------------------
# paste() - Concatenate strings (adds a space by default)
# --------------------
message1 <- "Programiz"
message2 <- "Pro"
paste(message1, message2)
# Output: [1] "Programiz Pro"

# paste0() joins without separator
paste0(message1, message2)
# Output: [1] "ProgramizPro"
