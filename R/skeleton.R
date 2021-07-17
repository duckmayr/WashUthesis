washuthesis_project_skeleton <- function(path) {
    dir.create(path)
    resources_path <- system.file(
        "rstudio", "templates", "project", "resources",
        package = "WashUthesis"
    )
    resource_files <- list.files(path = resources_path)
    file.copy(
        from = file.path(resources_path, resource_files),
        to   = file.path(normalizePath(path), resource_files)
    )
    return(TRUE)
}
