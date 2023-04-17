FROM --platform=linux/amd64 python:3.7-alpine
FROM rocker/rstudio


RUN Rscript -e "install.packages('testthat', repos = c(CRAN = 'https://cran.r-project.org/'))"
#RUN Rscript practice_midterm/function.R
