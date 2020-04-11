# This Dockerfile is based on https://gist.github.com/unkmas/f28ebb42b40d70db70fb9f337e10103a

FROM openjdk:8

RUN apt-get update && \
    apt-get install -y libxrender1 libxtst6 libxi6 less locate vim curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN cd /usr/local && \
    curl -O "https://lift.cs.princeton.edu/java/linux/lift-cli.zip" && \
    unzip lift-cli.zip && \
    rm lift-cli.zip

ARG ALGS_USER="algs4"
ARG ALGS_UID="1000"
ARG ALGS_GID="100"

ENV SHELL=/bin/bash \
    ALGS_USER=$ALGS_USER \
    ALGS_UID=$ALGS_UID \
    ALGS_GID=$ALGS_GID

ENV HOME=/home/$ALGS_USER

RUN useradd -m -s /bin/bash -N -u $ALGS_UID $ALGS_USER

USER $ALGS_UID
WORKDIR $HOME

# Test CollidingDisks
RUN mkdir CollidingDisks && \
    cd CollidingDisks && \
    curl -O "https://algs4.cs.princeton.edu/code/CollidingDisks.java" && \
    javac-algs4 CollidingDisks.java

COPY entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["/bin/bash", "/app/entrypoint.sh"]
CMD ["/bin/bash"]
