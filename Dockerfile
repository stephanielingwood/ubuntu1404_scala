FROM shippableimages/ubuntu1404_java:latest

RUN mkdir /root/bin
RUN apt-get update -y && apt-get install -y curl

RUN curl -s "https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt" > /root/bin/sbt && chmod 0755 /root/bin/sbt

ENV PATH $PATH:/root/bin

RUN FILE=`mktemp`; wget http://downloads.typesafe.com/scala/2.11.2/scala-2.11.2.deb -qO $FILE && dpkg -i $FILE && rm $FILE

CMD ["/bin/bash"]
