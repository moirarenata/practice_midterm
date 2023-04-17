FROM rocker/rstudio

COPY function.R .

RUN Rscript -e "install.packages('testthat', repos = c(CRAN = 'https://cran.r-project.org/'))"
RUN Rscript ./function.R
