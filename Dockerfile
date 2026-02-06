#image called dockerfile-practice, dockerhub repo named dsci310-ia3-elainetao-docker
FROM rocker/rstudio:4.4.2

#COPY renv /home/rstudio/renv
COPY renv.lock /home/rstudio/renv.lock
COPY cowsay_test.R /home/rstudio/cowsay_test.R

WORKDIR /home/rstudio

RUN R -e "install.packages('renv')"
RUN R -e "renv::restore()"
