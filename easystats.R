# summarize vector
summarize_vector <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be numeric")
  }

  list(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE),
    min = min(x, na.rm = TRUE),
    max = max(x, na.rm = TRUE),
    missing = sum(is.na(x))
  )
}

# summarize df
summarize_dataframe <- function(df) {
  nums <- df[, sapply(df, is.numeric), drop = FALSE]
  out <- lapply(nums, summarize_vector)
  out
}

# plot relation
plot_relationship <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("Both inputs must be numeric")
  }

  plot(x, y, xlab = "X", ylab = "Y")
  abline(lm(y ~ x), col = "red")
}

# run shiny
run_app <- function() {
  app_dir <- system.file("shiny", package = "easyStats")
  shiny::runApp(app_dir)
}

# dataset doc
"study_hours"

