# WashUthesis <img src="man/figures/logo.png" align="right" height="139"/>

[![R-CMD-check](https://github.com/duckmayr/WashUthesis/workflows/R-CMD-check/badge.svg)](https://github.com/duckmayr/WashUthesis/actions)

**WashUthesis** is an R package that provides an R Markdown format and template, as well as a [`bookdown`](https://github.com/rstudio/bookdown) project template, for a document that conforms to the requirements for theses/dissertations at Washington University in St. Louis.

## Installation

You can install the development version from GitHub via

``` r
devtools::install_github("duckmayr/WashUthesis")
```

## Usage

After installing this package, you can create your thesis either as a standalone R Markdown document or as a bookdown project. Then you just need to fill out the YAML frontmatter fields that are pre-filled with dummy values.

### Standalone Document

You can use the included R Markdown template in RStudio by going to File \> New File \> R Markdown \> From Template, then selecting the WashU Thesis template:

![Screenshot of RStudio's R Markdown template selector](template-chooser.png)

### Bookdown Project

You can use the included `bookdown` project template in RStudio by going to File \> New Project \> New Directory, then selecting the WashU Thesis Book Project template:

![Screenshot of RStudio's project wizard](project-wizard.png)

### YAML Frontmatter Fields

All the information the template needs are pre-filled with default or dummy values in the YAML header:

![Screenshot of the template skeleton's YAML header](yaml-header.png)

For the most part, these fields are self-explanatory, though here are a few things to note:

-   The `thesis` field, if set to `true`, will replace all references to a "dissertation" in the output to a reference to a "thesis"
-   If `endnotes` are set to `true`, you will be responsible yourself for adding the command `\theendnotes` at the end of each chapter; the dissertation style guide specifies that endnotes must be placed at the end of each chapter, but unfortunately LaTeX doesn't know when a chapter ends, leading to this issue.
-   The template is hardcoded at the moment to use [`biblatex`](https://ctan.org/pkg/biblatex?lang=en)

## Contributing

There are still some optional features of theses/dissertations allowed in the dissertation guidelines that have not yet been implemented; for example, in addition to lists of tables and figures, you can add lists of abbreviations and illustrations. I would welcome the implementation of any such features by others, or bug fixes if you encounter any technical difficulties in the use of this package, or any formatting inconsistencies with the guide that may have been overlooked. Before contributing, please consult the contributing guidelines in CONTRIBUTING.md

## License

GPL3
