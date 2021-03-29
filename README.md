# android_vendor_froonix_priv
Very stupid hack… 🙄

### roomservice.xml definition
```xml
<project name="froonix/android_vendor_froonix_priv" path="vendor/lineage-priv" remote="github" revision="master" />
```

### Dump modified variables
```sh
./build/soong/soong_ui.bash --dumpvar-mode "DEFAULT_SYSTEM_DEV_CERTIFICATE"
./build/soong/soong_ui.bash --dumpvar-mode "PRODUCT_DEFAULT_DEV_CERTIFICATE"
./build/soong/soong_ui.bash --dumpvar-mode "PRODUCT_PROPERTY_OVERRIDES"
```
