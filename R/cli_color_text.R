
# https://blog.djnavarro.net/posts/2021-04-18_pretty-little-clis/

ansi_aware_handler <- function(x, options) {
  paste0(
    "<pre class=\"r-output\"><code>",
    fansi::sgr_to_html(x = x, warn = FALSE, term.cap = "256"),
    "</code></pre>"
  )
}

knitr::knit_hooks$set(
  output = ansi_aware_handler,
  message = ansi_aware_handler,
  warning = ansi_aware_handler,
  error = ansi_aware_handler
)

options(crayon.enabled = TRUE)
