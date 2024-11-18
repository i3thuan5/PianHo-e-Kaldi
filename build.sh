#!/bin/bash

set -euxo pipefail

docker build --pull \
	--no-cache-filter base \
	-f Dockerfile-debian . \
	-t ithuan/pianho-e-kaldi:debian-bookworm
docker push ithuan/pianho-e-kaldi:debian-bookworm

docker build --pull \
	--no-cache-filter base \
	-f Dockerfile-ubuntu . \
	-t ithuan/pianho-e-kaldi:ubuntu-24.04
docker push ithuan/pianho-e-kaldi:ubuntu-24.04

docker build --pull \
	--no-cache-filter base \
	-f Dockerfile-ubuntu22.04-cuda . \
	-t ithuan/pianho-e-kaldi:ubuntu22.04-cuda
docker push ithuan/pianho-e-kaldi:ubuntu22.04-cuda
