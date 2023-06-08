# Dockerfile
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    package1 \
    package2

COPY script.sh /script.sh
RUN chmod +x /script.sh

CMD ["/script.sh"]
