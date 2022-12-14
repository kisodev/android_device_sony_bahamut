#!/vendor/bin/sh

MSIM_DEVICES=(
    j9210 j9260 # Dual-SIM version
)
MSIM_DEVICE=0

for device in "${MSIM_DEVICES[@]}"; do
    if grep -qi "Model: ${device}" /dev/block/bootdevice/by-name/LTALabel; then
        MSIM_DEVICE=1
        break
    fi
done

if [[ "${MSIM_DEVICE}" -eq 1 ]]; then
    setprop vendor.radio.multisim.config dsds
else
    setprop vendor.radio.multisim.config ss
fi
