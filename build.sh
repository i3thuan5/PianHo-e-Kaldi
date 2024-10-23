#!/bin/bash

docker build . -t ithuan/pianho-e-kaldi:ubuntu-24.04 -f Dockerfile-ubuntu
docker push ithuan/pianho-e-kaldi:ubuntu-24.04

docker build . -t ithuan/pianho-e-kaldi:debian-bookworm -f Dockerfile-debian
docker push ithuan/pianho-e-kaldi:debian-bookworm
