FROM rocker/rstudio

RUN R -e "install.packages('devtools')"\
&& R -e "install.packages('dplyr')"\
&& R -e "install.packages('plyr')"\
&& R -e "install.packages('synapser', repos = c('http://ran.synapse.org', 'http://cran.fhcrc.org'))"\
&& R -e "install.packages('tidyr')"
