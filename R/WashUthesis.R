#' WashU Thesis R Markdown Output Format
#'
#' @param ... Arguments passed to \code{\link[bookdown]{pdf_book}}
#'
#' @return An R Markdown output format
#' @export
WashUthesis <- function(...) {
    template <- system.file(
        "rmarkdown", "templates", "WashUthesis", "resources",
        "WashUthesis.tex", package = "WashUthesis"
    )
    return(
        bookdown::pdf_book(
            ...,
            template = template,
            pandoc_args = "--top-level-division=chapter",
            toc_appendix = TRUE
        )
    )
}
