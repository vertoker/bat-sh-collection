# My old script for some project (until I learn CMake)
# !!! This script works only from current directory !!!
# It deletes resources folder and replace it with copy of origin resources
# made by vertoker

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR/.."

SOURCE="resources"
DEBUG="out/Debug"
RELEASE="out/Release"

mkdir -p -v $DEBUG
mkdir -p -v $RELEASE

rm -rf "$DEBUG/resources"
rm -rf "$RELEASE/resources"
cp -rf $SOURCE $DEBUG
cp -rf $SOURCE $RELEASE
