podman run --rm --privileged \
  --pid=host \
  -v ./output:/output \
  -v /var/lib/containers/storage:/var/lib/containers/storage \
  --privileged \
  --security-opt label=disable \
  localhost/debian-bootc:latest \
  bootc install to-disk \
    --wipe \
    --filesystem ext4 \
    --disable-selinux \
    --generic-image \
    --bootloader systemd \
    --composefs-backend \
    --via-loopback \
    /output/bootable.img
