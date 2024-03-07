# shellcheck disable=SC2034
#
# This file sets shell variables for charts, sub_charts, and images which are
# common across all the netguard products.
#
# This file is sourced by prepare_package.sh, meaning variables defined here
# are accessible in each of the product-specific packageInfo.sh file.


# Define common images here, so they can be managed from one common place if they need to be updated

# These images are provided by BasePlatform
# So their tag must be aligned with versions provided by stable release of BP where products are installed over it
# URL to check versions: https://repo.cci.nokia.net/epsec-docker-releases/common/
# TODO: These need to be changed to use the following path: epsec-docker-releases.repo.cci.nokia.net/epsec/common/base_platform/release_candidate
IMAGE_CERTS_CONVERTER=epsec-docker-releases.repo.cci.nokia.net/epsec/common/base_platform/release_candidate/certs-converter:24.3.0-5889
IMAGE_CKEY_CONFIG=epsec-docker-releases.repo.cci.nokia.net/epsec/common/base_platform/release_candidate/ckey-config:24.3.0-5889
IMAGE_CMDB_CONFIG=epsec-docker-releases.repo.cci.nokia.net/epsec/common/base_platform/release_candidate/cmdb-config:24.3.0-5889
IMAGE_CRMQ_CONFIG=epsec-docker-releases.repo.cci.nokia.net/epsec/common/base_platform/release_candidate/crmq-config:24.3.0-5889

IMAGE_GRAFANA_CONFIG=epsec-docker-releases.repo.cci.nokia.net/epsec/common/base_platform/release_candidate/bp-grafana-config:24.3.0-5889

# URL to check versions: https://repo.cci.nokia.net/artifactory/csf-docker-delivered/
IMAGE_KUBECTL=csf-docker-delivered.repo.cci.nokia.net/tools/kubectl:1.28.7-rocky8-nano-20240301
IMAGE_NIAM_CURATOR=csf-docker-delivered.repo.cci.nokia.net/elk_c_cos7:5.8.4-2206.0.0
IMAGE_FLUENTD=csf-docker-delivered.repo.cci.nokia.net/elk_f_cos7:1.14.6-2206.0.0
IMAGE_GRAFANA_TINY_TOOLS=csf-docker-delivered.repo.cci.nokia.net/cpro/grafana-registry1/grafana-tiny-tools:1.16.2-11
IMAGE_NACM_BSSC_INDEXMGR=csf-docker-delivered.repo.cci.nokia.net/ofd_c_rocky8_jdk11:5.8.4-2209.3.0
IMAGE_NACM_BSSC_INDEXMGR_INIT=csf-docker-delivered.repo.cci.nokia.net/ofd_init_rocky8_jdk11:1.0.0-2209.3.0
IMAGE_NACM_BSSC_INDEXMGR_UNIFIEDLOGGING=csf-docker-delivered.repo.cci.nokia.net/ofd_f_rocky8_jdk11:1.15.3-2209.3.0

IMAGE_PROPERTYENCRYPTER=epsec/products/framework/propertyencrypter/epsec-propertyencrypter
IMAGE_AGENT=epsec/products/framework/agent/epsec-agent
IMAGE_NETACCESS=epsec/products/framework/nrs/nrs-dist/epsec-netaccess
IMAGE_NOS_DBSCHEMATOOL=epsec/products/framework/nos-dist/epsec-nos-dbschematool
IMAGE_NETACCESS_DBSCHEMATOOL=epsec/products/framework/nrs/nrs-dist/epsec-netaccess-dbschematool

IMAGE_LOGSARCHIVING=niam-docker-releases.repo.cci.nokia.net/niam3/logs-archival-api:23.0.4

NCMTPL_URL=https://repo.cci.nokia.net/epsec-generic-releases/epsec/common/base_platform/master/22.0.0-4500/ncm-templater/ncmtpl

# A function meant to be overridden for product-specific modifications:
# The function should be placed in the product-specific packageInfo.sh script.
handle_product_specific_configuration() {
    # This function is invoked via the main prepare_package.sh script.
    # It can therefore access global variables and functions defined in the main script as needed
    # Note: it is invoked AFTER the charts have been copied into the build.out area.
    log_info "Using default handle_product_specific_configuration()"
}
