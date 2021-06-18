Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEF373AD3FC
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 22:55:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234326AbhFRU6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 16:58:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234272AbhFRU6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 16:58:00 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41E37C0617AD
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:46 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id n35-20020a05600c3ba3b02901cdecb6bda8so9442579wms.5
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LayfGoKGy+6qEOUXkD/+X9FAKT9xuGIfbJpjpmHqJmM=;
        b=CT61IHcpGt9JXgP3dj5MUS4zkKg5EHrLcYHWIYu9Ig0H9ATl4p4+V3oD1LuQMVaboS
         xI0yAUYQ+RGxx9uMdnfI0SYzP8LfwDi6HTM6s8tXE0gNiDEW1O03bGvOgomN4fbQ2Ws4
         8B5AtgToIWAC6MecCuUnFTbgmYlCkYe0I3F4+ToEWHeAgjGHQsPcASMI4AYEvz/lJY4I
         yQ6FQad1tSSRqOhmY71fYhZVwEJSCUts+uSOJYZvu5ksX7A5ZvtVg5Clh5c80kAJqbBM
         d13xKLSIfFHAlHUu1gXxerIdkdLT0En6llzUTl4EmkRipEklmN/or3etC1RVMCcCVF9M
         +jFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LayfGoKGy+6qEOUXkD/+X9FAKT9xuGIfbJpjpmHqJmM=;
        b=LBhfbI+BdTIs292oytzkA1hYPf3BxVitE02NA0oKtgjkMLy8ZdRovkEns58agvq/Zn
         AjjAiTB3R+Ll3WGS0YM6y6jYrzpAhXmd9Lt2GGtbb/l5uRPznZOigDag1AlXA1L6pvWk
         tmF3ogiSJl4IHsP6epR1U8lCzNooLlY8uCoZjlO3BUEIJIKVGydtLbRwmLqVWp85N7tu
         Ud2bjieLn5NYMzFrGayt5qJf0dlqeY2trUICQ0p5KUcaDg48xSaf6iOPoWU/8r0NQxno
         b8klnPwHVeyegjROwNjvL1aabA7xmIftKdy8XzBl7fcVs19vO/I0yUIDC56TacmiiK8r
         p+9w==
X-Gm-Message-State: AOAM530bd6Xzwd/WfEP6Cx2t96uaW/LTnIALrwYRC5sdIPBMeZn7ddK0
        wD9qQ82GJZ9NHkMJmmlVZ8EuVA==
X-Google-Smtp-Source: ABdhPJx8o/q4V5XXiWXS7ysEkAFpjAG9f0iPZ2oQkNZw1POTabPO6JdD67Mg6dXpiYFvpypVjFFxIQ==
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr13741946wmj.134.1624049744850;
        Fri, 18 Jun 2021 13:55:44 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j12sm9745476wrt.69.2021.06.18.13.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 13:55:44 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 5/5] ARM: gemini: add device tree for ssi1328
Date:   Fri, 18 Jun 2021 20:55:33 +0000
Message-Id: <20210618205533.1527384-6-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210618205533.1527384-1-clabbe@baylibre.com>
References: <20210618205533.1527384-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SSI 1328 is a NAS box running a SL3516 SoC.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/Makefile           |   1 +
 arch/arm/boot/dts/gemini-ssi1328.dts | 138 +++++++++++++++++++++++++++
 2 files changed, 139 insertions(+)
 create mode 100644 arch/arm/boot/dts/gemini-ssi1328.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 806715f3266d..49bf7af72111 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -221,6 +221,7 @@ dtb-$(CONFIG_ARCH_GEMINI) += \
 	gemini-rut1xx.dtb \
 	gemini-sl93512r.dtb \
 	gemini-sq201.dtb \
+	gemini-ssi1328.dtb \
 	gemini-wbd111.dtb \
 	gemini-wbd222.dtb
 dtb-$(CONFIG_ARCH_HI3xxx) += \
diff --git a/arch/arm/boot/dts/gemini-ssi1328.dts b/arch/arm/boot/dts/gemini-ssi1328.dts
new file mode 100644
index 000000000000..2b3e7db84fed
--- /dev/null
+++ b/arch/arm/boot/dts/gemini-ssi1328.dts
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Corentin Labbe <clabbe@baylibre.com>
+ * Device Tree file for SSI 1328
+ */
+
+/dts-v1/;
+
+#include "gemini.dtsi"
+
+/ {
+	model = "SSI 1328";
+	compatible = "ssi,1328", "cortina,gemini";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	memory@0 {
+		/* 128 MB */
+		device_type = "memory";
+		reg = <0x00000000 0x8000000>;
+	};
+
+	aliases {
+		mdio-gpio0 = &mdio0;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,19200n8 initrd=0x900000,9M";
+		stdout-path = &uart0;
+	};
+
+	mdio0: mdio {
+		compatible = "virtual,mdio-gpio";
+		gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>, /* MDC */
+			<&gpio0 21 GPIO_ACTIVE_HIGH>; /* MDIO */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* LAN Marvell 88E1118 */
+		phy0: ethernet-phy@1 {
+			reg = <1>;
+			device_type = "ethernet-phy";
+			/* We lack the knowledge of necessary GPIO to achieve
+			 * Gigabit
+			 */
+			max-speed = <100>;
+		};
+		/* WAN ICPlus IP101A */
+		phy1: ethernet-phy@2 {
+			reg = <2>;
+			device_type = "ethernet-phy";
+		};
+	};
+};
+
+&ethernet {
+	status = "okay";
+	ethernet-port@0 {
+		phy-mode = "rgmii";
+		phy-handle = <&phy0>;
+	};
+	ethernet-port@1 {
+		phy-mode = "rgmii";
+		phy-handle = <&phy1>;
+	};
+};
+
+&flash {
+	status = "okay";
+	/* 32MB of flash */
+	reg = <0x30000000 0x03200000>;
+
+	pinctrl-names = "enabled", "disabled";
+	pinctrl-0 = <&pflash_default_pins>;
+	pinctrl-1 = <&pflash_disabled_pins>;
+
+	partitions {
+		compatible = "redboot-fis";
+		/* Eraseblock at 0xfe0000 */
+		fis-index-block = <0x7F>;
+	};
+};
+
+&gpio0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpio0_default_pins>;
+};
+
+&ide0 {
+	status = "okay";
+};
+
+&ide1 {
+	status = "okay";
+};
+
+&sata {
+	cortina,gemini-ata-muxmode = <0>;
+	cortina,gemini-enable-sata-bridge;
+	status = "okay";
+};
+
+&syscon {
+	pinctrl {
+		/*
+		 * gpio0agrp cover line 0-4
+		 * gpio0bgrp cover line 5
+		 */
+		gpio0_default_pins: pinctrl-gpio0 {
+			mux {
+				function = "gpio0";
+				groups = "gpio0agrp", "gpio0bgrp";
+			};
+		};
+		pflash_disabled_pins: pinctrl-pflash-disabled {
+			mux {
+				function = "gpio0";
+				groups = "gpio0ggrp", "gpio0igrp", "gpio0jgrp",
+					 "gpio0kgrp";
+			};
+		};
+		pinctrl-gmii {
+			/* This platform use both the ethernet ports */
+			mux {
+				function = "gmii";
+				groups = "gmii_gmac0_grp", "gmii_gmac1_grp";
+			};
+		};
+	};
+};
+
+&usb0 {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
-- 
2.31.1

