CMD ["echo","In the dockerfile now"]

MAINTAINER sanket151@aol.com

COPY .s2i/bin /usr/local/s2i
LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i
RUN echo "Starting change ownership"
RUN chmod -R 755 /usr/local/
RUN echo "Invoking pip install for the requirements"
RUN RUN pip install -r requirements.txt

CMD ["echo","In the dockerfile now...."]
