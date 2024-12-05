FROM rocker/verse
RUN apt update && apt install -y man-db
RUN apt update -y && apt install -y python3-pip
RUN pip3 install jupyter jupyterlab
RUN R -e "install.packages(\"tinytex\")"
RUN R -e "tinytex::install_tinytex()"