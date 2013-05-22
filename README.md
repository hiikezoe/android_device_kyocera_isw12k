# B2G for Kyocera URBANO PROGRESSO
## 概要

B2G for URBANO PROGRESSOは、オリジナルのAndroid環境を残したままインストールできます。

いくつかの機能はB2Gではまだ利用できませんが、B2G用Webアプリを実機でテストしたいという要望には十分応えられるはずです。

## ダウンロード
<https://drive.google.com/folderview?id=0B-JRBuba3UhLdWhfTUVCNDVpSVU&usp=sharing>

## インストール
1. SDカードにboot.img、b2g-system.imgおよびb2g-userdata.imgをコピー

        $ adb shell mkdir -p /sdcard/b2g
        $ adb push b2g-system.img /sdcard/b2g
        $ adb push b2g-data.img /sdcard/b2g
        $ adb push boot.img /sdcard/b2g

2. recovery領域にB2Gのブートイメージを焼く (要root権限)

        # dd if=/sdcard/b2g/boot.img of=/dev/block/mmcblk0p16 bs=512

## 起動方法

    $ adb reboot recovery

## ソースコードからのビルド

    $ git clone git://github.com/mozilla-b2g/B2G.git
    $ cd B2G
    $ hg clone http://hg.mozilla.org/l10n-central/ja gecko-l10n/ja
    $ hg clone http://hg.mozilla.org/gaia-l10n/ja gaia-l10n/ja
    $ wget https://raw.github.com/hiikezoe/android_device_kyocera_isw12k/b2g/isw12k.xml
    $ DEVICE=isw12k ./config.sh isw12k isw12k.xml (*1)
    $ ./build.sh

## Boot modes

### Recovery Mode

    Power on, then Volume up + Home

### 0482:056d

    Connect USB cable without battery

## Partition

    mmcblk0p1  AMMS
    mmcblk0p2
    mmcblk0p3
    mmcblk0p4
    mmcblk0p5  APPSBL
    mmcblk0p6
    mmcblk0p7
    mmcblk0p8  boot
    mmcblk0p9
    mmcblk0p10
    mmcblk0p11
    mmcblk0p12 system
    mmcblk0p13 data
    mmcblk0p14 persist
    mmcblk0p15 cache
    mmcblk0p16 recovery
    mmcblk0p17 system/kcjprop/rw
    mmcblk0p18 cache/delta
    mmcblk0p19 FOTA
    mmcblk0p20
    mmcblk0p21 DNAND
    mmcblk0p22 FIB
    mmcblk0p23 misc
