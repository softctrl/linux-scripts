#!/bin/sh
# Just Send/Copy a file to/from a ssh server.

Help(){
        echo "Just Send/Copy a file to/from a ssh server.";
        echo "Usage: scp.sh [s/c] {path_file_name}";
        exit 1;
}

if [ $# -ne 2 ]
then
        Help
fi

case "$1" in
        s)
                # Send file to a server:
                scp -i $PEM $2 "$SSH_SERVER:~/"
        ;;
        c)
                # Copy a file trom a server:
                scp -i $PEM "$SSH_SERVER:$2" .
        ;;
        *)
                Help;
esac
