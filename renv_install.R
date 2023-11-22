# install.packages("renv")
library(renv)
getOptions
repos <- c(CRAN = "https://cran.ma.imperial.ac.uk/")
options(repos = repos)

?renv::install()
?renv::restore()
renv::install("shiny@1.7.5.1")

# remotes::install_github("wilkelab/cowplot")
# install.packages("colorspace", repos = "http://R-Forge.R-project.org")
# remotes::install_github("clauswilke/colorblindr")

renv::init()
renv::dependencies()

renv::snapshot()

# check library status
renv::status()

# restore lockfile, thereby reinstalling digest 0.6.19
renv::restore()

v_pkgs <- c(
  "broom",
  "countdown",
  "here",
  "janitor",
  "knitr",
  "lubridate",
  "nycflights13",
  "palmerpenguins",
  "quarto",
  "rmarkdown",
  "schrute",
  "tidymodels",
  "tidyverse"
)

renv::install(v_pkgs)

# The following required packages are not installed:
# - class       [required by ipred]
# - cluster     [required by Hmisc, rms]
# - codetools   [required by foreach, globals, multcomp]
# - foreign     [required by Hmisc]
# - KernSmooth  [required by prodlim]
# - lattice     [required by GPfit, zoo]
# - MASS        [required by ggplot2, ipred, modeldata, and 3 others]
# - Matrix      [required by MatrixModels, quantreg, recipes]
# - mgcv        [required by ggplot2]
# - nlme        [required by rms]
# - rpart       [required by Hmisc, ipred, rms]
# - survival    [required by ipred, lava, multcomp, and 4 others]

# quarto_render()

renv::remove("shiny")

# library(hexsticker)