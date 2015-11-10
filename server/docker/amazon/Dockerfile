# Based on trusted builds
FROM debian:stable

# Upgrade to the latest packages
RUN apt-get update
RUN apt-get upgrade -y

# Install build chain tools
RUN apt-get install -y git wget

# Install Python
RUN apt-get install -y python python-dev python-pip python-virtualenv

# Install Redis
RUN \
  cd /tmp && \
  wget http://download.redis.io/redis-stable.tar.gz && \
  tar xvzf redis-stable.tar.gz && \
  cd redis-stable && \
  make && \
  make install && \
  cp -f src/redis-sentinel /usr/local/bin && \
  mkdir -p /etc/redis && \
  rm -rf /tmp/redis-stable*

# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/node-latest.tar.gz && \
  tar xvzf node-latest.tar.gz && \
  rm -f node-latest.tar.gz && \
  cd node-v* && \
  ./configure && \
  CXX="g++ -Wno-unused-local-typedefs" make && \
  CXX="g++ -Wno-unused-local-typedefs" make install && \
  cd /tmp && \
  rm -rf /tmp/node-v* && \
  PROFILE="/root/.bash_profile" && \
  echo '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> $PROFILE

# Define mountable directories
VOLUME ["/opt/pssst"]

# Define working directory
WORKDIR /opt/pssst

# Install Pssst
RUN \
  cd /tmp && \
  git clone https://github.com/pssst/pssst && \
  git clone https://github.com/pssst/pssst-config && \
  cp -f pssst-config/amazon/t2.micro.conf /etc/redis/redis.conf && \
  mv pssst/server/* /pssst && \
  rm -rf pssst pssst-config && \
  cd /opt/pssst && \
  npm install

# Expose ports.
EXPOSE 62421

# Define default command.
CMD ["redis-server", "/etc/redis/redis.conf", "&", "node", "start"]
