FROM ubuntu:eoan
RUN apt-get update 
RUN apt-get upgrade -y 
RUN apt-get install -y curl bash unzip procps 
ADD configure.sh /configure.sh 
RUN chmod +x /configure.sh
CMD /configure.sh