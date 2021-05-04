Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25BA23730DE
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 21:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232549AbhEDTgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 15:36:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232559AbhEDTgI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 15:36:08 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84B87C06138A
        for <devicetree@vger.kernel.org>; Tue,  4 May 2021 12:35:09 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id x5so10604751wrv.13
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 12:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OUE6T8d/N4f3Mv0jX1DZW932G/DmWRKc7vhygQ2jwlM=;
        b=iY+VQNDWOqV/CG0cFNr9CjtsFJKTTbCm/lkfOwHdVMCGDyal0uZ2C50CTS43njVgTz
         OnOVf/G0AOan8QKQdzXf4eiQbi4MwhQayhKyfYUKV3vzFALPV3HQFcP5zfa0UYE58kgW
         b5RtPat4w1Sb/6LGKFS7o9zYw4SKH0OjDoU8mGUva0X3eh2KOutn3cS2aS2jSZw8gOhw
         Y8gFyh+2JkGDKYGsSoRAbegD6y1CvVaym3vVi+Z3WjBSyuvlfkO2bgQcnMac/Rue+jm0
         S3BZNYVA5+pBIOM5uoredT4nnMp3r7vMIp/VsAnvoH5JUg47Nd5/i3j6fhOQZ63Yeae4
         /7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OUE6T8d/N4f3Mv0jX1DZW932G/DmWRKc7vhygQ2jwlM=;
        b=i/HqnOlSDt7OOmB1u0CUVQ/X6PlAfvIqM4lFl59aX5Kc9Ucu/0dFO2EvPAUbFZ9rg6
         RLT05hio9sxOsWof19nxamD6rdpG5Yh6litlOgO8KiRib2iLiqDXQRR+dzSPCFSUOJlA
         WYd0rpQNTrYoh6rsm3EKUbOmRhIiLm+y6X4vda/d0nfKGnt2iR1lVL1dmb2sX7Z4q/7l
         CkOdU6PhpIEUL8eDNEQTZ1o1wEgiX9FR4E4GjfHAUG1QHkLzw12/tqXxB4XLmMIA/KK4
         UnYB2ci+0vGjqA67KqbcTXTguIdqFGsrDcvrUt4fD4JHeU0Y3+Uirw8NFHguViN8sFyM
         9MjQ==
X-Gm-Message-State: AOAM532koBjBiHuuQ4zd6Wo54zBq+ancafNjgAD9p1G2TPDXitTF6Ra8
        0kbXYwZfv4eQWCNukqvDClNDtg==
X-Google-Smtp-Source: ABdhPJyTc2cvByzqBL/z0VWYE9grFLrwGOUQgAq6tWjFmTXdEdBZNW+9YhAcr6eeRxF8kc5ORG5rEQ==
X-Received: by 2002:a5d:5741:: with SMTP id q1mr33553742wrw.212.1620156908233;
        Tue, 04 May 2021 12:35:08 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8sm17072136wru.70.2021.05.04.12.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 12:35:07 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, kaloz@openwrt.org, khalasa@piap.pl,
        linusw@kernel.org, linux@armlinux.org.uk, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 5/5] ARM: dts: add intel-ixp42x-welltech-epbx100
Date:   Tue,  4 May 2021 19:34:57 +0000
Message-Id: <20210504193457.4008384-6-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210504193457.4008384-1-clabbe@baylibre.com>
References: <20210504193457.4008384-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds devicetree for intel-ixp42x-welltech-epbx100.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/intel-ixp42x-welltech-epbx100.dts     | 76 +++++++++++++++++++
 2 files changed, 77 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 1580313eb372..7d0c94b9108d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -242,6 +242,7 @@ dtb-$(CONFIG_ARCH_INTEGRATOR) += \
 	integratorcp.dtb
 dtb-$(CONFIG_ARCH_IXP4XX) += \
 	intel-ixp42x-linksys-nslu2.dtb \
+	intel-ixp42x-welltech-epbx100.dtb \
 	intel-ixp43x-gateworks-gw2358.dtb
 dtb-$(CONFIG_ARCH_KEYSTONE) += \
 	keystone-k2hk-evm.dtb \
diff --git a/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts b/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts
new file mode 100644
index 000000000000..84158503be2a
--- /dev/null
+++ b/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Corentin Labbe <clabbe@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include "intel-ixp42x.dtsi"
+
+/ {
+	model = "Welltech EPBX100";
+	compatible = "welltech,epbx100", "intel,ixp42x";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 {
+		/* 64 MB SDRAM */
+		device_type = "memory";
+		reg = <0x00000000 0x4000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 root=/dev/ram0 initrd=0x00800000,9M";
+		stdout-path = "uart0:115200n8";
+	};
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	flash@50000000 {
+		compatible = "intel,ixp4xx-flash", "cfi-flash";
+		bank-width = <2>;
+		/*
+		 * 16 MB of Flash
+		 */
+		reg = <0x50000000 0x1000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "RedBoot";
+				reg = <0x00000000 0x00080000>;
+				read-only;
+			};
+			partition@80000 {
+				label = "zImage";
+				reg = <0x00080000 0x00100000>;
+				read-only;
+			};
+			partition@180000 {
+				label = "ramdisk";
+				reg = <0x00180000 0x00300000>;
+				read-only;
+			};
+			partition@480000 {
+				label = "User";
+				reg = <0x00480000 0x00b60000>;
+				read-only;
+			};
+			partition@fe0000 {
+				label = "FIS directory";
+				reg = <0x00fe0000 0x001f000>;
+				read-only;
+			};
+			partition@fff000 {
+				label = "RedBoot config";
+				reg = <0x00fff000 0x0001000>;
+				read-only;
+			};
+		};
+	};
+};
-- 
2.26.3

