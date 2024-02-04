#!/bin/bash

/root/.config/guix/current/bin/guix-daemon --build-users-group=guixbuild &
evn FORCE_DIRTY_WORKTREE=true ./contrib/guix/guix-build
source "contrib/guix/libexec/prelude.bash"
echo "outdir=${OUTDIR_BASE:-${VERSION_BASE}/output}/${INPUT_HOST}" >> $GITHUB_OUTPUT
