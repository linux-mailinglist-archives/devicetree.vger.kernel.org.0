Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD94B27BF8A
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 10:33:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727650AbgI2Ict (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 04:32:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727724AbgI2Ict (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 04:32:49 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5CC4C061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:32:48 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id l126so3811017pfd.5
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=L5yNqTzaLK6KmQpIwy3KjKzMTJ7xSH1GmPCrDaa4rEA=;
        b=A5B6/67azxNmrW5BKiv2tz08gGlvJDyOzqVsX9u8MtNWw3bbCC4kqJ3dWQKoVLAWLN
         FXHCGKkvYSiZylDk1mMk4gujOGYEGYOSUnTOSt/JKXseFr/6gY7cn6RE+dKp+agED0uq
         v3teiErifiHoDDmkZmfbQIWNo/GGTzwE3SJv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L5yNqTzaLK6KmQpIwy3KjKzMTJ7xSH1GmPCrDaa4rEA=;
        b=KV/W5z3x9hJSqnGROseyTbcmpTUDpT6QjEog3yOZDwefDQ6kLliMMr3W0re2j+7RtT
         MI7YHSgD0vlfXoLX0qH7IR/F9t/AxmMiJXl/osJU35ZIegRr6QbjeGw+tyQFyscopklN
         06UPnpTO/BlqxzyNczA9h3v0/W5dp4b2enLsg6iRZHiFP5m/sFUFcGHBXk2Fg/6GBzdu
         vdu49l3DKuGYIuvppTWRKpapofVrPiKKi4Y0+9pg0uA1rTyUxOPqq5oodI+zOROV+3Kk
         569iLkYqho/OoJyWBPnkdRhKnq0V2rptCZ/vx/kY6pDP+6hvWtpin664lPTE20OvsYGQ
         6gQg==
X-Gm-Message-State: AOAM532PJQTUQ4kpmiNbI9CjvL++Nfy8ULPVghOO9dAAgi/wT4JB4rXs
        2TCYYrynyGfam1S3Bo2uAdqD01/B3FsVlHES
X-Google-Smtp-Source: ABdhPJyH+I8d0T2lzk4NlGY6ArGrVQlHmox3Mrb4NznqoQrA3UAV6pHNF9hyW5KsR/PIQN7o8/ODrA==
X-Received: by 2002:a17:902:bccc:b029:d2:8cba:8f7e with SMTP id o12-20020a170902bcccb02900d28cba8f7emr3462956pls.3.1601368368207;
        Tue, 29 Sep 2020 01:32:48 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch ([2405:201:c809:c7d5:b511:310d:8495:d767])
        by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 01:32:47 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 2/7] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
Date:   Tue, 29 Sep 2020 14:02:12 +0530
Message-Id: <20200929083217.25406-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
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

SOM's like PX30.Core needs to mount on top of this Evaluation board
for creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
Changes for v4:
- none
Changes for v3:
- sort regulator nodes properties
- drop cap-mmc-highspeed property
- add Amarula Solutions copyright
Changes for v2:
- move carrier enablement nodes in carrier dtsi

 .../dts/rockchip/px30-engicam-common.dtsi     | 39 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |  7 ++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
new file mode 100644
index 000000000000..bd5bde989e8d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/ {
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";	/* +5V */
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
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
+	cap-sd-highspeed;
+	card-detect-delay = <800>;
+	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	vqmmc-supply = <&vcc_3v3>;
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

