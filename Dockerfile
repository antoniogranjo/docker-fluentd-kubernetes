FROM fluentd

MAINTAINER Jimmi Dyson <jimmidyson@gmail.com>

RUN yum install -y gcc-c++

RUN gem install fluent-plugin-kubernetes_metadata_filter \
                fluent-plugin-forest \
                fluent-plugin-elasticsearch

ENV ES_HOST es-logging.default.svc.cluster.local
ENV ES_PORT 9200

ADD fluent.conf /etc/fluent/fluent.conf
