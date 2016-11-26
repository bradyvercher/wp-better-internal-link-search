#!/usr/bin/env bash

VERSION=$1
SLUG="better-internal-link-search"

if [[ "" = "$VERSION" ]]; then
	VERSION=$(sed -n "s/ \* Version:[ ]*\(.*\)/\1/p" ${SLUG}.php)
fi

mkdir -p dist
git archive --prefix="${SLUG}/" --output="dist/${SLUG}-${VERSION}.zip" HEAD
