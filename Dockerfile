FROM alpine:3.2
RUN apk add --update build-base git libssh-dev curl-dev openssh && rm -rf /var/cache/apk/*
RUN git clone https://github.com/jonaschl/SecureHoney.git --depth=1 && cd SecureHoney && sh install.sh && cd .. && rm -rf SecureHoney

CMD ["/opt/securehoney/sshpot", "-p", "22"]
