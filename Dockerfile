FROM rocker/tidyverse:4.1.3

RUN Rscript -e "install.packages('testthat', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript function.R
