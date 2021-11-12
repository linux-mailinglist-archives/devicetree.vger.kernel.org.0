Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6ADDE44E895
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 15:24:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232299AbhKLO1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 09:27:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231718AbhKLO07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 09:26:59 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38E3EC061766
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 06:24:09 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id g18so8602259pfk.5
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 06:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ilsk+MaRfmtCqUcT3SwAuDne2pJc5N62fUP65s6Y02I=;
        b=XWDsDubF2gjeTUcY0wJ5xYscXaFEhrGJTeS5cC41iu64kDeHIzKtRtX3pDwleuE88y
         TgSD6/RmExP6Lmi1zcCAGZnFVOe0qNAt+OP8cEn09U8h55dXSABwYjY71HVVZ2F1BDyt
         fWuETgJ+H61a8luchtOm/mGC/vr8L7BpjGWKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ilsk+MaRfmtCqUcT3SwAuDne2pJc5N62fUP65s6Y02I=;
        b=G28WH8b51TiktceTPewLOiRpceaoJwwb+3A0kmOtCGAsNsctA76jBXRc4WmoYVNWc6
         6eM3Qzj1qw1yK2qQhthJiStcxBgRnzEXN9X3DyERqMGSvE72WvJX8yL5u/+vXQI9xh25
         kBo3ZSXpQSe3nqJSEbtsdHCvIX+67ZhGSJJICRxMz8AYB1t2Q3MXLwCl5jkdzruOc01u
         Qe0tMsfCOLIrKZ26nm0P9YLq93dTDBPVFFC6N+HgC2qWMd47rKD/4Z8XbbDvRE9r5/zU
         JzfsljcLkVQaREJYiodkZdl0LJk5eVnYSRyj/dkvKxQBk3rM2jgaQSODPu/Lla9o24IV
         1rng==
X-Gm-Message-State: AOAM530sEb7WssfVo2/X8lDHmmpXIaCUGj3T0TiiQHEGops68bnn+B4X
        ELsgCZzatDt0fgXcj3Kbv1fwbA==
X-Google-Smtp-Source: ABdhPJxp4hPp/X7DFL0yQUq6jyg7zfYLXscjglRLdO0i5i+wDpxfwkrtU85HxJQRA1Jr6XWXofGlZg==
X-Received: by 2002:a63:556:: with SMTP id 83mr10222511pgf.222.1636727048728;
        Fri, 12 Nov 2021 06:24:08 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:828f:77c4:f985:d787])
        by smtp.gmail.com with ESMTPSA id l6sm7702271pfc.126.2021.11.12.06.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 06:24:08 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards
Date:   Fri, 12 Nov 2021 19:53:59 +0530
Message-Id: <20211112142359.320798-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch fixes the Bluetooth on ROCK Pi 4 boards.

ROCK Pi 4 boards has BCM4345C5 and now it is supported
on Mainline Linux, brcm,bcm43438-bt still working but
observed the BT Audio issues with latest test.

So, use the BCM4345C5 compatible and its associated
properties like clock-names as lpo and max-speed.

Attach vbat and vddio supply rails as well.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts | 7 +++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts      | 7 +++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts      | 7 +++++--
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index dfad13d2ab24..5bd2b8db3d51 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -35,13 +35,16 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index 6c63e617063c..cf48746a3ad8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -34,13 +34,16 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 99169bcd51c0..57ddf55ee693 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -35,14 +35,17 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
 
-- 
2.25.1

