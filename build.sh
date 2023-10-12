rpm-ostree compose image  \
--initialize-mode=if-not-exists \
--format=registry \
../workstation-ostree-config/fedora-base.yaml \
quay.io/bcook/ostree:fedora-base-$(date +%S)


