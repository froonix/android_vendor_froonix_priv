ifneq ($(FROONIX_PRIV_BUILD),)
    ifneq ($(FROONIX_PRIV_BUILD),false)

        # Use German as default language.
        PRODUCT_LOCALES := de_DE en_US en_GB

        # Exclude some packages from default list...
        PRODUCT_PACKAGES := $(filter-out Email Exchange2,$(PRODUCT_PACKAGES))

        # Change OTA server URL for our builds.
        PRODUCT_PROPERTY_OVERRIDES += lineage.updater.uri=https://ota.fnx.li/los/{device}/{type}/{incr}

        # Allow downgrading -- it's an OTA server decision!
        PRODUCT_PROPERTY_OVERRIDES += lineage.updater.allow_downgrading=true

        # Modify version string...
        ifneq ($(FROONIX_PRIV_BUILD_ID),)
            LINEAGE_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(FROONIX_PRIV_BUILD_ID)$(LINEAGE_EXTRAVERSION)-$(LINEAGE_BUILD)
        endif

    endif
endif
