FROM python:3.12.9-alpine3.21

# Install dependencies
RUN apk update \
    apk add git

# Install Python dependencies
RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]