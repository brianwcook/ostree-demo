
rpm-ostree compose image \
--initialize-mode=if-not-exists \
--format=ociarchive \
../workstation-ostree-config/fedora-base.yaml \
fedora-base.oci
