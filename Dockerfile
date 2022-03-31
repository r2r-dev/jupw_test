FROM quay.io/r2rdev/jupw_bazel:0.0.6
COPY --chown=1000:1000 . ./
ENTRYPOINT ["./entrypoint.sh"]
