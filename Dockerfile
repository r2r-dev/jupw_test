FROM quay.io/r2rdev/jupw_bazel:6.6.6
USER root
RUN chown -R jovyan /nix
USER jovyan
RUN bash -c "curl -L https://nixos.org/nix/install | bash"
RUN echo 'export USER=jovyan' >> /home/jovyan/.bashrc
RUN echo 'source $HOME/.nix-profile/etc/profile.d/nix.sh' >> /home/jovyan/.bashrc
COPY --chown=1000:1000 . ./
