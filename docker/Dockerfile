# Alpine Linux with OpenJDK JRE
FROM ubuntu:latest

# Copy war file
COPY springrestapi-0.0.1-SNAPSHOT.jar /springrestapi.war

RUN \
# Update
apt-get update -y && \
# Install Unzip
apt-get install unzip -y && \
# need wget
apt-get install wget -y && \
# vim
apt-get install vim -y

################################
# Install Terraform
################################

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip

# Unzip
RUN unzip terraform_0.11.11_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version

RUN apt-get install -y openjdk-8-jdk \
  && rm -rf /var/lib/apt/lists/*

RUN which java
# java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# run the app
CMD ["/usr/bin/java", "-jar", "/springrestapi.war"]