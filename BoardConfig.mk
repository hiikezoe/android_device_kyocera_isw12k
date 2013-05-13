USE_CAMERA_STUB := true
include device/kyocera/msm7630/BoardConfig.mk

# inherit from the proprietary version
-include vendor/kyocera/isw12k/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := isw12k

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x1500000
KERNEL_DEFCONFIG := msm7630-perf_defconfig
KERNEL_HEADERS += kernel/kyocera/msm7360/include

BOARD_BOOTIMAGE_PARTITION_SIZE     :=    8388608 # 8MiB
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=   12582912 # 12MiB
BOARD_SYSTEMIMAGE_PARTITION_SIZE   :=  133562368 # 128MiB
BOARD_USERDATAIMAGE_PARTITION_SIZE :=  419430400 # 400MiB
BOARD_FLASH_BLOCK_SIZE := 524288
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

TARGET_PROVIDES_B2G_INIT_RC := true
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
