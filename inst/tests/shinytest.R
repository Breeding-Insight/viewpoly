if (isTRUE(as.logical(Sys.getenv("CI", "FALSE")))) {
  message("Skipping shinytest on CI: PhantomJS not available.")
} else {
  library(shinytest)
  shinytest::testApp("../", compareImages = FALSE)
}

