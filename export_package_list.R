# =============================================================================
# export_package_list
#
# Exports a text file containing all installed packages.
# =============================================================================

helper_path   <- "E:/lib/R_helper/"

pkgs <- installed.packages()[, "Package"]
writeLines(pkgs, paste0(helper_path, "required_packages.txt"))