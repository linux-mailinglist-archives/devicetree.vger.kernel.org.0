Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1539971C9
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:56:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727345AbfHUF4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:56:19 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:42663 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUF4S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:56:18 -0400
Received: by mail-pl1-f196.google.com with SMTP id y1so711481plp.9
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kVMeqsg/mfUvkErCbhFnFtOVad83MIZWTR0g/QLKhHg=;
        b=gRuFZtDYE6HaBYpsqgwODQ5NYhb1E049C4CJPD6ptRyASE/L1glTUH7bxw+GO/6EEg
         LgJYH1de4KJdYzTlcW3231lYYamXUxjEsP+/agV/DShX+MaHAoOdTiMvxP8GD5mzsPtQ
         4VllDrbGELoCByPwRR/auQv+UwUSB0QT5xQfBFsKikylin/F0djpNzmzSZitfGPN7ZCZ
         YC/aObf4medqKPVSPfR9B+pNujvRW1z3NYykHXwajvpohzUBMbqaF1NVcoR8c/LqoIiq
         k45t4zHmxKCh58MfySNql6iervFLLVNFoNV5PkYKQ6Ntgp6DeYwhNAjYhw1ZupTib+mx
         98bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=kVMeqsg/mfUvkErCbhFnFtOVad83MIZWTR0g/QLKhHg=;
        b=GbzVe4ylIT7ZWRUrom3cTJcaIvLsXLaNeLtbNFmu4lQ3fe/n5bvO59WrUyGUGUvDIt
         yaLn3ce/lRnJREIeW+TSkntHzvBj6PbPW7eJMddDZQgRn156KcMaKDMQUYi7cRBRHp4c
         CXWq1LShgh73x4Ff6ZwRVM5rmhe2dFYTY4NbC6LiJsFqQCtb4hnl+e1yWOeWX3x5PrhP
         dJFmdW5Eu9ZtYgSbWno8Ty3c/8C3BROmz4IUjbnBJEBL1XmJSRrQJGvbee3ffw3390zm
         /CtFvtNTY9K7y20p78hpVwsjxaR42taL9NHjk4th92h6cnc70IcBBcfkxETU6WiE/cOG
         etDw==
X-Gm-Message-State: APjAAAX18GcMO0XwtXkGwgb3gAd0S9x0vRQCRE8AVRdf6luyPbp7Kugc
        YHP83m4FvGE5Sjiv8y8lGCQ=
X-Google-Smtp-Source: APXvYqwbrMpfNmsuAWcz4Hd/RXIbJ08v7L7s3HTxAg5HMw3qLUl5LopPuCkywBUbJMhNt/nfh7X96Q==
X-Received: by 2002:a17:902:bb85:: with SMTP id m5mr8924448pls.322.1566366978155;
        Tue, 20 Aug 2019 22:56:18 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:56:17 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 6/7] ARM: configs: multi_v7: Add ASPEED G6
Date:   Wed, 21 Aug 2019 15:25:29 +0930
Message-Id: <20190821055530.8720-7-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the ASPEED AST2600 system and associated ASPEED devices so we
get build coverage.

The changes to the UART configuration to ensure the default console
(UART5) works.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/multi_v7_defconfig | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3dc02a5e7672..ebb00321b1eb 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -9,6 +9,8 @@ CONFIG_ARCH_VIRT=y
 CONFIG_ARCH_ALPINE=y
 CONFIG_ARCH_ARTPEC=y
 CONFIG_MACH_ARTPEC6=y
+CONFIG_ARCH_ASPEED=y
+CONFIG_MACH_ASPEED_G6=y
 CONFIG_ARCH_AT91=y
 CONFIG_SOC_SAMA5D2=y
 CONFIG_SOC_SAMA5D3=y
@@ -200,6 +202,7 @@ CONFIG_MTD_NAND_VF610_NFC=y
 CONFIG_MTD_NAND_DAVINCI=y
 CONFIG_MTD_NAND_STM32_FMC2=y
 CONFIG_MTD_SPI_NOR=y
+CONFIG_SPI_ASPEED_SMC=m
 CONFIG_MTD_UBI=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
@@ -306,7 +309,11 @@ CONFIG_INPUT_STPMIC1_ONKEY=y
 CONFIG_SERIO_AMBAKMI=y
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_NR_UARTS=5
+CONFIG_SERIAL_8250_RUNTIME_UARTS=5
 CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_MANY_PORTS=y
+CONFIG_SERIAL_8250_ASPEED_VUART=m
 CONFIG_SERIAL_8250_SHARE_IRQ=y
 CONFIG_SERIAL_8250_BCM2835AUX=y
 CONFIG_SERIAL_8250_DW=y
@@ -351,6 +358,8 @@ CONFIG_SERIAL_STM32=y
 CONFIG_SERIAL_STM32_CONSOLE=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_ASPEED_KCS_IPMI_BMC=m
+CONFIG_ASPEED_BT_IPMI_BMC=m
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_ST=y
 CONFIG_TCG_TPM=m
@@ -360,6 +369,7 @@ CONFIG_I2C_ARB_GPIO_CHALLENGE=m
 CONFIG_I2C_MUX_PCA954x=y
 CONFIG_I2C_MUX_PINCTRL=y
 CONFIG_I2C_DEMUX_PINCTRL=y
+CONFIG_I2C_ASPEED=m
 CONFIG_I2C_AT91=m
 CONFIG_I2C_BCM2835=y
 CONFIG_I2C_CADENCE=y
@@ -464,6 +474,7 @@ CONFIG_CHARGER_MAX77693=m
 CONFIG_CHARGER_MAX8997=m
 CONFIG_CHARGER_MAX8998=m
 CONFIG_CHARGER_TPS65090=y
+CONFIG_SENSORS_ASPEED=m
 CONFIG_SENSORS_IIO_HWMON=y
 CONFIG_SENSORS_LM90=y
 CONFIG_SENSORS_LM95245=y
@@ -594,6 +605,7 @@ CONFIG_VIDEO_V4L2_SUBDEV_API=y
 CONFIG_MEDIA_USB_SUPPORT=y
 CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
+CONFIG_VIDEO_ASPEED=m
 CONFIG_VIDEO_STM32_DCMI=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS4_IS=m
 CONFIG_VIDEO_S5P_FIMC=m
@@ -663,6 +675,7 @@ CONFIG_DRM_MXSFB=m
 CONFIG_DRM_PL111=m
 CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
+CONFIG_DRM_ASPEED_GFX=m
 CONFIG_FB_EFI=y
 CONFIG_FB_WM8505=y
 CONFIG_FB_SH_MOBILE_LCDC=y
@@ -762,6 +775,7 @@ CONFIG_USB_MXS_PHY=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_FSL_USB2=y
 CONFIG_USB_RENESAS_USBHS_UDC=m
+CONFIG_USB_ASPEED_VHUB=m
 CONFIG_USB_CONFIGFS=m
 CONFIG_USB_CONFIGFS_SERIAL=y
 CONFIG_USB_CONFIGFS_ACM=y
@@ -870,6 +884,7 @@ CONFIG_RTC_DRV_TEGRA=y
 CONFIG_RTC_DRV_ST_LPC=y
 CONFIG_RTC_DRV_STM32=y
 CONFIG_RTC_DRV_CPCAP=m
+CONFIG_RTC_DRV_ASPEED=m
 CONFIG_DMADEVICES=y
 CONFIG_AT_HDMAC=y
 CONFIG_AT_XDMAC=y
@@ -920,6 +935,9 @@ CONFIG_TEGRA_IOMMU_SMMU=y
 CONFIG_REMOTEPROC=m
 CONFIG_ST_REMOTEPROC=m
 CONFIG_RPMSG_VIRTIO=m
+CONFIG_ASPEED_LPC_CTRL=m
+CONFIG_ASPEED_LPC_SNOOP=m
+CONFIG_ASPEED_P2A_CTRL=m
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_QCOM_GSBI=y
 CONFIG_QCOM_PM=y
@@ -952,6 +970,7 @@ CONFIG_ARM_TEGRA_DEVFREQ=m
 CONFIG_TI_AEMIF=y
 CONFIG_IIO=y
 CONFIG_IIO_SW_TRIGGER=y
+CONFIG_ASPEED_ADC=m
 CONFIG_AT91_ADC=m
 CONFIG_AT91_SAMA5D2_ADC=m
 CONFIG_BERLIN2_ADC=m
-- 
2.23.0.rc1

