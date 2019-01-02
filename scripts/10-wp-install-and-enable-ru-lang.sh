#!/usr/bin/env bash

LANGUAGE=${LANGUAGE:-ru_RU}

if ! wp language core is-installed ${LANGUAGE}; then
	wp language core install ${LANGUAGE}
fi

wp language core activate ${LANGUAGE}
