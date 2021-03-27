#!/bin/bash

git subtree add https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn LA.UM.9.1.r1-10900.02-SMxxx0.QSSI12.0 --prefix=drivers/staging/qca-wifi-host-cmn/

git subtree add https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 LA.UM.9.1.r1-10900.02-SMxxx0.QSSI12.0 --prefix=drivers/staging/qcacld-3.0/

git subtree add https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api LA.UM.9.1.r1-10900.02-SMxxx0.QSSI12.0 --prefix=drivers/staging/fw-api/

git subtree add git@github.com:cryptomilk/kernel-sdfat.git master --prefix=fs/sdfat/

git subtree add https://source.codeaurora.org/quic/la/platform/vendor/opensource/audio-kernel LA.UM.9.1.r1-10900.02-SMxxx0.QSSI12.0 --prefix=techpack/audio/

git subtree add https://source.codeaurora.org/quic/femto5G/platform/vendor/qcom-opensource/data-kernel/ LA.UM.9.1.r1-10900-SMxxx0.0 --prefix=techpack/data/
