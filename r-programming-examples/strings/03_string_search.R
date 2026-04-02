# ============================================================
# 03_string_search.R
# Pattern matching with grep() and abbreviation with abbreviate()
# ============================================================

# --------------------
# abbreviate() - Abbreviate strings
# --------------------
streets <- c("Main", "Elm", "Riverbend", "Mario", "Frederick")

# Default abbreviations
abbreviate(streets)
# Output: Main   Elm Riverbend     Mario Frederick
#         "Mn"  "El"        "Rv"    "Mr"       "Fr"  (varies)

# Set minimum length of abbreviation
abbreviate(streets, minlength = 2)
# Output: "Mn" "El" "Rv" "Mr" "Fr"

# --------------------
# grep() - Pattern search in character vectors
# Returns indices of matching elements by default
# --------------------
x <- c("CAR", "car", "Bike", "BIKE")

# Case-sensitive search (default)
grep("car", x)
# Output: [1] 2      (only lowercase "car" matches)

grep("Bike", x)
# Output: [1] 3      (only "Bike" matches exactly)

grep("car", x, ignore.case = FALSE)
# Output: [1] 2

# Case-insensitive search
grep("Bike", x, ignore.case = TRUE)
# Output: [1] 3 4    (both "Bike" and "BIKE" match)

# Return the matching values instead of indices
grep("car", x, ignore.case = TRUE, value = TRUE)
# Output: [1] "CAR" "car"
