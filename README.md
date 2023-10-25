This is very much a wip.  This demonstrates build an ostree image inside a container.

First create the regauth file.  Be careful with the build container, it embeds your credentials [for now]. Keep it local.
```
podman login --authfile regauth quay.io
```

to build the build container, simply:
```
podman build -t [tag] .
```
Create a suitable tmp dir.  The location you mount must support xattrs.  Neither overlayfs nor tmpfs support this, which is why the mount here targets a workdir in home directory.

```mkdir ~/$USER/tmp```

To run the container: 
```
podman run --mount type=bind,source=/home/$USER/tmp,target=/var/tmp,relabel=shared -it [your image id[ /bin/bash
```

Once inside the image, fire away

```./build.sh```
