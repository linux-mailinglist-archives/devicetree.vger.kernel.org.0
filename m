Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 180DC971CA
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726869AbfHUF4X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:56:23 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:41445 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUF4X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:56:23 -0400
Received: by mail-pl1-f193.google.com with SMTP id m9so714021pls.8
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cl+8p7IjwOmu/57vcjZR8WI0fB01MFPdHX/I9mopYKM=;
        b=nLUkfdAcnMwMhCbckNJld74SrWq6OJpEZghk3AlLw3YrLeLkd64vM9dz4WPn0GSpUd
         sx2GEozETcKoqjFCb8CTrGGLggcZbhN33h+Zbv+wtoBllPojJGO6ktF6HfynDuVRJU/0
         MF13E62ssTk4bpVK+K9jjvpXJWpOmtTlgK7Vm3bsIaWD0tNZ4liKtl46D7Z363KldTzk
         G75OzMmWg9rvAQFlBzW/acDAxTz8A+7TXDElu7W7pYlKWED403UpAfhlsNl4NWMDqzS1
         TCntO4Jbxl8iTEVeO1TW0TteJqF14AEI86GZNB5VYi+xSRIlwWpMQqCaHTlrCj0q4Ezj
         qLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=Cl+8p7IjwOmu/57vcjZR8WI0fB01MFPdHX/I9mopYKM=;
        b=VwJISC0Xu1+oLE0+ba8s0U51zlRjhd6dn3GjQJd+KsHI31WKxHmjEueLex/CWfagXz
         i5xMaEmEixZ9kMFQXnwKfoyFFp5Nhat++aNew7GE9SnULtXHqRHAbyR9lWJP44xXnuBv
         pdtGOh7PaWJvsHlbuiExWAy8mV8/44HG0cAZkLvu5ffeY8I88MNubsO2M76B2uk0tjTo
         8Gv7Pflb0uvaqbOUKhIBpqu/8l7RJTIc1GikYh079QebpbuAoufb7YFCBKrPvC1ZRNb2
         j3oxWc7ZL8VwwYKcMwzq0Op/g2B3q4wPXQsnPqdcNzfjs4cdtjZIrx+mMaAzucIhELAn
         s0zg==
X-Gm-Message-State: APjAAAVNQQu1azpegItRarpMNJqut7/3x5TeQaNSrWZGdOrA895tpijA
        GWYDfURdnT6iq+tscZvun7A=
X-Google-Smtp-Source: APXvYqzYQs1jmaRyUy+/+2oBaJRR5DJBG64wLpMysrA/dlWTCgTRjmToDLsMqmOik2O6WLD/5OCBCQ==
X-Received: by 2002:a17:902:9b94:: with SMTP id y20mr32176648plp.260.1566366982431;
        Tue, 20 Aug 2019 22:56:22 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:56:21 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
Date:   Wed, 21 Aug 2019 15:25:30 +0930
Message-Id: <20190821055530.8720-8-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CONFIG_STRICT_KERNEL_RWX is enabled by default with ARMv7.

Turn on HIGHMEM as the EVB has 2GB of RAM, and not all is usable without
hihgmem.

The SoC contains Cortex A7 supporting VFP and has two CPUs.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 426d8e0c9890..597536cc9573 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -21,21 +21,26 @@ CONFIG_PERF_EVENTS=y
 CONFIG_SLAB=y
 CONFIG_SLAB_FREELIST_RANDOM=y
 CONFIG_ARCH_MULTI_V6=y
-# CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_ASPEED=y
 CONFIG_MACH_ASPEED_G5=y
+CONFIG_MACH_ASPEED_G6=y
 # CONFIG_CACHE_L2X0 is not set
+CONFIG_SMP=y
+# CONFIG_ARM_CPU_TOPOLOGY is not set
 CONFIG_VMSPLIT_2G=y
+CONFIG_NR_CPUS=2
+CONFIG_HIGHMEM=y
 CONFIG_UACCESS_WITH_MEMCPY=y
 CONFIG_SECCOMP=y
 # CONFIG_ATAGS is not set
 CONFIG_ZBOOT_ROM_TEXT=0x0
 CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_KEXEC=y
-# CONFIG_SUSPEND is not set
+CONFIG_VFP=y
+CONFIG_NEON=y
+CONFIG_KERNEL_MODE_NEON=y
 CONFIG_FIRMWARE_MEMMAP=y
 CONFIG_JUMP_LABEL=y
-CONFIG_STRICT_KERNEL_RWX=y
 # CONFIG_BLK_DEV_BSG is not set
 # CONFIG_BLK_DEBUG_FS is not set
 # CONFIG_MQ_IOSCHED_DEADLINE is not set
@@ -140,10 +145,12 @@ CONFIG_ASPEED_BT_IPMI_BMC=y
 CONFIG_HW_RANDOM_TIMERIOMEM=y
 # CONFIG_I2C_COMPAT is not set
 CONFIG_I2C_CHARDEV=y
+CONFIG_I2C_MUX=y
 CONFIG_I2C_MUX_PCA9541=y
 CONFIG_I2C_MUX_PCA954x=y
 CONFIG_I2C_ASPEED=y
 CONFIG_I2C_FSI=y
+CONFIG_SPI=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_ASPEED=y
@@ -194,6 +201,10 @@ CONFIG_USB_CONFIGFS_F_LB_SS=y
 CONFIG_USB_CONFIGFS_F_FS=y
 CONFIG_USB_CONFIGFS_F_HID=y
 CONFIG_USB_CONFIGFS_F_PRINTER=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_OF_ASPEED=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_CLASS_FLASH=y
-- 
2.23.0.rc1

