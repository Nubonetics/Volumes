FROM scratch

ADD .assets/LinuxBlocks1.8.1/LinuxNoEditor /opt/airsim/blocks

VOLUME /opt/airsim/blocks

CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]