include ./src/config.mk
include ./src/targets.mk

INSTALL_DIR = ${HOME}/.mk

.DEFAULT_GOAL = install

.PHONY: install uninstall

${INSTALL_DIR}:
	@mkdir -p ${INSTALL_DIR}

install: ${INSTALL_DIR} ## Install mklib
	@cp ${SRCDIR}/*.mk ${INSTALL_DIR}
	@echo "mklib installed in ${INSTALL_DIR}"

uninstall: ## Uninstall mklib
	@rm -rf ${INSTALL_DIR}
	@echo "mklib uninstalled from ${HOME}"
