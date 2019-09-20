FROM rocker/binder:3.6.0
LABEL maintainer='KMo'
USER root
COPY . ${HOME}
RUN apt-get update -y\
&& apt-get install -y python3-pip\
&& pip install synapseclient\
&& R -e "install.packages('reticulate')"\
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}
RUN wget https://github.com/kelshmo/dummyDocker/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2019-08-15/')); devtools::install_deps()"
