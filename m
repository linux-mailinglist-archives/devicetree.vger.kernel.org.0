Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA5F944D966
	for <lists+devicetree@lfdr.de>; Thu, 11 Nov 2021 16:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234009AbhKKPtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Nov 2021 10:49:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234010AbhKKPtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Nov 2021 10:49:01 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D1EC061767
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 07:46:12 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id x7so4404334pjn.0
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 07:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gdTkR49a2fjsLz2HZrs6mipLH/WYyEV/YROuBEVCTvc=;
        b=TcRLIlJ+XSCZ39y/QjV+b+52OgxQtLsaIBvwAFO3+lLtP2b208pm6yoqMgAjSDP8gm
         8+ZmRw6cQqpNCx/uFNKcZhBi1AebPoIf6PTP15mMGcUpuzhvbVqPnhHQ9N8wKNUq7J1x
         ZFAzMrRxQCjqHq8kFOEPCL7AQBmWl1sb82bKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gdTkR49a2fjsLz2HZrs6mipLH/WYyEV/YROuBEVCTvc=;
        b=KopENNHqUx+FwzmY1ewvfU2k9WITTcEPJxDAKUpy0mq46O2fFbukvzNQ0mnIK7A0YR
         i4zEJNWL0a/MFuGTNJ3U77yMzVHCbCnaHVF+SUo4M0iLdHgi8sjhWUftPrt4sRPraVH7
         +NP9CuQLhlODC7fNNIbhNIwkSsyBWj3opPsfrH9VIMhtig8YGUCwho8GRnhedCq1A4T6
         avkxHdh5MR3ChUr+Uegi9dU93kYZa87aoA1HSot6q+kE0Cn6ziiDedqAeylsTSOrkEnC
         XdN/RehM/XdFqt1ZsLIcdhYTVHBDnKyuzsADZFCCodXHcIWqMd69v6AQ39eQjYKLXCxb
         lcCw==
X-Gm-Message-State: AOAM533873DoQH+0buC2oUyuA91oVTc0D0w3broMIzxRVdfsPUlTmbnZ
        L/ZehuZutOPqcI/OdusZtFZpwA==
X-Google-Smtp-Source: ABdhPJyKSFVtrhqu4iMD2tbs6mrsV3pZeqAmyazdKIQ4OxQiHBYF0P3har+ERDcfRZXS1g8Awncltw==
X-Received: by 2002:a17:902:f24a:b0:141:c6fc:2e18 with SMTP id j10-20020a170902f24a00b00141c6fc2e18mr9195025plc.55.1636645571516;
        Thu, 11 Nov 2021 07:46:11 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:3041:135c:4e21:846c])
        by smtp.gmail.com with ESMTPSA id m15sm2782122pjf.49.2021.11.11.07.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 07:46:11 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/3] ARM: dts: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" OF
Date:   Thu, 11 Nov 2021 21:15:57 +0530
Message-Id: <20211111154557.852637-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211111154557.852637-1-jagan@amarulasolutions.com>
References: <20211111154557.852637-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ARM: dts: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0

Engicam C.TOUCH 2.0 is an EDIMM compliant general purpose Carrier
board.

Genaral features:
- Ethernet 10/100
- Wifi/BT
- USB Type A/OTG
- Audio Out
- CAN
- 10" LVDS Panel (SN65DSI84 DSI-LVDS bridge on SoM)

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.

i.Core STM32MP1 needs to mount on top of C.TOUCH 2.0 carrier with
pluged 10.1" OF for creating complete i.Core STM32MP1 C.TOUCH 2.0
10.1" Open Frame board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/Makefile                    |   1 +
 ...tm32mp157a-icore-stm32mp1-ctouch2-of10.dts | 132 ++++++++++++++++++
 2 files changed, 133 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 0de64f237cd8..641220e970e8 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1140,6 +1140,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp157a-microgea-stm32mp1-microdev2.0.dtb \
 	stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dtb \
 	stm32mp157a-icore-stm32mp1-ctouch2.dtb \
+	stm32mp157a-icore-stm32mp1-ctouch2-of10.dtb \
 	stm32mp157a-icore-stm32mp1-edimm2.2.dtb \
 	stm32mp157a-stinger96.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts
new file mode 100644
index 000000000000..351be43b3d39
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts
@@ -0,0 +1,132 @@
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
+	model = "Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1\" Open Frame";
+	compatible = "engicam,icore-stm32mp1-ctouch2-of10",
+		     "engicam,icore-stm32mp1", "st,stm32mp157";
+
+	aliases {
+		serial0 = &uart4;
+	};
+
+	backlight: backlight {
+		compatible = "gpio-backlight";
+		gpios = <&gpiod 13 GPIO_ACTIVE_HIGH>;
+		default-on;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	panel {
+		compatible = "ampire,am-1280800n3tzqw-t00h";
+		backlight = <&backlight>;
+		power-supply = <&v3v3>;
+
+		port {
+			panel_in_lvds: endpoint {
+				remote-endpoint = <&bridge_out>;
+			};
+		};
+	};
+};
+
+&dsi {
+	status = "okay";
+	phy-dsi-supply = <&reg18>;
+
+	ports {
+		port@0 {
+			reg = <0>;
+			dsi_in: endpoint {
+				remote-endpoint = <&ltdc_ep0_out>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			dsi_out: endpoint {
+				remote-endpoint = <&bridge_in>;
+			};
+		};
+	};
+};
+
+&i2c6 {
+	i2c-scl-falling-time-ns = <20>;
+	i2c-scl-rising-time-ns = <185>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c6_pins_a>;
+	pinctrl-1 = <&i2c6_sleep_pins_a>;
+	status = "okay";
+
+	bridge@2c {
+		compatible = "ti,sn65dsi84";
+		reg = <0x2c>;
+		enable-gpios = <&gpiof 15 GPIO_ACTIVE_HIGH>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				bridge_in: endpoint {
+					remote-endpoint = <&dsi_out>;
+					data-lanes = <0 1>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				bridge_out: endpoint {
+					remote-endpoint = <&panel_in_lvds>;
+				};
+			};
+		};
+	};
+};
+
+&ltdc {
+	status = "okay";
+
+	port {
+		ltdc_ep0_out: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&dsi_in>;
+		};
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

