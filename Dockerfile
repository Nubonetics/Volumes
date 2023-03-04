ARG VERSION
FROM nvidia/cudagl:$VERSION

VOLUME /usr/local/nvidia

CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]
