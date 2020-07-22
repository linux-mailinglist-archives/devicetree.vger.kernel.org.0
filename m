Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6492229FE3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jul 2020 21:10:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732526AbgGVTKR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jul 2020 15:10:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732552AbgGVTKQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jul 2020 15:10:16 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ADD6C0619DC
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 12:10:15 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id t11so1764768pfq.11
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 12:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LSzw5Z9vI5ptiBRPoRfqBOqKnLsmDUkdHQCEgOWcVKY=;
        b=BsU4+NGYJPzR9uL6OYvxy1Vzm5RWpI7ySPevIMYa89OtYyvZ9VK1Q4tKDsRYhgNPxc
         /4BW5jK+fEmeDYcQ1M/3sNw4B9IBTs4aAh2iGoaOw9LhIF4WA5R/L4n6J3F/hC62pD9v
         WXu46GB1VyD71a0Q/c1xRVDg7mr8lwRI0z3eM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LSzw5Z9vI5ptiBRPoRfqBOqKnLsmDUkdHQCEgOWcVKY=;
        b=RS20kI4ZP67B/9kpkIk3p3IkGSuChhi/74L/zc2I0T3RbLTuUSONQk/Pc6XbSymxRj
         SMX4BXzKfCz//odZ9UsgzMYA7RPoIWhE1Xm0ThRdiuQ4Zxc1vFJUoSq2mDEc/2wMuEjW
         x83X6rkaySsJwam0M9W13f0UkzRVghzWCDw9DUrgyXJmlGhM5UmyAObJqhAs9/gLVpwR
         sRbt6SYs2hfp0YCmsghBb7SyKJevcvCxPgQfl6I7bYOhWNtQxZcDDI/hA3KabCwCyAZh
         g5bhGpFNTysT19U34KxI/iRgim6kqWvd0qUFTyEfjDSb4EZKSzHtEwbYcjOSpl8Z4Sgg
         lA0g==
X-Gm-Message-State: AOAM530Y9BarpvlSOocrdIuoVA2OhGadZjLoM5bLTmDvV6x/K7b+sJEl
        QrbKVI2IJTpcolC1RRKopPvZ9A==
X-Google-Smtp-Source: ABdhPJwzs0vyfaxwMGzh4yA0b006qnbDHCKlZUyZ/XaiSpVEzJcDgrPLmPQ3c93lds1LUhpAhiNcRQ==
X-Received: by 2002:a62:794e:: with SMTP id u75mr978867pfc.298.1595445014607;
        Wed, 22 Jul 2020 12:10:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:fda7:aaf8:9d1a:6749])
        by smtp.gmail.com with ESMTPSA id n137sm342398pfd.194.2020.07.22.12.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 12:10:13 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 4/6] arm64: dts: rockchip: Add Radxa ROCK Pi 4B support
Date:   Thu, 23 Jul 2020 00:39:47 +0530
Message-Id: <20200722190949.215656-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200722190949.215656-1-jagan@amarulasolutions.com>
References: <20200722190949.215656-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RockPI 4B has AP6256 Wifi/BT, so enable them in 4B dts
instead of enable in common dtsi.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- add radxa,rockpi4b

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 23 ----------
 .../boot/dts/rockchip/rk3399-rock-pi-4b.dts   | 42 +++++++++++++++++++
 3 files changed, 43 insertions(+), 23 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1250c62205a4..e7b11e8fd9b6 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -36,6 +36,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index e163f438f836..678a336010bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -584,17 +584,6 @@ &sdio0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
-	status = "okay";
-
-	brcmf: wifi@1 {
-		compatible = "brcm,bcm4329-fmac";
-		reg = <1>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
-		interrupt-names = "host-wake";
-		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_host_wake_l>;
-	};
 };
 
 &sdmmc {
@@ -663,18 +652,6 @@ u2phy1_host: host-port {
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
-		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
-		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-	};
 };
 
 &uart2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
new file mode 100644
index 000000000000..f0055ce2fda0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel@mentor.com>
+ */
+
+/dts-v1/;
+#include "rk3399-rock-pi-4.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi 4B";
+	compatible = "radxa,rockpi4b", "radxa,rockpi4", "rockchip,rk3399";
+};
+
+&sdio0 {
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
+};
-- 
2.25.1

