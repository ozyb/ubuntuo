FROM ubuntu:eoan
RUN apt-get update \
    && apt-get install -y sudo curl bash unzip procps neovim \
    && useradd -r -m -s /bin/bash csdn && passwd csdn \
    && chmod +w /etc/sudoers && echo "csdn ALL=(ALL:ALL) ALL" > /etc/sudoers && chmod -w /etc/sudoers
    && echo "root:123456" | chpasswd \
    && curl -fsSL https://code-server.dev/install.sh | sh
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh