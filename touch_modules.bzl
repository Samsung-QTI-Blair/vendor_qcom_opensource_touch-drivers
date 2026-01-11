# Importing to touch module entry api from touch_modules_build.bzl to define module entried for touch drivers
load(":touch_modules_build.bzl", "touch_module_entry")

# Importing the touch driver headers defined in BUILD.bazel
touch_driver_modules = touch_module_entry([":touch_drivers_headers"])

#Including the headers in the modules to be declared
module_entry = touch_driver_modules.register

#--------------- TOUCH-DRIVERS MODULES ------------------

#define ddk_module() for qts
module_entry(
    name = "qts",
    config_option = "CONFIG_QTS_ENABLE",
    srcs = [
            "qts/qts_core.c"
    ]
)

#define ddk_module() for goodix_ts
module_entry(
    name = "goodix_ts",
    config_option = "CONFIG_TOUCHSCREEN_GOODIX_BRL",
    srcs = [
            "goodix_berlin_driver/goodix_brl_fwupdate.c",
            "goodix_berlin_driver/goodix_brl_hw.c",
            "goodix_berlin_driver/goodix_brl_i2c.c",
            "goodix_berlin_driver/goodix_brl_spi.c",
            "goodix_berlin_driver/goodix_cfg_bin.c",
            "goodix_berlin_driver/goodix_ts_core.c",
            "goodix_berlin_driver/goodix_ts_gesture.c",
            "goodix_berlin_driver/goodix_ts_inspect.c",
            "goodix_berlin_driver/goodix_ts_tools.c",
            "goodix_berlin_driver/goodix_ts_utils.c"
    ]
)

#define ddk_module() for nt36xxx
module_entry(
    name = "nt36xxx-i2c",
    config_option = "CONFIG_TOUCHSCREEN_NT36XXX_I2C",
    srcs = [
            "nt36xxx/nt36xxx_ext_proc.c",
            "nt36xxx/nt36xxx_fw_update.c",
            "nt36xxx/nt36xxx_mp_ctrlram.c",
            "nt36xxx/nt36xxx.c"
    ]
)

#define ddk_module() for focaltech_ft8203
module_entry(
    name = "focaltech_tp",
    config_option = "CONFIG_TOUCHSCREEN_FTS",
    srcs = [
			"focaltech_touch_spi/focaltech_core.c",
			"focaltech_touch_spi/focaltech_ex_fun.c",
			"focaltech_touch_spi/focaltech_ex_mode.c",
			"focaltech_touch_spi/focaltech_gesture.c",
			"focaltech_touch_spi/focaltech_esdcheck.c",
			"focaltech_touch_spi/focaltech_point_report_check.c",
			"focaltech_touch_spi/focaltech_flash_spi.c",
			"focaltech_touch_spi/focaltech_spi_v2.c",
			"focaltech_touch_spi/focaltech_test/focaltech_test.c",
			"focaltech_touch_spi/focaltech_test/focaltech_test_ini.c",
			"focaltech_touch_spi/focaltech_test/supported_ic/focaltech_test_ft8203.c"
    ]
)

#define ddk_module() for sec_cmd
module_entry(
    name = "sec_command",
    config_option = "CONFIG_SEC_CMD",
    srcs = [
            "sec_command/sec_cmd.c"
    ]
)

#define ddk_module() for himax_hx83102j
module_entry(
    name = "himax_mmi",
    config_option = "CONFIG_TOUCHSCREEN_HIMAX_CHIPSET",
    srcs = [
            "himax_hx83102j_spi/himax_debug.c",
            "himax_hx83102j_spi/himax_inspection.c",
            "himax_hx83102j_spi/himax_ic_HX83102j.c",
            "himax_hx83102j_spi/himax_ic_core.c",
            "himax_hx83102j_spi/himax_common.c",
            "himax_hx83102j_spi/himax_platform.c",
            "himax_hx83102j_spi/himax_firmware.c"
    ]
)

#define ddk_module() for chipone_icnl9951r
module_entry(
    name = "icnl9951r",
    config_option = "CONFIG_TOUCHSCREEN_CHIPONE_ICNL9958R",
    srcs = [
            "chipone_tddi_spi/cts_driver.c",
            "chipone_tddi_spi/cts_core.c",
            "chipone_tddi_spi/cts_sfctrlv2.c",
            "chipone_tddi_spi/cts_spi_flash.c",
            "chipone_tddi_spi/cts_firmware.c",
            "chipone_tddi_spi/cts_test.c",
            "chipone_tddi_spi/cts_charger_detect.c",
            "chipone_tddi_spi/cts_earjack_detect.c",
            "chipone_tddi_spi/cts_tcs.c",
            "chipone_tddi_spi/cts_platform.c",
            "chipone_tddi_spi/cts_tool.c",
            "chipone_tddi_spi/cts_sysfs.c",
            "chipone_tddi_spi/cts_strerror.c",
            "chipone_tddi_spi/cts_oem.c"
    ]
)

#define ddk_module() for jadard_jd9366ts
module_entry(
    name = "jadard_touch",
    config_option = "CONFIG_TOUCHSCREEN_JADARD_CHIPSET",
    srcs = [
            "jdchipset/jadard_module.c",
            "jdchipset/jadard_ic_JD9366TP.c",
            "jdchipset/jadard_common.c",
            "jdchipset/jadard_platform.c",
            "jdchipset/jadard_debug.c",
            "jdchipset/jadard_sorting.c"
    ]
)

#define ddk_module() for focaltech_fts
module_entry(
    name = "focaltech_fts",
    config_option = "CONFIG_TOUCH_FOCALTECH",
    srcs = [
            "focaltech_touch/focaltech_core.c",
            "focaltech_touch/focaltech_esdcheck.c",
            "focaltech_touch/focaltech_ex_fun.c",
            "focaltech_touch/focaltech_ex_mode.c",
            "focaltech_touch/focaltech_flash/focaltech_upgrade_ft3518.c",
            "focaltech_touch/focaltech_flash.c",
            "focaltech_touch/focaltech_gesture.c",
            "focaltech_touch/focaltech_i2c.c",
            "focaltech_touch/focaltech_point_report_check.c"
    ]
)

#define ddk_module() for synaptics_tcm_ts
module_entry(
    name = "synaptics_tcm_ts",
    config_option = "CONFIG_TOUCHSCREEN_SYNAPTICS_TCM",
    srcs = [
            "synaptics_tcm/synaptics_tcm_core.c",
            "synaptics_tcm/synaptics_tcm_i2c.c",
            "synaptics_tcm/synaptics_tcm_touch.c"
    ]
)

#define ddk_module() for atmel_mxt_ts
module_entry(
    name = "atmel_mxt_ts",
    config_option = "CONFIG_TOUCHSCREEN_ATMEL_MXT",
    srcs = [
            "atmel_mxt/atmel_mxt_ts.c",
    ]
)

#define ddk_module() for dummy_ts
module_entry(
    name = "dummy_ts",
    config_option = "CONFIG_TOUCHSCREEN_DUMMY",
    srcs = [
            "dummy_touch/dummy_touch.c"
    ]
)

#define ddk_module() for glink_interface_ts
module_entry(
    name = "glink_comm",
    config_option = "CONFIG_TOUCHSCREEN_MSM_GLINK",
    srcs = [
            "glink_interface_ts/glink_interface.c"
    ]
)

#define ddk_module() for pt_ts
module_entry(
    name = "pt_ts",
    config_option = "CONFIG_TOUCHSCREEN_PARADE",
    srcs = [
            "pt/pt_core.c",
            "pt/pt_devtree.c",
            "pt/pt_mt_common.c",
            "pt/pt_platform.c",
            "pt/pt_btn.c",
            "pt/pt_mtb.c",
            "pt/pt_proximity.c"
    ]
)

#define ddk_module() for pt_i2c
module_entry(
    name = "pt_i2c",
    config_option = "CONFIG_TOUCHSCREEN_PARADE_I2C",
    srcs = [
            "pt/pt_i2c.c"
    ]
)

#define ddk_module() for pt_device_access
module_entry(
    name = "pt_device_access",
    config_option = "CONFIG_TOUCHSCREEN_PARADE_DEVICE_ACCESS",
    srcs = [
            "pt/pt_device_access.c"
    ]
)

#define ddk_module() for pt_debug
module_entry(
    name = "pt_debug",
    config_option = "CONFIG_TOUCHSCREEN_PARADE_DEBUG_MDL",
    srcs = [
            "pt/pt_debug.c"
    ]
)

#define ddk_module() for raydium_ts
module_entry(
    name = "raydium_ts",
    config_option = "CONFIG_TOUCHSCREEN_RM_TS",
    srcs = [
            "raydium/drv_interface.c",
            "raydium/raydium_driver.c",
            "raydium/raydium_fw_update.c",
            "raydium/raydium_selftest.c",
            "raydium/raydium_sysfs.c",
            "raydium/chip_raydium/f303_ic_control.c",
            "raydium/chip_raydium/f303_ic_test.c",
            "raydium/chip_raydium/ic_drv_global.c",
            "raydium/chip_raydium/ic_drv_interface.c"
    ]
)
