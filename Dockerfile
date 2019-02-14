FROM rocker/r-base

RUN apt-get update -qq && apt-get install -y \
git-core \
libssl-dev \
libglpk-dev \
libcurl4-gnutls-dev

  
RUN R -e 'install.packages(c("PortfolioAnalytics"))'
RUN R -e 'install.packages(c("quantmod"))'
RUN R -e 'install.packages(c("PerformanceAnalytics"))'
RUN R -e 'install.packages(c("zoo"))'
RUN R -e 'install.packages(c("plotly"))'
RUN R -e 'install.packages(c("ROI"))'
RUN R -e 'install.packages(c("ROI.plugin.quadprog"))'
RUN R -e 'install.packages(c("ROI.plugin.glpk"))'
RUN R -e 'install.packages(c("magrittr"))'
RUN R -e 'install.packages(c("plumber"))'
RUN R -e 'install.packages(c("jsonlite"))'
RUN R -e 'install.packages(c("xts"))'

