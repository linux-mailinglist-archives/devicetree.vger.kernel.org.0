Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5C9C2E20C8
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 20:20:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727225AbgLWTRd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 14:17:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726384AbgLWTRd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 14:17:33 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 151F5C0617A6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:16:53 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id 11so10897205pfu.4
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qhp6q+QBdG1WW7qenApuL0xvi4ljbicDcoMAKnT28Zc=;
        b=BKd0gmyaN1VGhpAPkmphgaKf0IfBekNhHWpA34wieyhk3fQpSga44Zlih2ixTE1FmY
         ld6F48X6b9u5CRK+9cU1HS9hVmZm5lmLoY9GZZjhzQjGguc/oH7NapcRW2hXSts+Iq+R
         FmdK35es4TSHG0VzfxiK7KJEBQAyI+rGVAK2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qhp6q+QBdG1WW7qenApuL0xvi4ljbicDcoMAKnT28Zc=;
        b=rEiWsL5X0pqL/tv4xzj3w/3xPCBIG7cKGxFEjSiyjNQGYX3cE7kmkvbp/nrKPkmGMd
         diL6MO6xZq/Hth5FVQYm+KTGqj+Ml2is3R4t4ZN7WT7AyeMu5syKTvp2ry0p9AHSBTe5
         8H7EU8pau10yTuGIAGcZ0MavEj8+nzjFRRV5UfJ9fHBTQ4D7wukZqTIlhhtuczS79oQy
         xraqBvxUGA5iiSmYhsDvzhW/ZUg6K3LMkPUHg2zcXL2Q0IZsncbGjOF/YRzwlOr3N43w
         X8yMwArytNspl6R03SNJiLEb80BQgAxDHlQUs2CUa/B/ncTxdbpOWNUCw0u60PMrfXRU
         Es9Q==
X-Gm-Message-State: AOAM531xNE6VImmMqr/8964+Yt2DWFZ3L+O1CcwXVsNBSklX3Ji5MfBw
        GNf/ShBdNhb2WkxpiIKSU+V6/A==
X-Google-Smtp-Source: ABdhPJxDkZNiUeZCBlgr0bVt5R7MhD/a9Io5mgKDvVxS1PNVfl7x0p7h7lC9IVu88o1R+ygUxidthA==
X-Received: by 2002:a63:1142:: with SMTP id 2mr25898480pgr.263.1608751012585;
        Wed, 23 Dec 2020 11:16:52 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:29f0:6e54:608c:e1b9])
        by smtp.gmail.com with ESMTPSA id i2sm397640pjd.21.2020.12.23.11.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 11:16:51 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Francesco Utel <francesco.utel@engicam.com>,
        Mirko Ardinghi <mirko.ardinghi@engicam.com>
Subject: [PATCH 3/5] ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 board
Date:   Thu, 24 Dec 2020 00:44:00 +0530
Message-Id: <20201223191402.378560-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201223191402.378560-1-jagan@amarulasolutions.com>
References: <20201223191402.378560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MicroDev 2.0 is a general purpose miniature carrier board with CAN,
LTE and LVDS panel interfaces.

Genaral features:
- Ethernet 10/100
- USB Type A
- Audio Out
- microSD
- LVDS panel connector
- Wifi/BT (option)
- UMTS LTE with sim connector (option)

MicroGEA STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

MicroGEA STM32MP1 needs to mount on top of this MicroDev 2.0 board
for creating complete MicroGEA STM32MP1 MicroDev 2.0 Carrier board.

Add support for it.

Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
Signed-off-by: Francesco Utel <francesco.utel@engicam.com>
Signed-off-by: Mirko Ardinghi <mirko.ardinghi@engicam.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/stm32mp157a-engicam-microdev2.0.dtsi  | 44 +++++++++++++++++++
 ...32mp157a-microgea-stm32mp1-microdev2.0.dts | 21 +++++++++
 3 files changed, 66 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-engicam-microdev2.0.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9f9f3e49132a..b4a9cd071f99 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1071,6 +1071,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp157a-dhcor-avenger96.dtb \
 	stm32mp157a-dk1.dtb \
 	stm32mp157a-iot-box.dtb \
+	stm32mp157a-microgea-stm32mp1-microdev2.0.dtb \
 	stm32mp157a-stinger96.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dhcom-picoitx.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157a-engicam-microdev2.0.dtsi b/arch/arm/boot/dts/stm32mp157a-engicam-microdev2.0.dtsi
new file mode 100644
index 000000000000..a5c04eb80a99
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-engicam-microdev2.0.dtsi
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutons(India)
+ */
+
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxaa-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	aliases {
+		serial0 = &uart4;
+		serial1 = &uart8;
+	};
+};
+
+&sdmmc1{
+	bus-width = <4>;
+	disable-wp;
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	st,neg-edge;
+	vmmc-supply = <&vdd>;
+	status = "okay";
+};
+
+&uart4{
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_pins_a>;
+	pinctrl-1 = <&uart4_sleep_pins_a>;
+	pinctrl-2 = <&uart4_idle_pins_a>;
+	status = "okay";
+};
+
+/* J31: RS323 */
+&uart8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart8_pins_a>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
new file mode 100644
index 000000000000..51707bfb649d
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutons(India)
+ */
+
+/dts-v1/;
+#include "stm32mp157.dtsi"
+#include "stm32mp157a-engicam-microdev2.0.dtsi"
+#include "stm32mp157a-microgea-stm32mp1.dtsi"
+
+/ {
+	model = "Engicam MicroGEA STM32MP1 MicroDev 2.0 Carrier Board";
+	compatible = "engicam,microgea-stm32mp1-microdev2.0",
+		     "engicam,microgea-stm32mp1", "st,stm32mp157";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
-- 
2.25.1

