.PHONY: init clean print-% help

${OUTDIR}:
	@mkdir ${OUTDIR}

init: ${OUTDIR} ## Create output directory

clean: ## Remove output directory
	@rm -rf ${OUTDIR}

print-%: ## Print the value of [VARIABLE]: replace [%] with [VARIABLE]
	@echo $*=$($*)

help: ## Show this help message
	$(info Usage: make <command> [ARGUMENT1=value1] [ARGUMENT2=value2])
	$(info Commands:)
	@awk '/^[a-zA-Z\-\_%0-9]+:/ { \
		cnt = sub( /^## /, "", desc ); \
		if(cnt == 0) { \
			desc = $$0; \
			cnt = sub( /^[^:]*:.* ## /, "", desc ); \
		} \
		if (cnt) print $$1 "\t" desc; \
	} \
	{ desc = $$0 }' \
	$(MAKEFILE_LIST) | column -ts $$'\t' | \
	grep --color '^[^ ]*'
