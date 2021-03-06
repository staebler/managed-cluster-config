#Project specific values
YAML_DIRECTORY?=deploy
SELECTOR_SYNC_SET_TEMPLATE_DIR?=scripts/templates/
GIT_ROOT?=$(shell git rev-parse --show-toplevel 2>&1)

# WARNING: REPO_NAME will default to the current directory if there are no remotes
REPO_NAME=managed-cluster-config

SELECTOR_SYNC_SET_DESTINATION?=${GIT_ROOT}/hack/00-osd-${REPO_NAME}.selectorsyncset.yaml.tmpl

#Script variables
GEN_SYNCSET?=scripts/generate_syncset.py -t ${SELECTOR_SYNC_SET_TEMPLATE_DIR} -y ${YAML_DIRECTORY} -d ${SELECTOR_SYNC_SET_DESTINATION} -r ${REPO_NAME}