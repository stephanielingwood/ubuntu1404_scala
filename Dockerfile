FROM shippableimages/ubuntu1404_java:latest

RUN apt-get update -y && apt-get install -y curl

RUN curl -s "https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt" > /usr/bin/sbt && chmod 0755 /usr/bin/sbt

RUN FILE=`mktemp`; wget http://downloads.typesafe.com/scala/2.11.2/scala-2.11.2.deb -qO $FILE && dpkg -i $FILE && rm $FILE

CMD ["/bin/bash"]
