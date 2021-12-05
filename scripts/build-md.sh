#!/usr/bin/env bash

set -e

lang=$1
if [ -z "${lang}" ]; then
	lang=$(cut -d '_' -f 1 <<<"$LANG")
fi

dir=$(readlink -e $(dirname $0)/../)

function build_md {
	local lang=$1
	if [ ! -e "${dir}/src/${lang}/main.tex" ]; then
		echo "$(basename $0): ${lang} is not a compatible language" >&2
		exit 1
	fi

	cd "${dir}/src/${lang}"
	mkdir -p "${dir}/out/"
	pandoc -d .pandoc.yml --output="${dir}/out/${lang}.md"
}

if [ "${lang}" = "all" ]; then
	for name in $(find "${dir}/src" -maxdepth 1 -mindepth 1 -type d -exec basename {} \;); do
		echo "Building ${name}"
		build_md "${name}"
	done
else
	build_md "${lang}"
fi
