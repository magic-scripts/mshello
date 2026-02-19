#!/bin/sh

# mshello - Magic Scripts command

VERSION="0.1.0"
SCRIPT_NAME="mshello"

show_help() {
    echo "$SCRIPT_NAME v$VERSION"
    echo "Hello World example for Magic Scripts"
    echo ""
    echo "Usage:"
    echo "  $SCRIPT_NAME              Run the command"
    echo "  $SCRIPT_NAME --help       Show this help message"
    echo "  $SCRIPT_NAME --version    Show version information"
}

show_version() {
    echo "$SCRIPT_NAME v$VERSION"
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
esac

echo "Hello from mshello!"
