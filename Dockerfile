FROM quay.io/r2rdev/jupw_bazel:0.0.6
USER root
RUN apt-get update && apt-get install curl -y && apt-get clean && rm -rf /var/lib/apt/lists/* && chown -R jovyan /nix
USER jovyan
RUN bash -c "curl -L https://nixos.org/nix/install | bash"
COPY --chown=1000:1000 . ./
ENTRYPOINT ["./entrypoint.sh"]
