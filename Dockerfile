FROM rocker/rstudio
COPY function.R . #copy function.R into current directory (home rstudio)

RUN Rscript -e "install.packages('testthat', repos = c(CRAN = 'https://cran.r-project.org/'))"
RUN Rscript ./function.R
