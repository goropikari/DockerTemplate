FROM ubuntu:18.04
RUN apt-get update -y && \
apt-get install -y sudo wget flex bison build-essential csh openjdk-11-jdk libxaw7-dev less vim libc6-i386 git flex

# Add user
RUN useradd -g users -G sudo -m -s /bin/bash ubuntu && \
    echo 'ubuntu:foobar' | chpasswd
RUN echo 'Defaults visiblepw'            >> /etc/sudoers
RUN echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER ubuntu
RUN sudo mkdir /usr/class && cd /usr/class
RUN sudo chown ubuntu /usr/class
RUN sudo wget https://s3-us-west-1.amazonaws.com/prod-edx/Compilers/Misc/student-dist.tar.gz && \
    sudo mkdir /usr/class/cs143 && \
    sudo tar -xf student-dist.tar.gz -C /usr/class/cs143 && \
    cp -r /usr/class/cs143 ~ && \
    sed -i '1s/^/%option noyywrap\n/' ~/cs143/assignments/PA2/cool.flex && \
    cd ~/cs143 && \
    grep -r -l -- -lfl | xargs sed -i 's/-lfl//' && \
    echo PATH=/usr/class/cs143/bin:$PATH >> ~/.bashrc && \
    sudo mkdir /usr/class/cs143/cool && \
    sudo ln -s /usr/class/cs143/bin /usr/class/cs143/cool && \
    sudo ln -s /usr/class/cs143/lib /usr/class/cs143/cool && \
    sudo sed -i "s/exec\ \$xname \"\$@\"/exec \$xname\ -trap_file\ \/usr\/class\/cs143\/cool\/lib\/trap.handler\ \"\$@\"/" /usr/class/cs143/bin/spim

# Download grading scripts
RUN cd /home/ubuntu && \
    wget https://lagunita.stanford.edu/assets/courseware/v1/9334cd3f5353fabc5cc62247b2ae0a1d/c4x/Engineering/Compilers/asset/pa1-grading.pl && \
    wget https://lagunita.stanford.edu/assets/courseware/v1/9334cd3f5353fabc5cc62247b2ae0a1d/c4x/Engineering/Compilers/asset/pa2-grading.pl && \
    wget https://lagunita.stanford.edu/assets/courseware/v1/9334cd3f5353fabc5cc62247b2ae0a1d/c4x/Engineering/Compilers/asset/pa3-grading.pl && \
    wget https://lagunita.stanford.edu/assets/courseware/v1/9334cd3f5353fabc5cc62247b2ae0a1d/c4x/Engineering/Compilers/asset/pa4-grading.pl

WORKDIR /home/ubuntu
