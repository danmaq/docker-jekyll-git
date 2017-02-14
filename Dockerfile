FROM jekyll/jekyll
MAINTAINER Shuhei Nomura <info@danmaq.com>
COPY copy/init.sh /usr/local/bin/init.sh
RUN apk --no-cache add openssh-client \
  && gem install redcarpet \
  && mkdir -p /root/.ssh \
  && ssh-keyscan -H github.com > /root/.ssh/known_hosts \
  && chmod 700 /root/.ssh \
  && chmod 700 /usr/local/bin/init.sh
ENTRYPOINT ["init.sh"]
