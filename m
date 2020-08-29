Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74BE52568E2
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 17:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728423AbgH2P64 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 11:58:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728414AbgH2P6o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 11:58:44 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E88D2C06123C
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:43 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id y6so1046947plt.3
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nxwHm2VuekYt0XLlgyTrwGM7XhV6Ku6W16NQioEm9rE=;
        b=HGBNFfvyMj8caxJEkMJIH+GwBZwuc1YGxYnJDZg72pKvag+ZXcPerRI1ZfqsUqbNFV
         UA8Qw+ucvmwZXAS/GwB/c5PwyslGZ2Pqwyxw+wQYAgoeY3lpgaZuFiuKrEv+1sXyko9y
         L4KcLYJkntDkdfdN47yYDBJP0UieAFTndfERE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nxwHm2VuekYt0XLlgyTrwGM7XhV6Ku6W16NQioEm9rE=;
        b=kbrSu1c2Yk+s/aX0J+JH3Et3WiINpifKuT3W53lzy/5lRVcXN2KEhoIMVVSseOy2oB
         FI3KsV0EnOs3OjZmTdbztlBq6XFnI98z9o/xxX5UUNSLToV7M4FQ060jQsy8/8dX7VX7
         H3jslWmQLLEiOl4U2QS03uSK4ew7UtR4tQx7+ye21t2R7VZXgWPwGMUjBDGMYiQewDHh
         YY/EnRQUry5StIrIhSpuR5MJoyCxRxUWz0irOxXC9v1AlFW+/rlcKxiGUYERPCNsEjzG
         9pAoPbYMZlmpFY+DAmQjQJuS/0PZpWeDl9WFepKNXcRu2k+Rg8iAvXxqzZEOkUOSh3Ro
         qwNA==
X-Gm-Message-State: AOAM532qnriUtyBETuEuPH2fTaBff+kuaD/Rg943jJ6Hnbjt037p5emX
        HjAXCRzeHyaisSs9ypdNw4qa5w==
X-Google-Smtp-Source: ABdhPJzce9I/TRSbam4Qr9dItMOQaXfYbhUChv8CxER+mpC8zi9SawY3xte4Hpdg7etGhAQzjPSnow==
X-Received: by 2002:a17:90b:100e:: with SMTP id gm14mr3474554pjb.39.1598716722795;
        Sat, 29 Aug 2020 08:58:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
        by smtp.gmail.com with ESMTPSA id j20sm3131714pfi.122.2020.08.29.08.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 08:58:42 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 2/7] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
Date:   Sat, 29 Aug 2020 21:28:18 +0530
Message-Id: <20200829155823.247360-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
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

SOM's like PX30.Core needs to mount on top of this Evaluation board
for creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- move carrier enablement nodes in carrier dtsi

 .../dts/rockchip/px30-engicam-common.dtsi     | 39 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |  7 ++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
new file mode 100644
index 000000000000..4e85c1a690e5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/ {
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";	/* +5V */
+	};
+};
+
+&gmac {
+	clock_in_out = "output";
+	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 50000 50000>;
+	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <800>;
+	vqmmc-supply = <&vcc_3v3>;
+	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
new file mode 100644
index 000000000000..cb00988953e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1

