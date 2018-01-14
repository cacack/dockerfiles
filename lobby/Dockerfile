FROM alpine:3.7
RUN apk --update add openssh && rm -f /var/cache/apk/*
RUN ssh-keygen -A
COPY sshd_config /etc/ssh/sshd_config

RUN adduser -D bellhop \
    && passwd -d bellhop \
    && mkdir /home/bellhop/.ssh \
    && chown bellhop:nogroup /home/bellhop/.ssh \
    && chmod 700 /home/bellhop/.ssh

RUN chown -R bellhop:nogroup /etc/ssh \
    && chmod 700 /etc/ssh \
    && chmod 600 /etc/ssh/*

VOLUME /home/bellhop/.ssh
ADD harden.sh /usr/sbin/harden.sh
RUN sh /usr/sbin/harden.sh
#RUN busybox rm /bin/busybox
USER bellhop

CMD ["/usr/sbin/sshd", "-D"]
