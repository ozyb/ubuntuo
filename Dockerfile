FROM ubuntu:eoan
RUN apt-get update \
    && apt-get install -y curl bash unzip procps neovim \
    && echo "root:123456" | chpasswd 
RUN useradd -r -m -s /bin/bash csdn  \
    && chmod +w /etc/sudoers && echo "csdn ALL=(ALL:ALL) ALL" > /etc/sudoers && chmod -w /etc/sudoers \
    && curl -fsSL https://code-server.dev/install.sh | sh
RUN apt-get install -y sudo 
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh