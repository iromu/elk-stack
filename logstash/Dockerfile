FROM docker.elastic.co/logstash/logstash:6.1.1

# Add your logstash plugins setup here
# Example:
RUN logstash-plugin install logstash-filter-json
COPY ./config/* /usr/share/logstash/config/
COPY ./pipeline/* /usr/share/logstash/pipeline/
COPY ./template/* /usr/share/logstash/template/
