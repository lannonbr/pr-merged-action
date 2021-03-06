FROM debian:stable-slim
LABEL "com.github.actions.name"="PR Merged"
LABEL "com.github.actions.description"="Check if a PR was merged"
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/lannonbr/pr-merged-action"
LABEL "maintainer"="Benjamin Lannon <benjamin@lannonbr.com>"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    jq && \
	  apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
