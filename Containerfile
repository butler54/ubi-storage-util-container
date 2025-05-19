FROM registry.access.redhat.com/ubi9/ubi:latest

RUN dnf -y install xfsprogs cryptsetup procps


COPY sidecar.sh /sidecar.sh
COPY initcontainer.sh /initcontainer.sh
RUN chmod +x /sidecar.sh /initcontainer.sh

ENTRYPOINT ["/initcontainer.sh"]
