#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/hri/catkin_ws/src/mhri_workspace/mhri/perception_base"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/hri/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/hri/catkin_ws/install/lib/python2.7/dist-packages:/home/hri/catkin_ws/build/perception_base/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/hri/catkin_ws/build/perception_base" \
    "/usr/bin/python" \
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/perception_base/setup.py" \
    build --build-base "/home/hri/catkin_ws/build/perception_base" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/hri/catkin_ws/install" --install-scripts="/home/hri/catkin_ws/install/bin"
