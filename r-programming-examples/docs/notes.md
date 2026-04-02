# Notes & Quick Reference

## Key Differences to Remember

### `substr()` vs `substring()`
| Feature | `substr()` | `substring()` |
|---------|-----------|--------------|
| Vectorized start/stop | No | Yes |
| Recursive extraction | No | Yes |
| Replacement | Yes | Yes (truncates) |

### `lapply()` vs `sapply()` vs `vapply()`
| Function | Returns | Type-safe |
|----------|---------|-----------|
| `lapply()` | Always a list | No |
| `sapply()` | Simplified (vector/matrix/list) | No |
| `vapply()` | Vector of specified type | Yes ✅ |

> **Tip:** Prefer `vapply()` in production code — it will error early if the result type is wrong.

### `apply()` MARGIN values
- `MARGIN = 1` → apply over **rows**
- `MARGIN = 2` → apply over **columns**

### `grep()` vs `grepl()`
- `grep()` returns **indices** (or values if `value = TRUE`)
- `grepl()` returns a **logical vector** (TRUE/FALSE for each element)

## Common Pitfalls

1. **NA propagation** — `sum(c(1, 2, NA))` returns `NA`. Use `sum(..., na.rm = TRUE)` to ignore NAs.
2. **`chartr()` is positional** — `chartr("dz", "ta", x)` replaces `d→t` and `z→a` character by character; the strings must be the same length.
3. **`paste()` adds spaces** — use `paste0()` or `paste(..., sep = "")` to join without a separator.
4. **`substring()` replacement truncates** — replacing at position 8 with a longer string will not extend the original string; it is clipped to the original length.

## Useful Resources

- [R Documentation](https://www.rdocumentation.org/)
- [R for Data Science (free book)](https://r4ds.had.co.nz/)
- [CRAN Task Views](https://cran.r-project.org/web/views/)
