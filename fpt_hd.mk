PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapstartsize=5m \
       dalvik.vm.heapgrowthlimit=48m \
       dalvik.vm.heapsize=128m
       
#PRODUCT_PROPERTY_OVERRIDES += \
        tyq.debug.composition.type=gpu \
        ro.sf.lcd_density=240 \
        ro.product.uamodel= \
        persist.dsds.enabled=true \
        ro.sf.tp_type=2 \
        persist.radio.net_pref_0=0 \
        persist.radio.net_pref_1=1

# Tianyu
#PRODUCT_PROPERTY_OVERRIDES += \
        persist.sys.ty.usb.product= \
        ro.ty.sync.time.support=1 \
        ro.ty.product.version= \
        ro.ty.lcdsize= \
        ro.ty.emmc=true \
        ro.ty.supper.large.font=true \
        ro.ty.wappush=true \
        ro.ty.shortcutdial=true \
        ro.ty.unicombrowser.support=true \
        ro.ty.groupmembercopy.support=true \
        ro.ty.numberscopy.support=true

$(call inherit-product, device/qcom/common/common.mk)
$(call inherit-product-if-exists, device/fpt/hd/prebuilt/prebuilt.mk)
$(call inherit-product-if-exists, vendor/qcom/proprietary/prebuilt/msm7627a/prebuilt.mk)

PRODUCT_LOCALES := en_US vi_VN

PRODUCT_NAME := fpt_hd
PRODUCT_DEVICE := hd

#Bluetooth configuration files
PRODUCT_COPY_FILES += \
   system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf
