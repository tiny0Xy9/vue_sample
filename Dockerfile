FROM centos:centos7

WORKDIR /Users/yamazakiyasutoshi/repos/vue-neta

# epel
RUN yum -y install epel-release

# utilities
RUN yum -y install wget which

# git
RUN yum -y install git

#node.js
RUN  curl -sL https://rpm.nodesource.com/setup_13.x | bash -
RUN  yum install -y nodejs

RUN npm update -g npm
RUN npm install -g n
RUN n --stable

RUN node -v
RUN npm -v

RUN npm install -g npm @vue/cli

RUN yum install -y git   

EXPOSE 9051

CMD ["/bin/sh"]