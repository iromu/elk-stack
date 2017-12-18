FROM docker.elastic.co/logstash/logstash:5.6.3

# Add your logstash plugins setup here
# Example:
RUN logstash-plugin install logstash-filter-json
COPY ./config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY ./pipeline /usr/share/logstash/pipeline
