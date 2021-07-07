#' WashU Thesis R Markdown Output Format
#'
#' @param ... Arguments passed to \code{\link[bookdown]{pdf_document2}}
#'
#' @return An R Markdown output format
#' @export
WashUthesis <- function(...) {
    template <- system.file(
        "rmarkdown", "templates", "WashUthesis", "resources",
        "WashUthesis.tex", package = "WashUthesis"
    )
    return(bookdown::pdf_document2(..., template = template))
}
