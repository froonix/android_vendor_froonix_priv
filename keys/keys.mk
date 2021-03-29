# Build with our own signing keys
PRODUCT_DEFAULT_DEV_CERTIFICATE := ${HOME}/.android-certs/releasekey

# Change OTA server URL for our builds
PRODUCT_PROPERTY_OVERRIDES += lineage.updater.uri=https://ota.fnx.li/los/{device}/{type}/{incr}
