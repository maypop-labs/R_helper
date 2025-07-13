# =============================================================================
# export_package_list
#
# Exports a text file containing all installed packages.
# =============================================================================

# --- Functions ---

script_path <- function() {
  ## 1.  Was the script run with Rscript ... --file=path ?
  cmd_args   <- commandArgs(trailingOnly = FALSE)
  file_arg   <- grep("^--file=", cmd_args, value = TRUE)
  if (length(file_arg) == 1)
    return(normalizePath(sub("^--file=", "", file_arg)))
  
  ## 2.  Was it sourced with source("path/to/file.R") ?
  if (!is.null(sys.frame(1)$ofile))
    return(normalizePath(sys.frame(1)$ofile))
  
  ## 3.  Are we inside RStudio with the file open?
  if (requireNamespace("rstudioapi", quietly = TRUE) &&
      rstudioapi::isAvailable()) {
    ctx <- rstudioapi::getSourceEditorContext()
    if (nzchar(ctx$path))
      return(normalizePath(ctx$path))
  }
  
  ## 4.  Give up politely
  stop("Cannot figure out where this script lives.")
}

# --- Script Execution ---

script_dir <- paste0(dirname(script_path()), "/")

pkgs <- installed.packages()[, "Package"]
writeLines(pkgs, paste0(script_dir, "required_packages.txt"))
