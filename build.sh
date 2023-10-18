#rpm-ostree compose image  \
#--initialize-mode=if-not-exists \
#--format=registry \
#../workstation-ostree-config/fedora-base.yaml \
#quay.io/bcook/ostree:fedora-base-$(date +%S)

rpm-ostree compose image \
--initialize-mode if-not-exists \
--format registry --authfile ./regauth \
../workstation-ostree-config/fedora-base.yaml \
quay.io/bcook/ostree:fedora-base-$(date +%s)

