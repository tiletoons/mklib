include ~/.mk/targets.mk

# default build configuration
CONFIGURATION = Release

.PHONY: check-env build-app

check-env: ## Check build environment
	@[ -n "${APP_NAME}" ] || { echo APP_NAME not set; exit 1; }
	@[ -n "${APP_SRCDIR}" ] || { echo APP_SRCDIR not set; exit 1; }
	@[ -n "${APP_OUTDIR}" ] || { echo APP_OUTDIR not set; exit 1; }

build-app: check-env init ## Build .NET application
	@msbuild ${APP_SRCDIR}/${APP_NAME}.sln -t:Build \
		-p:BaseIntermediateOutputPath=${APP_OUTDIR}/obj/ \
		-p:OutDir=${APP_OUTDIR}/bin/ \
		-p:Configuration=${CONFIGURATION}
