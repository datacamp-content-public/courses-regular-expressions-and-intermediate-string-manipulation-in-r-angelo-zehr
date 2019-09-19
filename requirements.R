library(remotes)
library(magrittr)
library(dplyr)
library(tidyr)
library(stringr)
library(glue)
library(stringdist)
library(fuzzyjoin)

##### Install specific package versions from CRAN #####

# install_version("ggplot2", "3.0.0")
# install_version("dplyr", "0.7.5")
# install_version("tidyr", "0.8.1")
# install_version("purrr", "0.2.5")

##### Install packages in development from GitHub #####

# install_github("nicholasehamilton/ggtern")

##### Install packages from Bioconductor

# source("https://bioconductor.org/biocLite.R")
# biocLite("GenomicRanges")

##### Include datasets in the image

data_dir <- Sys.getenv("DATADIR")
dir.create(data_dir)

#' @param x Amazon S3 URL of the dataset, as a string. 
download_data <- function(x) {
  download.file(
    x,
    file.path(data_dir, basename(x))
  )
}

# Usage is, e.g.,
# download_data(
#   "https://assets.datacamp.com/production/repositories/19/datasets/27a2a8587eff17add54f4ba288e770e235ea3325/coffee.csv"
# )
download_data(
  "https://assets.datacamp.com/production/repositories/5210/datasets/5536794469e26b7b9a4f1a6104f7315f18f6b97e/movie_db.csv"
)
download_data(
  "https://assets.datacamp.com/production/repositories/5210/datasets/4a6355eb7cd4c5b5e760d5685bf81db114619d6d/names.csv"
)
download_data(
  "https://assets.datacamp.com/production/repositories/5210/datasets/4dd827f39a836ea76f23750d325b78afc36a9669/ocr_titles.csv"
)