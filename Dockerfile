FROM alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base

RUN pip install awscli --upgrade --user
RUN apk --purge -v del py-pip
RUN rm -rf /var/cache/apk/*

ENV PATH=/root/.local/bin:$PATH
CMD ["/bin/sh"]
