# Build the final image
FROM ghcr.io/cgwalters/fedora-silverblue:38

# Define whether to save the `rpm-ostree`'s cache
ARG SAVE_RPM_OSTREE_CACHE=false

RUN set -e; \
  rpm-ostree install \
    fedora-toolbox; \
  if [ "$SAVE_RPM_OSTREE_CACHE" == "false" ]; then \
    echo "Cleaning the cache..."; \
    rpm-ostree cleanup -m; \
    ostree container commit; \
  fi
