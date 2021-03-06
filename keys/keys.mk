ifneq ($(FROONIX_PRIV_BUILD),)
    ifneq ($(FROONIX_PRIV_BUILD),false)

        ## Allow downgrading -- it's an OTA server decision!
        #PRODUCT_PROPERTY_OVERRIDES += lineage.updater.allow_downgrading=true

        # Change OTA server URL for our builds.
        PRODUCT_PROPERTY_OVERRIDES += lineage.updater.uri=https://ota.fnx.li/los/$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)/$(shell tr '[:upper:]' '[:lower:]' <<< $(FROONIX_PRIV_BUILD_ID))-$(shell tr '[:upper:]' '[:lower:]' <<< $(LINEAGE_BUILDTYPE))/{device}/{type}/{incr}

        # Modify version string...
        ifneq ($(FROONIX_PRIV_BUILD_ID),)
            LINEAGE_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(FROONIX_PRIV_BUILD_ID)$(LINEAGE_EXTRAVERSION)-$(LINEAGE_BUILD)
        endif

        # Required for OTA & recovery!
        ifneq ($(FROONIX_CERTIFICATE),)
            PRODUCT_DEFAULT_DEV_CERTIFICATE := $(FROONIX_CERTIFICATE)
        endif

    endif
endif
