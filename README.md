## Overview

It is a container for building with Jekyll.
Redcarpet Markdown parser and SSH are bundled.
You can connect to GitHub quickly via SSH.

## Usage

```

$ mkdir _site
$ docker run -it --rm -v `pwd`/_site:/srv/jekyll/_site \
    -e GIT_NAME='Your Name' -e GIT_EMAIL='your@email.com' \
    danmaq/jekyll-git-redcarpet ash
/srv/jekyll # cd /tmp
/tmp # git clone git@github.com:your/jekyll_site_repo.git
/tmp # cp -r /jekyll_site_repo/* /srv/jekyll
/tmp # cd /srv/jekyll
/srv/jekyll # jekyll s
```