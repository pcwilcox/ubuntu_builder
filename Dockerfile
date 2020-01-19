FROM    ubuntu:bionic
RUN     apt-get -yq update && \
        apt-get install -qy --fix-missing \
            apt-utils \
            build-essential \
            make \
            git && \
        apt-get -yq autoremove && \
        apt-get clean -y && \
        rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
