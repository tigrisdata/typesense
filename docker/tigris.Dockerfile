FROM typesense/typesense:0.24.0.rc24

RUN export DEBIAN_FRONTEND=noninteractive \
    && ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime \
    && apt-get -y update \
    && apt-get -y install \
    curl \
    ca-certificates \
    gdb \
    git \
    libc6-dbg \
    perf-tools-unstable \
    strace \
    texinfo \
    && apt-get purge 
