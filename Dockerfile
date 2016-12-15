FROM quintilesimsmj/alpine-java8-scala2.10:0.1

ENV SPARK_HOME=/opt/spark \
	PATH=$PATH:/opt/spark/bin \
	CLASSPATH=$CLASSPATH:/opt/spark/lib/*

RUN mkdir /opt && \
	cd /opt && \
	wget http://d3kbcqa49mib13.cloudfront.net/spark-1.6.3-bin-hadoop2.6.tgz && \
	tar -xzf spark-1.6.3-bin-hadoop2.6.tgz && \
	rm spark-1.6.3-bin-hadoop2.6.tgz && \
	ln -s spark-1.6.3-bin-hadoop2.6 spark && \
	rm /opt/spark/lib/spark-examples-1.6.3-hadoop2.6.0.jar
