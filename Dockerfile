FROM fedora:33
LABEL maintainer="Raphael Lehmann <raphael+docker@rleh.de>"
LABEL description="Kicad 6 (5.99 nightly build) inside docker on fedora with graphics support"

ENV TZ=Europe/Berlin

RUN adduser user
RUN usermod -aG wheel user
RUN dnf install -y dnf-plugins-core xorg-x11-drv-amdgpu mesa-dri-drivers passwd
RUN dnf copr enable -y @kicad/kicad
RUN dnf -y install kicad kicad-packages3d
