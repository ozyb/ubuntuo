FROM ubuntu:eoan
RUN apt-get update \
    && apt-get install -y sudo curl bash unzip procps neovim \
    && echo "root:123456" | chpasswd 
RUN useradd -r -m -s /bin/bash csdn && echo "csdn:csdn" | chpasswd \
    && chmod +w /etc/sudoers && echo "csdn ALL=(ALL:ALL) ALL" > /etc/sudoers && chmod -w /etc/sudoers \
    && curl -fsSL https://code-server.dev/install.sh | sh
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh