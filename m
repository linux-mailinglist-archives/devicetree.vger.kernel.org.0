Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0C332EBC3
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 14:00:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229851AbhCENAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 08:00:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhCEM7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 07:59:53 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70E43C061574
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 04:59:53 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id e7so3496559lft.2
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 04:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fIPYnHu8W1UjB++rGDH/JyymAkB0dWNTk3phuhPLgqU=;
        b=FNXVO3/2M6AC3JH9wqiPKQfR9VILfioNfXmksNpg5cJ23OpQN+pB9oW86jmwNugDLR
         FXsteptEjpLZfHSppzrvaTZvy90auVnwD0hml3oqzHFPG06OxhVSJotSjwXTC53mPx/S
         FD9SPPwiXishdtsvcaQN4DXVAkFnjqV+ntOxDNBQinmlpOtoeMsqMa07eQV3u0/TvK5j
         Zdt1/4SXIj+1lcFi3JDH2oq2uECk8Fk1rDR7hBAjUzMOEn5KI7hd+4FCdd6JJYfjAPgS
         rq6uEtdibUnOMqIsDJyo6yn9faAApDn9rSfJby6M7FDtKsHv0rJXiHcHx8bRcinDTpjl
         msww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fIPYnHu8W1UjB++rGDH/JyymAkB0dWNTk3phuhPLgqU=;
        b=X4IRqlkV/sBoHgfSzV4dfMFKe592fRuvGqiolBoah2Ua1xE2sLvqNOymUV3ro2e46d
         H+MrXumRqLL7q9iwG/OPnT1Hr15T4IAmIxUSA4zBUT2dZa0i1qw+9kqVsJeVc1E61skK
         Xf7uuwQ5FC019Y+hSPWq4yPr6XH0Yh9kOowc1qc3IBeYEik4C1qv6+HVFyxCgmg4CYl2
         ZIUMHfE9CYgHtxY3cKJIIVEWZqret137Xp4cpVDL0kqsUK8ak0b04nJdtKEiFDmEgQdx
         ALNV1rFg8BMpaUDsab2Um9Qtm+MFl201W1LgdsZpQ3fXPyRMLZse1lcGfrARVKy/lANw
         t/Jg==
X-Gm-Message-State: AOAM532lYjCVXZDojKRHUyTWBa06jZmP0AAxm6Wam6BIWvA+gs63yCmk
        wD0Xks2oakSo9Jje4/Qxv0c=
X-Google-Smtp-Source: ABdhPJw9We/mMQn/EyulNhbJL+ENEdE77AIA9CKFlLikZV/sDS+iOWRkrxN1/N6pa8xI69aHLd0T4g==
X-Received: by 2002:a05:6512:12c1:: with SMTP id p1mr5787432lfg.374.1614949192029;
        Fri, 05 Mar 2021 04:59:52 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 30sm308138lfr.200.2021.03.05.04.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 04:59:51 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RESEND 2/2] arm64: dts: broadcom: bcm4908: add TP-Link Archer C2300 V1
Date:   Fri,  5 Mar 2021 13:59:07 +0100
Message-Id: <20210305125907.21943-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305125907.21943-1-zajec5@gmail.com>
References: <20210305125302.21593-1-zajec5@gmail.com>
 <20210305125907.21943-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Archer C2300 V1 is a home router based on the BCM4906 (2 CPU cores). It
has 512 MiB of RAM, NAND flash, USB 2.0 and USB 3.0 ports, 4 LAN ports,
1 WAN port.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
RESEND: Got "550 Unknown recipient" for linux-arm-kernel@lists.infradead.org
<dwmw2_go`> yeah, the mailman setup on the new host got commented out for a few seconds.
---
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |   1 +
 .../bcm4906-tplink-archer-c2300-v1.dts        | 182 ++++++++++++++++++
 2 files changed, 183 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
index ebebc0cd421f..cc75854519ac 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-netgear-r8000p.dtb
+dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-tplink-archer-c2300-v1.dtb
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4908-asus-gt-ac5300.dtb
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
new file mode 100644
index 000000000000..85820c760260
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-tplink-archer-c2300-v1.dts
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+#include "bcm4906.dtsi"
+
+/ {
+	compatible = "tplink,archer-c2300-v1", "brcm,bcm4906", "brcm,bcm4908";
+	model = "TP-Link Archer C2300 V1";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00 0x00 0x00 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power-white {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
+		};
+
+		2ghz {
+			function = "2ghz";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+		};
+
+		5ghz {
+			function = "5ghz";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+		};
+
+		wan-amber {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan-blue {
+			function = LED_FUNCTION_WAN;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			function = LED_FUNCTION_LAN;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		};
+
+		wps {
+			function = LED_FUNCTION_WPS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+		};
+
+		usb-high-white {
+			function = "usbup";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+		};
+
+		usb-low-white {
+			function = "usbdown";
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+		};
+
+		brightness {
+			function = LED_FUNCTION_BACKLIGHT;
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 19 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		brightness {
+			label = "LEDs";
+			linux,code = <KEY_BRIGHTNESS_ZERO>;
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+		};
+
+		wps {
+			label = "WPS";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			label = "WiFi";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&gpio0 22 GPIO_ACTIVE_LOW>;
+		};
+
+		restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio0 23 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&usb_phy {
+	brcm,ioc = <1>;
+	status = "okay";
+};
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&xhci {
+	status = "okay";
+};
+
+&ports {
+	port@0 {
+		label = "lan4";
+	};
+
+	port@1 {
+		label = "lan3";
+	};
+
+	port@2 {
+		label = "lan2";
+	};
+
+	port@3 {
+		label = "lan1";
+	};
+
+	port@7 {
+		reg = <7>;
+		phy-mode = "internal";
+		phy-handle = <&phy12>;
+		label = "wan";
+	};
+};
+
+&nandcs {
+	nand-ecc-strength = <4>;
+	nand-ecc-step-size = <512>;
+	nand-on-flash-bbt;
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	partitions {
+		compatible = "brcm,bcm4908-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "cferom";
+			reg = <0x0 0x100000>;
+		};
+
+		partition@100000 {
+			compatible = "brcm,bcm4908-firmware";
+			reg = <0x100000 0x3900000>;
+		};
+
+		partition@5800000 {
+			compatible = "brcm,bcm4908-firmware";
+			reg = <0x3a00000 0x3900000>;
+		};
+	};
+};
-- 
2.26.2

