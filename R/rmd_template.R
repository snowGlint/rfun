#' Rmd file template
#'
#' A Rmd templates file selector
#'
#' @param template Rmd template.
#' @param dir where to create template file.
#'
#' @return RETURN_DESCRIPTION
#' @examples
#' # ADD_EXAMPLES_HERE
rmd_template <- function(template, dir = getwd()) {
  fpath <- system.file("extdata", "templates", template,  package = "rfun")
  invisible(
    lapply(list.files(fpath, full.names = TRUE), function(x) {
    file.copy(from = x, to = dir)
  })
  )
}
