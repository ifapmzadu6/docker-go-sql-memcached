from ubuntu


RUN sudo apt-get update -y
RUN sudo apt-get install git wget -y
RUN sudo apt-get install mysql-server memcached -y

# mysql
RUN sudo service mysql

# golang
RUN wget --no-check-certificate --no-verbose https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz

RUN mkdir $HOME/go
RUN export GOPATH=$HOME/go
RUN export PATH=$PATH:$GOPATH/bin


# project
RUN cd
RUN git clone https://github.com/ifapmzadu6/Hoppin-Server
RUN cd Hoppin-Server

RUN go get github.com/bradfitz/gomemcache/memcache
RUN go get github.com/go-sql-driver/mysql

