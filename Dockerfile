FROM rocker/tidyverse:4.1.3

RUN Rscript -e "install.packages('testthat')"
RUN Rscript function.R
