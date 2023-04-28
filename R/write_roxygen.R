#' add roxygen sekleton for function
#'
#' use roxygen sekleton in vscode
#'
#' @param fun funtion name.
#'
#' @return roxygen sekleton.
#' @export
#' @examples
#' # ADD_EXAMPLES_HERE
write_roxygen <- function(fun) {
  temp <- readLines(paste0('R/', fun, '.R'))
  unlink(paste0('R/', fun, '.'), recursive = TRUE)
  write(docthis::doc_this(fun), paste0('R/', fun, '.R'))
  write(temp, file = paste0('R/', fun, '.R'), append = TRUE)
}
