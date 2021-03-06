FROM ubuntu:eoan
RUN apt-get update \
    && apt-get install -y curl bash unzip procps neovim \
    && echo "root:123456" | chpasswd 
RUN useradd -r -m -s /bin/bash csdn  && echo "csdn:csdn" | chpasswd \
    && curl -fsSL https://code-server.dev/install.sh | sh
RUN chown -R root:root /bin/su 
ENV PORT=8080
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh