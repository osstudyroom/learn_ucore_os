FROM ubuntu:14.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      git \
      qemu-system-x86 \
      gdb \
      make \
      diffutils \
      gcc-multilib && \
    rm -rf /var/lib/apt/lists/*