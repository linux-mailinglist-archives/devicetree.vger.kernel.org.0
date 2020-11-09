Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 475C12AC363
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 19:11:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730678AbgKISLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 13:11:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730591AbgKISLJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 13:11:09 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89C73C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 10:11:08 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id c20so8902583pfr.8
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 10:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tIeFiQnLUuCZywXPLVslCtTSylPuUHXE2jKWwkzFbJ0=;
        b=TfEF0NM22W03n74gvA1fowPmhoGvIxqKHADn7anF50EsdtaN3gAuVwEdZ8IOgY7NYL
         ENivVgLx7oCw7vdizPPa4fhaEoiuay2dTVq1Xmzu9ITH97mr6X83SeOuLMPSvR9GL+vE
         h1JFJwd3Pd5mDaDGF+kp7V0aFVamibzl7+0n0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tIeFiQnLUuCZywXPLVslCtTSylPuUHXE2jKWwkzFbJ0=;
        b=ixts2dHJuJ3iKpWoezuTV7RpNrPyDju5D5UF2FHeW9P2CJxj20yt6utWm3unNUJzAZ
         wiWu/Ain6d/Vxm+HC6oh+GcIJPVgiS9gSHVIrOe4m6BoOY9C9koL0KthIMJxPppkUdya
         v2h/MhwBTmI+pXwfNFjSGg9LOLrhVbRlqeLzxGktAmEgdCGx4rU926LLc11Ui0Etn1fr
         SrXvVERBQJma2ycGEKASujPXhgTz35SfyZrNMao1lqVoIX+tPyxCaSthCCxN0Zhfl0lj
         mNuRIl5iaqig8LOGuoGPfTuZchjpv38YwT5KBhjBHcQvFbOQhbeGuP4NQZ9b6fTlGUtR
         bGWA==
X-Gm-Message-State: AOAM533fVpMhEZ9nujVg9WSHYlX0UKSmfo4sYhzgdph4PtfC2N+EaNP1
        7A7ktWN8YMjHPBl0Puq+BGE6Tw==
X-Google-Smtp-Source: ABdhPJyE0V488QzrR1u+TMMxKwl6j3KSr7TaKRyWlI9fvEUjFDQpdEnszqr/B9XslV9/Ef/CFmxL8g==
X-Received: by 2002:a63:7a51:: with SMTP id j17mr13437221pgn.186.1604945467899;
        Mon, 09 Nov 2020 10:11:07 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
        by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 10:11:07 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 6/9] arm64: dts: rockchip: px30-engicam: Add BT support
Date:   Mon,  9 Nov 2020 23:40:14 +0530
Message-Id: <20201109181017.206834-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Suniel Mahesh <sunil@amarulasolutions.com>

Engicam PX30 carrier boards like EDIMM2.2 and C.TOUCH2.0 have
an onboard Sterling-LWD Wifi/BT chip based on BCM43430 connected
on the UART bus.

UART bus on the design routed via USB to UART CP20x bridge. This
bridge powered from 3V3 regualtor gpio.

This patch adds BT enablement nodes for these respective boards.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../arm64/boot/dts/rockchip/px30-engicam-common.dtsi | 12 ++++++++++++
 .../boot/dts/rockchip/px30-engicam-ctouch2.dtsi      | 10 ++++++++++
 .../dts/rockchip/px30-engicam-px30-core-edimm2.2.dts | 10 ++++++++++
 3 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index 92681ccf50f1..eb2be7893863 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -40,6 +40,18 @@ sdio_pwrseq: sdio-pwrseq {
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
 	};
+
+	vcc3v3_btreg: vcc3v3-btreg {
+		compatible = "regulator-gpio";
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_enable_h>;
+		regulator-name = "btreg-gpio-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		states = <3300000 0x0>;
+	};
 };
 
 &sdio {
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
index d5708779c285..bf10a3d29fca 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -8,6 +8,12 @@
 #include "px30-engicam-common.dtsi"
 
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -18,3 +24,7 @@ wifi_enable_h: wifi-enable-h {
 &sdio_pwrseq {
 	reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 };
+
+&vcc3v3_btreg {
+	enable-gpio = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
index 913444548b59..d759478e1c84 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
@@ -21,6 +21,12 @@ chosen {
 };
 
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -31,3 +37,7 @@ wifi_enable_h: wifi-enable-h {
 &sdio_pwrseq {
 	reset-gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_LOW>;
 };
+
+&vcc3v3_btreg {
+	enable-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+};
-- 
2.25.1

