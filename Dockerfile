CMD ["echo","In the dockerfile now"]

MAINTAINER sanket151@aol.com

COPY .s2i/bin /usr/local/s2i
LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i

RUN chmod -R 755 /usr/local/

CMD ["echo","In the dockerfile now...."]
