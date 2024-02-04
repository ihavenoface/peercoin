#!/bin/bash

/root/.config/guix/current/bin/guix-daemon --build-users-group=guixbuild &
#export FORCE_DIRTY_WORKTREE=true
#export HOSTS="${INPUT_HOST}"
export SUBSTITUTE_URLS="${INPUT_SUBSTITUTE_URLS}"
echo $SUBSTITUTE_URLS
env FORCE_DIRTY_WORKTREE=true HOSTS="${INPUT_HOST}" ./contrib/guix/guix-build
#source "contrib/guix/libexec/prelude.bash"
#echo "outdir=${OUTDIR_BASE:-${VERSION_BASE}/output}/${INPUT_HOST}" >> $GITHUB_OUTPUT
