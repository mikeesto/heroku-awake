FROM alpine

LABEL "com.github.actions.name"="Heroku Awake"
LABEL "com.github.actions.description"="Keep a free Heroku dyno awake"
LABEL "com.github.actions.icon"="sun"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/mikeesto/github-awake"
LABEL "homepage"="http://github.com/mikeesto/github-awake"
LABEL "maintainer"="Michael Esteban"

RUN apk add --no-cache curl ca-certificates

ADD run.sh /

ENTRYPOINT ["/run.sh"]