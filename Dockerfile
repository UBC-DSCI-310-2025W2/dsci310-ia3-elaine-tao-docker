#image is called rdocker-cowsay
FROM rocker/rstudio:4.4.2

COPY renv.lock /tmp/renv.lock

RUN R -e "renv::restore()"