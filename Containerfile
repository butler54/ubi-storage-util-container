FROM registry.access.redhat.com/ubi10/ubi:latest

RUN dnf -y install xfsprogs cryptsetup nfs-utils


COPY sidecar.sh /sidecar.sh
COPY initcontainer.sh /initcontainer.sh
RUN chmod +x /sidecar.sh /initcontainer.sh

ENTRYPOINT ["/initcontainer.sh"]
