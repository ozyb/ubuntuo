FROM ubuntu:eoan
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl wget bash unzip procps \
    && curl -fsSL https://code-server.dev/install.sh | sh
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh
