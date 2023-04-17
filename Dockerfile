FROM rocker/tidyverse:4.1.3

RUN Rscript -e "install.packages('remotes')"
RUN Rscript function.R
