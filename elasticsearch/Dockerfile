FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.1

ADD config/log4j2.properties /usr/share/elasticsearch/config/
ADD config/elasticsearch.yml /usr/share/elasticsearch/config/

USER root
RUN chown elasticsearch:elasticsearch config/log4j2.properties
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch


CMD ["elasticsearch", "-E", "network.host=0.0.0.0", "-E", "discovery.zen.minimum_master_nodes=1"]

EXPOSE 9200 9300