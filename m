Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F58E325DFC
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 08:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbhBZHFe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 02:05:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230134AbhBZHFJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 02:05:09 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59227C06121E
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:57 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id v200so5663232pfc.0
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zRx9AiKQC/slnSNzXR9EFgvzT3DZpBE4nYv/SE8+b14=;
        b=QfcyLwnQSH+FrQRCg4FzWeLiwqE0R+P4SzMJ1mks9ipHjVCeaUD5nl4hWCcJEjDqC4
         rrfYZBT1goEDnecIfnf4YVSwILMZWhkvX2XFJ52YQtyPvpUkRH155BlC+DP5TW6tevsG
         LoRuPEshQ91oYU185Ngi1P5lsDIb0JQgoSSyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zRx9AiKQC/slnSNzXR9EFgvzT3DZpBE4nYv/SE8+b14=;
        b=BOvdTcl5Jgm8sWLljvPo6Fd+HD72OLEdB5sBuHwwczBt8mhy+8tTzEOix8JlNpCElU
         mUEfQ3z55dFsQdw4Nu+TjDcoED7F8Qye0kFlbFHD0v+XwnrowUymYl3vmmYrl29UHHRu
         1nYmwHPp7sFvWKrOrqwefiT6dHb/PLcpuDxPpGGpNsb2s0k0Kin/HmhjNgMgW0Yru5P1
         YW3RkgXqczILvDRA3VBe//95SDY8j5TP8zYXar3ltwIktpM1Y0ophnQkBYSRd3uf17ex
         zdoMMZNXA/8sv32YryXV6qbB3kcjusOSo1Yxfm7/e0Ho0HP+Dtp1VK5ewadx/ZWplXfj
         J1sQ==
X-Gm-Message-State: AOAM532SaQMkUpmIu3c4JfHC6bxNzmVfrJ3+wd3eZAWCZq+8DKFAWApl
        E9bq/q21eSkR6mLec9AM4rkxXA==
X-Google-Smtp-Source: ABdhPJzZ0RNGbFGasTbv8VW8sDcLxEsqYE/deHqBqAntJJhILzIhTTDrgcggBBBo3kq6RaR89vqikA==
X-Received: by 2002:a63:d18:: with SMTP id c24mr1665409pgl.442.1614323036817;
        Thu, 25 Feb 2021 23:03:56 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id f7sm7592156pjh.45.2021.02.25.23.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:03:56 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 08/10] ARM: dts: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0
Date:   Fri, 26 Feb 2021 12:33:02 +0530
Message-Id: <20210226070304.8028-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210226070304.8028-1-jagan@amarulasolutions.com>
References: <20210226070304.8028-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engicam C.TOUCH 2.0 is an EDIMM compliant general purpose Carrier
board.

Genaral features:
- Ethernet 10/100
- Wifi/BT
- USB Type A/OTG
- Audio Out
- CAN
- LVDS panel connector

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

i.Core STM32MP1 needs to mount on top of this Carrier board for
creating complete i.Core STM32MP1 C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 arch/arm/boot/dts/Makefile                    |  1 +
 .../stm32mp157a-icore-stm32mp1-ctouch2.dts    | 47 +++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 1332622a3f9f..6dc39bddaf7e 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1073,6 +1073,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp157a-iot-box.dtb \
 	stm32mp157a-microgea-stm32mp1-microdev2.0.dtb \
 	stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dtb \
+	stm32mp157a-icore-stm32mp1-ctouch2.dtb \
 	stm32mp157a-stinger96.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dhcom-picoitx.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
new file mode 100644
index 000000000000..d3058a036c74
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
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
+	model = "Engicam i.Core STM32MP1 C.TOUCH 2.0";
+	compatible = "engicam,icore-stm32mp1-ctouch2",
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

