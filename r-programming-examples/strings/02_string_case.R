# ============================================================
# 02_string_case.R
# Case conversion and character replacement in R
# ============================================================

# --------------------
# String comparison
# --------------------
message1 <- "Hello, World!"
message2 <- "Hola, Mundo!"
message3 <- "Hello, World!"

print(message1 == message2)   # [1] FALSE
print(message1 == message3)   # [1] TRUE

# --------------------
# toupper() and tolower() - Case conversion
# --------------------
message <- "R Programming"

message_upper <- toupper(message)
cat("Uppercase:", message_upper)
# Output: Uppercase: R PROGRAMMING

message_lower <- tolower(message)
cat("\nLowercase:", message_lower)
# Output: Lowercase: r programming

# --------------------
# chartr() - Character-by-character replacement
# --------------------

# Single character replacement
x <- "This is A string."
chartr(old = "A", new = "a", x)
# Output: [1] "This is a string."

# Multiple character replacements at once
# Replace 'd' with 't' and 'z' with 'a'
y <- "Tomorrow I plzn do lezrn zbout dexduzl znzlysis."
chartr(old = "dz", new = "ta", y)
# Output: [1] "Tomorrow I plan to learn about textual analysis."
