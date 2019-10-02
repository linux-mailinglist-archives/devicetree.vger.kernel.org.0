Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9B864C8D78
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 17:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729121AbfJBP5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 11:57:32 -0400
Received: from mail-pl1-f174.google.com ([209.85.214.174]:36514 "EHLO
        mail-pl1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727103AbfJBP5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 11:57:32 -0400
Received: by mail-pl1-f174.google.com with SMTP id j11so3917812plk.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 08:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Wf9B4YsXk9gokF161k/iRuBPFG5mNkYGFxNwG7giJ34=;
        b=opsLeZMJjn3H9A1cyslACeK8jfmkpkR0Uzeibi1ZF/EaqvAaj82qvW3acYFkEIKZwd
         seC7RLPvnwl9SZ/JwKWHNuTci3hzJov8ohzTfg6EGyFtRBZ2lwcmA9343SHBtnye5q6s
         U07xbrcGkfWAo3F+vvhZ2Wsyy/WrKQefltuMlcFXum0/JsCf+tHfsuQ+tQaEo2GGlUB1
         3KAIVxyN1++XSr8DBQ9uGhc5ucZerwopms1xZ++zRpSuarck7ZVq3x6gatjDuVJpanXG
         OWkkoE1mo+wlAKHFiQqV4IPpfgAJB09ADQkVlZB0zwyNsHjTnWCBT5cc1O+VWcaD4I7C
         3ctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Wf9B4YsXk9gokF161k/iRuBPFG5mNkYGFxNwG7giJ34=;
        b=HRwJM8H4rEF6GKhEv9jVni19UZmSpNv6D/HTJmOD9UdWlFJZ24tqXvFE3vQAP1siUS
         PfKwiVFVW76zU1uXb+5qiZoO/HByRkA6N8xgl6k07I/5ZHPoeMxrCcQJy8bWLRE321Ch
         1Ar4ToXEl4umtd2tJ+/BHr0yO4he1ebOMBMOOP6yN84dSdUZiyGVr1hy5KlGvGq8mx5g
         UavdUiMlt7oTfMRRyIFgEkK7aMd7I9FO+oqhVsVx83U7+BnScLaoLwPsf/31OxSb11Fq
         HC1HgjgcoYOKNiLohGRmmtvOISasZVwSwq9d+kg4XInVOgfAwYyYfGLYMDn1r7dkFdDK
         1NwA==
X-Gm-Message-State: APjAAAXv3rJ5Kn6zUo3gxVdyZZS6ZTjLJZjvuV0LYWtL4i7PYziCEYvQ
        vXCpajy76FmGHeF7Wx7MjHg=
X-Google-Smtp-Source: APXvYqyoGpsRfilYh1YdEUbIB9RC7c346FhwL8gPwPkaI4wMogpnkrVavxq2XXF0YkFTosKriqepWg==
X-Received: by 2002:a17:902:d685:: with SMTP id v5mr4320225ply.15.1570031851727;
        Wed, 02 Oct 2019 08:57:31 -0700 (PDT)
Received: from localhost.localdomain ([67.139.187.132])
        by smtp.gmail.com with ESMTPSA id q71sm6600804pjb.26.2019.10.02.08.57.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 02 Oct 2019 08:57:31 -0700 (PDT)
From:   Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Dan Haab <dan.haab@legrand.com>
Subject: [PATCH] ARM: dts: BCM5301X: Add DT for Luxul XWC-2000
Date:   Wed,  2 Oct 2019 09:57:26 -0600
Message-Id: <1570031846-8330-1-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dan Haab <dan.haab@legrand.com>

It's a simple network device based on BCM47094 with just a single
Ethernet port.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts | 53 +++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b21b3a6..f6b578d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -113,6 +113,7 @@ dtb-$(CONFIG_ARCH_BCM_5301X) += \
 	bcm47094-luxul-abr-4500.dtb \
 	bcm47094-luxul-xap-1610.dtb \
 	bcm47094-luxul-xbr-4500.dtb \
+	bcm47094-luxul-xwc-2000.dtb \
 	bcm47094-luxul-xwr-3100.dtb \
 	bcm47094-luxul-xwr-3150-v1.dtb \
 	bcm47094-netgear-r8500.dtb \
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
new file mode 100644
index 0000000..3343253
--- /dev/null
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2019 Legrand AV Inc.
+ */
+
+/dts-v1/;
+
+#include "bcm47094.dtsi"
+#include "bcm5301x-nand-cs0-bch8.dtsi"
+
+/ {
+	compatible = "luxul,xwc-2000-v1", "brcm,bcm47094", "brcm,bcm4708";
+	model = "Luxul XWC-2000 V1";
+
+	chosen {
+		bootargs = "earlycon";
+	};
+
+	memory {
+		reg = <0x00000000 0x08000000
+		       0x88000000 0x18000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		status	{
+			label = "bcm53xx:green:status";
+			gpios = <&chipcommon 18 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&chipcommon 19 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&spi_nor {
+	status = "okay";
+};
-- 
1.9.1

