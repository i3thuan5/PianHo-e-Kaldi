#!/bin/bash

set -euxo pipefail

docker build --pull \
	-f Dockerfile-debian . \
	-t ithuan/pianho-e-kaldi:debian-bookworm
docker push ithuan/pianho-e-kaldi:debian-bookworm

docker build --pull \
	-f Dockerfile-ubuntu . \
	-t ithuan/pianho-e-kaldi:ubuntu-24.04
docker push ithuan/pianho-e-kaldi:ubuntu-24.04

docker build --pull \
	-f Dockerfile-ubuntu-cuda . \
	-t ithuan/pianho-e-kaldi:ubuntu-cuda
docker push ithuan/pianho-e-kaldi:ubuntu-cuda
