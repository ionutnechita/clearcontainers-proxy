#!/bin/bash
#
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script will execute the Clear Containers Test Suite. 

set -e

# Run unit testing
sudo -E PATH=$PATH bash -c "make check"

# Execute the tests under `clearcontainers/tests` repository.
test_repo="github.com/clearcontainers/tests"
cd "${GOPATH}/src/${test_repo}"
.ci/run.sh
