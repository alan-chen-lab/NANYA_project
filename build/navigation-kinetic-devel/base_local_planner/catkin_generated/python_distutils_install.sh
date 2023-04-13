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

echo_and_run cd "/home/c01/naya_navigation/src/navigation-kinetic-devel/base_local_planner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/c01/naya_navigation/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/c01/naya_navigation/install/lib/python2.7/dist-packages:/home/c01/naya_navigation/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/c01/naya_navigation/build" \
    "/usr/bin/python2" \
    "/home/c01/naya_navigation/src/navigation-kinetic-devel/base_local_planner/setup.py" \
    build --build-base "/home/c01/naya_navigation/build/navigation-kinetic-devel/base_local_planner" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/c01/naya_navigation/install" --install-scripts="/home/c01/naya_navigation/install/bin"
