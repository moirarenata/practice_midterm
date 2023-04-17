FROM rocker/tidyverse:4.1.3

COPY function.R .

RUN Rscript -e "install.packages('testthat', repos = c(CRAN = 'https://cran.r-project.org/'))"
RUN Rscript -e "install.packages('tidyverse', repos = c(CRAN = 'https://cran.r-project.org/'))"

RUN Rscript ./function.R
