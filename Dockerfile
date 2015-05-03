from ubuntu


RUN sudo apt-get update -y
RUN sudo apt-get install git -y
RUN sudo apt-get install mysql-server memcached golang -y

# mysql
RUN sudo service mysql


# project
RUN cd
RUN git clone https://github.com/ifapmzadu6/Hoppin-Server



