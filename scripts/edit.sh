#!/usr/bin/env bash

pushd ElytraProxy-Build
git rebase --interactive upstream/upstream
popd
