FROM jekyll/jekyll
MAINTAINER Shuhei Nomura <info@danmaq.com>
RUN apk --no-cache add openssh-client \
  && gem install redcarpet \
  && mkdir -p /root/.ssh \
  && ssh-keyscan -H github.com > /root/.ssh/known_hosts \
  && chmod 700 /root/.ssh
