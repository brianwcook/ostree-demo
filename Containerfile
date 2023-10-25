
# file creates a container which can be used as a build environment for rpm-ostree image compose

FROM registry.fedoraproject.org/fedora-minimal

RUN mkdir -p /root/ostree-demo

# because user must be root to build
USER 0

# installs deps
RUN microdnf install -y git ostree rpm-ostree skopeo selinux-policy-targeted podman skopeo


# add regauth
COPY regauth /root/ostree-demo/regauth

# a sample build for convenience
COPY build.sh /root/ostree-demo/build.sh

WORKDIR /root
RUN git clone https://pagure.io/workstation-ostree-config.git

WORKDIR /root



