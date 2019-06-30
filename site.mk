GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-15 \
	mesh-vpn-tunneldigger \
	radvd \
	respondd \
	status-page \
	web-advanced \
	web-wizard
	
GLUON_SITE_PACKAGES := \
    gluon-alfred \
    gluon-autoupdater \
    gluon-config-mode-autoupdater \
    gluon-config-mode-contact-info \
    gluon-config-mode-core \
    gluon-config-mode-geo-location \
    gluon-config-mode-hostname \
    gluon-config-mode-mesh-vpn \
    gluon-core \
    gluon-ebtables \
    gluon-ebtables-filter-multicast \
    gluon-ebtables-filter-ra-dhcp \
    gluon-ebtables-source-filter \
    gluon-ebtables-limit-arp \
    gluon-web-admin \
    gluon-web-autoupdater \
    gluon-web-network \
    gluon-web-private-wifi \
    gluon-web-wifi-config \
    gluon-mesh-batman-adv-15 \
    gluon-mesh-vpn-tunneldigger \
    gluon-neighbour-info \
    gluon-radvd \
    gluon-respondd \
    respondd-module-airtime \
    gluon-setup-mode \
    gluon-status-page \
    gluon-status-page-mesh-batman-adv \
    gluon-tunneldigger-watchdog \
    haveged \
    iptables \
    iwinfo \
    iw-full \


# End of module list

GLUON_MULTIDOMAIN=1
# basic support for USB stack
USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2

# UMTS support for USB devices
USB_PACKAGES_UMTS := \
	libusb-1.0 \
	usb-modeswitch \
	usbreset \
	chat \
	comgt \
	kmod-ppp \
	kmod-pppoe \
	kmod-usb-serial \
	kmod-usb-serial-option \
	kmod-usb-serial-wwan \
	ppp \
	ppp-mod-pppoe
	
# storage support for USB devices
USB_PACKAGES_STORAGE := \
	block-mount \
	blkid \
	kmod-fs-ext4 \
	kmod-fs-vfat \
	kmod-usb-storage \
	kmod-usb-storage-extras \
	kmod-nls-cp1250 \
	kmod-nls-cp1251 \
	kmod-nls-cp437 \
	kmod-nls-cp775 \
	kmod-nls-cp850 \
	kmod-nls-cp852 \
	kmod-nls-cp866 \
	kmod-nls-iso8859-1 \
	kmod-nls-iso8859-13 \
	kmod-nls-iso8859-15 \
	kmod-nls-iso8859-2 \
	kmod-nls-koi8r \
	kmod-nls-utf8 \
	swap-utils

# network support for USB devices
USB_PACKAGES_NET := \
	kmod-ath9k-htc  \
	kmod-ath9k-common \
	kmod-ath \
	kmod-brcmfmac \
	kmod-carl9170 \
	kmod-mii \
	kmod-nls-base \
	kmod-rt73-usb \
	kmod-rtl8192cu \
	kmod-rtl8187 \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx

# network support for PCI devices
PCI_PACKAGES_NET := \
	kmod-3c59x \
	kmod-e100 \
	kmod-e1000 \
	kmod-e1000e \
	kmod-forcedeth \
	kmod-igb \
	kmod-natsemi \
	kmod-ne2k-pci \
	kmod-pcnet32 \
	kmod-r8169 \
	kmod-sis900 \
	kmod-sky2 \
	kmod-tg3 \
	kmod-tulip \
	kmod-via-rhine

# misc packages
MISC_PACKAGES := \
	kmod-usb-acm \
	kmod-usb-serial-simple

USB_PACKAGES_MR3020 := \
	kmod-nls-base \
	kmod-usb-core \
	kmod-mii \
	kmod-usb-net \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-rndis \
	kmod-usb-uhci

#
# $(GLUON_TARGET) specific settings:
#

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB and PCI NICs
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86-64 devices
# and add a few common USB and PCI NICs
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	
endif

# Raspberry Pi A/B/B+
ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	
endif

# Raspberry Pi 2
ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	
endif

# ar71xx-generic / tiny
GLUON_tp-link-archer-c7-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-archer-c7-v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

# 842 can't install a full featured usb image, we don't need network and UMTS on our 842 devices

GLUON_tp-link-tl-wr842n-nd-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr842n-nd-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE)
GLUON_tp-link-tl-wr842n-nd-v3_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE)

GLUON_tp-link-tl-wr1043n-nd-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr1043n-nd-v2_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr1043n-nd-v3_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wr1043n-nd-v4_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

GLUON_tp-link-tl-wdr3500-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wdr3600-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)
GLUON_tp-link-tl-wdr4300-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_UMTS) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

GLUON_tp-link-tl-mr3020-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_MR3020) -gluon-status-page

# mpc85xx-generic
GLUON_tp-link-tl-wdr4900-v1_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(USB_PACKAGES_STORAGE) $(USB_PACKAGES_NET) $(MISC_PACKAGES)

# --- Release Information

DEFAULT_GLUON_RELEASE := v2018.2.2-$(shell date '+%Y%m%d')-stable

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= de
GLUON_REGION ?= eu
GLUON_ATH10K_MESH ?= 11s
GLUON_WLAN_MESH ?= 11s
