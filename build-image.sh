podman run --rm --privileged \
  --pid=host \
  -v ./output:/output \
  -v /var/lib/containers/storage:/var/lib/containers/storage \
  --privileged \
  --security-opt label=disable \
  localhost/debian-bootc:latest \
  bootc install to-disk \
  --generic-image \
  --via-loopback \
  --filesystem ext4 \
  --wipe \
  /output/debian-bootc.raw
