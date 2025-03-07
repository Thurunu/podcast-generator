FROM python:3.12.9-alpine3.21

# Update dependencies
RUN apk update 
# Install git
RUN apk add git
RUN git --version

# Install Python dependencies
RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script and make it executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT [ "/entrypoint.sh" ]
