FROM mcr.microsoft.com/cbl-mariner/distroless/minimal:2.0-nonroot
WORKDIR /
COPY argocd-ado-awi-cred-sidecar manager
# Kubernetes runAsNonRoot requires USER to be numeric
USER 65532:65532

ENTRYPOINT ["/manager"]
