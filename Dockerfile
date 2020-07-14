FROM ubuntu:eoan
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl wget bash unzip procps 
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh
