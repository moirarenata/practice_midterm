FROM rocker/tidyverse:4.1.3

RUN Rscript -e "install.packages('testthat', repos = c(CRAN = 'https://cran.r-project.org/'))"
RUN Rscript practice_midterm/function.R
