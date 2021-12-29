FROM alpine

RUN apk --update add tar curl bash g++ make

# Install Litmus
RUN curl http://www.webdav.org/neon/litmus/litmus-0.13.tar.gz --create-dirs --output /tmp/litmus/litmus.tar

RUN tar -xvf /tmp/litmus/litmus.tar && \
    rm /tmp/litmus/litmus.tar && \
    mv litmus-0.13 litmus && \
    cd /litmus && \
    ./configure && \
    make install
