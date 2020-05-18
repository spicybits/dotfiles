#!/bin/sh

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if output=$(git --git-dir "$BASEDIR/.git" --work-tree "$BASEDIR" status --porcelain) && [ -z "$output" ];
then
    git --git-dir "$BASEDIR/.git" --work-tree "$BASEDIR" pull
else
    /usr/sbin/sendmail liam@umiacs.umd.edu <<EOF
Subject: $HOSTNAME dotfiles have uncommitted changes
To: Liam Monahan <liam@umiacs.umd.edu>
From: Liam Monahan <liam@umiacs.umd.edu>

This host has uncommitted changes in $BASEDIR
EOF
fi