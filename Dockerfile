FROM ubuntu:20.04

RUN apt update && apt upgrade -y

# Install OpenJDK 11
RUN apt install -y openjdk-11-jdk

# Install other dependencies
RUN apt install -y curl python3-pip

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

WORKDIR /app/

RUN pip3 install --upgrade pip

RUN pip3 install jupyter pyspark findspark

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]