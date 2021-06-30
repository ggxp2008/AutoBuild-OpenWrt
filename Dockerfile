FROM scratch
EXPOSE 80

ADD openwrt-x86-64-generic-rootfs.tar.gz /
USER root
EXPOSE 80
EXPOSE 443
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
