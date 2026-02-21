TOUCH_DLKM_ENABLE := true
ifeq ($(TARGET_KERNEL_DLKM_DISABLE), true)
        ifeq ($(TARGET_KERNEL_DLKM_TOUCH_OVERRIDE), false)
                TOUCH_DLKM_ENABLE := false
        endif
endif

ifeq ($(TOUCH_DLKM_ENABLE),  true)
        ifeq ($(TARGET_BOARD_PLATFORM), monaco)
                PRODUCT_PACKAGES += pt_ts.ko \
                        pt_i2c.ko \
                        pt_device_access.ko \
			 glink_comm.ko \
                        raydium_ts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), kona)
                PRODUCT_PACKAGES += focaltech_fts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), pineapple)
                PRODUCT_PACKAGES += nt36xxx-i2c.ko \
                        goodix_ts.ko \
                        atmel_mxt_ts.ko \
                        qts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), kalama)
                PRODUCT_PACKAGES += nt36xxx-i2c.ko \
                        goodix_ts.ko \
                        atmel_mxt_ts.ko \
                        qts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), blair)
                PRODUCT_PACKAGES += focaltech_tp.ko \
                        sec_command.ko \
                        himax_mmi.ko \
                        icnl9951r.ko \
                        jadard_touch.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), crow)
                PRODUCT_PACKAGES += goodix_ts.ko \
                        qts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), bengal)
                PRODUCT_PACKAGES += synaptics_tcm_ts.ko \
                        nt36xxx-i2c.ko \
			focaltech_fts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), trinket)
                PRODUCT_PACKAGES += synaptics_tcm_ts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), pitti)
                PRODUCT_PACKAGES += focaltech_fts.ko \
                        goodix_ts.ko \
                        qts.ko
        else ifeq ($(TARGET_BOARD_PLATFORM), volcano)
                PRODUCT_PACKAGES += goodix_ts.ko \
                        focaltech_fts.ko \
		        qts.ko
        else
                PRODUCT_PACKAGES += nt36xxx-i2c.ko \
                        goodix_ts.ko \
                        atmel_mxt_ts.ko \
                        synaptics_tcm_ts.ko \
                        qts.ko
        endif
endif
