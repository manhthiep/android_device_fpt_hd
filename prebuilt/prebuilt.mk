
PREBUILT_DIR := device/fpt/hd/prebuilt

# prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    PREBUILT_KERNEL := $(PREBUILT_DIR)/kernel
else
    PREBUILT_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(PREBUILT_KERNEL):kernel
    
# init
PRODUCT_COPY_FILES += \
	$(PREBUILT_DIR)/init:root/init \
	$(PREBUILT_DIR)/logo.raw:root/logo.raw
    
# prebuilt kernel modules
PRODUCT_COPY_FILES += \
	$(shell find $(PREBUILT_DIR)/system/lib/modules -maxdepth 1 -type f -name '*.ko' \
    -printf '%p:system/lib/modules/%f ')

# bootanimation & shutdownanimation
PRODUCT_COPY_FILES += \
	$(PREBUILT_DIR)/system/media/bootanimation.zip:system/media/bootanimation.zip \
	$(PREBUILT_DIR)/system/media/shutdownanimation.zip:system/media/shutdownanimation.zip \
	$(PREBUILT_DIR)/system/media/LMprec_508.emd:system/media/LMprec_508.emd \
	$(PREBUILT_DIR)/system/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
	$(PREBUILT_DIR)/system/media/poweroff.mp3:system/media/poweroff.mp3 \
	$(PREBUILT_DIR)/system/media/poweron.mp3:system/media/poweron.mp3
	
PRODUCT_COPY_FILES += \
    $(PREBUILT_DIR)/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(PREBUILT_DIR)/system/etc/gps.conf:system/etc/gps.conf \
    $(PREBUILT_DIR)/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    $(PREBUILT_DIR)/system/etc/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
    $(PREBUILT_DIR)/system/etc/thermald.conf:system/etc/thermald.conf \
    $(PREBUILT_DIR)/system/etc/UserPolicy.xml:system/etc/UserPolicy.xml \
    $(PREBUILT_DIR)/system/etc/vold.fstab_use_emmc:system/etc/vold.fstab_use_emmc \
    $(PREBUILT_DIR)/system/etc/vold.fstab_use_tflash:system/etc/vold.fstab_use_tflash
    
# alarms
PRODUCT_COPY_FILES += \
	$(shell find $(PREBUILT_DIR)/system/media/audio/alarms -maxdepth 1 -type f \
    -printf '%p:system/media/audio/alarms/%f ')

# notifications
PRODUCT_COPY_FILES += \
	$(shell find $(PREBUILT_DIR)/system/media/audio/notifications -maxdepth 1 -type f \
    -printf '%p:system/media/audio/notifications/%f ')
    
# ringtones
PRODUCT_COPY_FILES += \
	$(shell find $(PREBUILT_DIR)/system/media/audio/ringtones -maxdepth 1 -type f \
    -printf '%p:system/media/audio/ringtones/%f ')



