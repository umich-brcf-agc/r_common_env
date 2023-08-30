FROM bioconductor/bioconductor_docker:RELEASE_3_17

COPY lib_list.txt /tmp/

RUN Rscript -e "\
    lib_list <- readLines('/tmp/lib_list.txt'); \
    install.packages(lib_list);"
