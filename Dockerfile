FROM ubuntu:eoan
RUN apt-get update \
    && apt-get install -y curl bash unzip procps neovim \
    && echo "123456" |passwd root \
    && curl -fsSL https://code-server.dev/install.sh | sh 
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh