FROM alpine

MAINTAINER CenturyLink Labs <clt-labs-futuretech@centurylink.com>
ENTRYPOINT ["/usr/src/app/image-graph.sh"]
CMD [""]

RUN apk update && apk add ruby-dev graphviz ttf-ubuntu-font-family ca-certificates
RUN gem install --no-document docker-api sinatra
RUN dot -c

ADD . /usr/src/app/
WORKDIR /usr/src/app/
