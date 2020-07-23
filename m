Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6531A22AB3B
	for <lists+devicetree@lfdr.de>; Thu, 23 Jul 2020 11:03:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728059AbgGWJCd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 05:02:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbgGWJCc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jul 2020 05:02:32 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A43EFC0619DC
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 02:02:32 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id m9so2689245pfh.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 02:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mXAoChgL41EYHlBynT6RAmQ3PERwS+BjK2PhZPY9IXA=;
        b=IAju02F8LxM+WbOeJC3jNS+yeBauCJDh+ckTXRn8GBMqUpo1IvtP8l6GRwhpDk085K
         qhpAHjTjq6OvErA3m5cOuRdNaYEtu/Cgblv2kze7IUwbCKBSBItfhG2vNs+H40W6lzcu
         RdQ32IuJ39Q1nf3gqOf8dpow1NpleNQSXiabo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mXAoChgL41EYHlBynT6RAmQ3PERwS+BjK2PhZPY9IXA=;
        b=JP8QdH4MaOmbsbWPNmw/HUl1GkxhkLggQ4y7Wc/V6/YDr0vpKJAfoSoXvZ5nXNULKi
         vehr1cZav2E+XlPfKeLH934PbATVM2YQlLJMZtMSWi7axWSP+TmCDrCYUb7uYl2aq8x+
         teaNS8JtxnBZLRqYRZJ7zlfmF7qbpwv0bro/t5oRQ2SdFA5kEY2dBBPzQ2ZdJFVNATu6
         Njp45hY+kfebkSUlcdOEaOL/BJi2Babn5gnqm2Sj5sswYIh7rVOxqJED8hF0+0YyXa5n
         /eLpIiZh6Bfm+3p7dy7H2fjQ3qiAg7cfzRfhP2MXfXTYw7RRxWIG5YmWl2gpFnyzKo5O
         gnjA==
X-Gm-Message-State: AOAM5328NM5u9Hwfw2voX9DnY/T9FApjtG1kxqDvmG4erAJlscLfOolz
        vRXgKQeHQzgNtT3kMNKRt31APAfrQ5atiA==
X-Google-Smtp-Source: ABdhPJzLhZ9/DsCLprr+mhWrqXaPevy0rgoslHCs4/ADvwsE25ZOF/lRPYi0y8mtKv465X5WKg0zaQ==
X-Received: by 2002:a05:6a00:10:: with SMTP id h16mr3218673pfk.214.1595494952164;
        Thu, 23 Jul 2020 02:02:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:cbf:ea0:8a30:a3af])
        by smtp.gmail.com with ESMTPSA id k23sm2319383pgb.92.2020.07.23.02.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 02:02:31 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 3/4] arm64: dts: rockchip: Add Radxa ROCK Pi 4B support
Date:   Thu, 23 Jul 2020 14:32:09 +0530
Message-Id: <20200723090210.41201-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200723090210.41201-1-jagan@amarulasolutions.com>
References: <20200723090210.41201-1-jagan@amarulasolutions.com>
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
Changes for v3:
- none
Changes for v2:
- update commit message
- add radxa,rockpi4b

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 23 ----------
 .../boot/dts/rockchip/rk3399-rock-pi-4b.dts   | 42 +++++++++++++++++++
 3 files changed, 43 insertions(+), 23 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 42f9e1861461..8832d05c2571 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -34,6 +34,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
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

