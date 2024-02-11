#!/bin/bash

echo "Merging Kernel CAF Tag"

git fetch https://git.codelinaro.org/clo/la/kernel/msm-4.14/ LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0

git merge FETCH_HEAD

echo "Moving to Subtrees"

echo "Merging qcacld-3.0"

git remote add qcacld-3.0 https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0

git fetch qcacld-3.0 LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0

git merge -X subtree=drivers/staging/qcacld-3.0 FETCH_HEAD

echo "Merging fw-api"

git remote add fw-api https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/fw-api

git fetch fw-api LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0

git merge -X subtree=drivers/staging/fw-api FETCH_HEAD


echo "Merging qca-wifi-host-cmn"

git remote add qca-wifi-host-cmn https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn

git fetch qca-wifi-host-cmn LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0

git merge -X subtree=drivers/staging/qca-wifi-host-cmn FETCH_HEAD

echo "Merging Techpack Audio"

git remote add techpacka https://git.codelinaro.org/clo/la/platform/vendor/opensource/audio-kernel

git fetch techpacka LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0

git merge -X subtree=techpack/audio FETCH_HEAD

echo "Merging Techpack Data"

git remote add techpackd https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/data-kernel

git fetch techpackd LA.UM.9.1.r1-15800-SMxxx0.QSSI14.0

git merge -X subtree=techpack/data FETCH_HEAD
