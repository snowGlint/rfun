#' create a package project
#'
#' A function to create a package project combining common process in my own
#' package development
#'
#' @param path project path.
#' @param author used for MIT license.
#'
#' @return Rpackages project
#' @export
#' @examples
#' # ADD_EXAMPLES_HERE
create_package <- function(path, author) {
  usethis::create_package(path)
  usethis::use_mit_license(author)
  usethis::use_readme_rmd()
}