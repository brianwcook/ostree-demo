FROM registry.fedoraproject.org/fedora
USER 0
RUN "dnf install -y ostree rpm-ostree skopeo selinux-policy-targeted"
RUN "rpm-ostree compose image  \
--initialize-mode=if-not-exists \
--format=registry \
../workstation-ostree-config/fedora-base.yaml \
quay.io/bcook/ostree:fedora-base-$(date +%S)"
