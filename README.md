[![Build Status](https://github.com/atgreen/sample/actions/workflows/build.yml/badge.svg)](https://github.com/atgreen/sample/actions)

# sample

* Add the following repository secrets to the github.com repo, under Setting > Secrets > New Repository Secret:
  * `REGISTRY_USERNAME`: your container registry username
  * `REGISTRY_PASSWORD`: your container registry password

* Create two container repositories at `quay.io/moxielogic`:
  * `quay.io/moxielogic/sample-base`: a base image to cache quicklisp contents and additional OS packages
  * `quay.io/moxielogic/sample`: the final application
