#!/usr/bin/env bash

set -eu -o pipefail
set -x

docker build --pull -t acs-engine .

docker run -it \
	-v `pwd`:/gopath/src/github.com/RossWilliams/acs-engine \
	-w /gopath/src/github.com/RossWilliams/acs-engine \
		acs-engine /bin/bash

