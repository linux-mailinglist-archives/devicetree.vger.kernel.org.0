Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0DB2325DFE
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 08:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbhBZHFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 02:05:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbhBZHFY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 02:05:24 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABAFC061223
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:04:04 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id j24so5653749pfi.2
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5U1R57iUzcqsiCzZID2E6Jy3D2YQo5NR8w1jPRJAV0w=;
        b=nIpDZ8tOs4rxSu1bh8lvZhHXIpItVvp+w7pLEEJ0jFI4z2WKyn8sZDZDlZAyuv85o9
         sjaDg0bOffYPA84rCWazLDtBe0xiermGrJLYdxta0BT/MrJWqKhwGWg28fC0jEAnzQo5
         HIOQYH6ZK8cfpYDtvC8TK5x7/FHSzcTfICnn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5U1R57iUzcqsiCzZID2E6Jy3D2YQo5NR8w1jPRJAV0w=;
        b=HovX22Z/RuW168WOXtUqcIqeiPjosjnk+HYiRChnZ95vzCY5D7c/XSxYFqVOzXdfrr
         uLb9QCDV8RY9DzDxVyDMJPDVxSSXpBaVRjpB3GoZsHpcXXnPVkL3tcWmEtLks3ueVFNw
         xdVNrOno+6xL/65oZzXY8vZ+DgWOENp+i9mObrfl5P+nAnTXqOLUn7KW8tnuto4fbZBV
         RkjWfunPYe0mtMmwbMdf17gxJzd0tACA0zmVyi5muS5v3VDwugJbus7JWXnn+v1BDeoa
         NIwYS3YuIA6FabFIK9mEJ59RQwUDiOj5U3Y2DbESOMK7xFcvO0/pzwp14vJVG0Rw8REa
         nFzA==
X-Gm-Message-State: AOAM531GZPBbla/ihnmsiQHfMQFBAQUoqdFkmSBdi6+k1oCZRW6ejH+j
        5BjOvuZpNLx+tWLkNZK7KB+riQ==
X-Google-Smtp-Source: ABdhPJy+QVl/VBrz/AS373j+T2Ra111WO1v3ce2rvqbsN55Az3XrJjnd83Q/gqfSvmJU65gTe0jYdw==
X-Received: by 2002:a63:5904:: with SMTP id n4mr1714381pgb.446.1614323044468;
        Thu, 25 Feb 2021 23:04:04 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id f7sm7592156pjh.45.2021.02.25.23.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:04:04 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 10/10] ARM: dts: stm32: Add Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
Date:   Fri, 26 Feb 2021 12:33:04 +0530
Message-Id: <20210226070304.8028-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210226070304.8028-1-jagan@amarulasolutions.com>
References: <20210226070304.8028-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board.

Genaral features:
- LCD 7" C.Touch
- microSD slot
- Ethernet 1Gb
- Wifi/BT
- 2x LVDS Full HD interfaces
- 3x USB 2.0
- 1x USB 3.0
- HDMI Out
- Mini PCIe
- MIPI CSI
- 2x CAN
- Audio Out

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

i.Core STM32MP1 needs to mount on top of this Evaluation board for
creating complete i.Core STM32MP1 EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 arch/arm/boot/dts/Makefile                    |  1 +
 .../stm32mp157a-icore-stm32mp1-edimm2.2.dts   | 47 +++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 6dc39bddaf7e..e86c46d7ca66 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1074,6 +1074,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp157a-microgea-stm32mp1-microdev2.0.dtb \
 	stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dtb \
 	stm32mp157a-icore-stm32mp1-ctouch2.dtb \
+	stm32mp157a-icore-stm32mp1-edimm2.2.dtb \
 	stm32mp157a-stinger96.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dhcom-picoitx.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
new file mode 100644
index 000000000000..ec9f1d1cd50f
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutons(India)
+ */
+
+/dts-v1/;
+#include "stm32mp157.dtsi"
+#include "stm32mp157a-icore-stm32mp1.dtsi"
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxaa-pinctrl.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit";
+	compatible = "engicam,icore-stm32mp1-edimm2.2",
+		     "engicam,icore-stm32mp1", "st,stm32mp157";
+
+	aliases {
+		serial0 = &uart4;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&sdmmc1 {
+	bus-width = <4>;
+	disable-wp;
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	st,neg-edge;
+	vmmc-supply = <&v3v3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default", "sleep", "idle";
+	pinctrl-0 = <&uart4_pins_a>;
+	pinctrl-1 = <&uart4_sleep_pins_a>;
+	pinctrl-2 = <&uart4_idle_pins_a>;
+	status = "okay";
+};
-- 
2.25.1

