#!/bin/sh
# mshello - Hello World example for Magic Scripts
#
# This is the simplest possible Magic Scripts command.
# Use it as a reference when building your own commands.

VERSION="0.1.0"
SCRIPT_NAME="mshello"

show_help() {
    echo "$SCRIPT_NAME v${MS_INSTALLED_VERSION:-$VERSION}"
    echo "Hello World example for Magic Scripts"
    echo ""
    echo "Usage:"
    echo "  $SCRIPT_NAME [name]      Print a greeting"
    echo "  $SCRIPT_NAME --help      Show this help message"
    echo "  $SCRIPT_NAME --version   Show version information"
    echo ""
    echo "Examples:"
    echo "  $SCRIPT_NAME"
    echo "  $SCRIPT_NAME World"
}

show_version() {
    echo "$SCRIPT_NAME v${MS_INSTALLED_VERSION:-$VERSION}"
}

case "$1" in
    -h|--help|help)
        show_help
        exit 0
        ;;
    -v|--version|version)
        show_version
        exit 0
        ;;
    "")
        echo "Hello, World!"
        ;;
    *)
        echo "Hello, $1!"
        ;;
esac
