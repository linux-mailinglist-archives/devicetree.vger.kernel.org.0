Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E5C22AC357
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 19:11:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730571AbgKISLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 13:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730634AbgKISLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 13:11:05 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4604BC0613D3
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 10:11:04 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id w6so3393027pfu.1
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 10:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Oy1WSzwflsIVOZ5/8uOOaITBP+5WayH2aQR8Kgtsxu4=;
        b=dtzywe1cxALk0HOLgXYLQHuMEw5wtkpRrCRO1LcqdGzpqPSjpudcguae2oXb17dbk/
         GwUqqWz9f731aSDaicAPQAXJQfmD1F/4rxNNN5d78ecdbyQd5Xd9YCBSSccmqBfXU2XB
         6E8gvPn/7KpyJ06lM0tNavY5VEgpSHiI/6i+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Oy1WSzwflsIVOZ5/8uOOaITBP+5WayH2aQR8Kgtsxu4=;
        b=BTNy4s2s8LllsMjBC4c9pHm6D3fvP1i5tO6HVNYkA3UKagk43UP0ea1ajboDzZvzLV
         rmdRZ8tTJGvLGYX/fEmSQtCBM1MTslJntUALxH90/QTEO8I5XkXEJ6NjlP/96Bp2ED37
         j55X1ysnDYgpXiHKQHQKtBAM1s0A0ucRChc1Q/RaTMES5EHOx/dTrWGwwm3NIM/nU28r
         zcY5J1ek/Lk2iUzH6Qi6is2G5qe65g1r6wikQnzQdMAhdu9+ImCViujOr/h3i+IyLu8x
         3Puv5aLuEve6LE9C6uhhPZgZr166nDJRJAOOmu0Vs5ALmXQm+s1lBFGULHvGc7Q/3lyf
         SeJA==
X-Gm-Message-State: AOAM532pInIROqa/8ZNbakRexjL8E0MAr1ASn6OkT79Wp18MBc0tzYzF
        V0naX9xvSFlBySYtEyRNTSNK8w==
X-Google-Smtp-Source: ABdhPJwwjh5/eOsviuhwmOZ4kdqHmmRdEhkA7XeJSn1GUE3T5tptRqYWzbbTsQov7XVLc6W81o+9Fw==
X-Received: by 2002:a63:f611:: with SMTP id m17mr13686101pgh.178.1604945463867;
        Mon, 09 Nov 2020 10:11:03 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
        by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 10:11:03 -0800 (PST)
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
Subject: [PATCH 5/9] arm64: dts: rockchip: px30-engicam: Add WiFi support
Date:   Mon,  9 Nov 2020 23:40:13 +0530
Message-Id: <20201109181017.206834-6-jagan@amarulasolutions.com>
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
on the SDIO bus.

The SDIO power sequnce is connacted with exteernal 32KHz oscillator
and it require 3V3 regulator input.

This patch adds WiFi enablement nodes for these respective boards.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/rockchip/px30-engicam-common.dtsi     | 45 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    | 12 +++++
 .../px30-engicam-px30-core-edimm2.2.dts       | 12 +++++
 3 files changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index 8fdd7ff2fdf9..92681ccf50f1 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -14,6 +14,51 @@ vcc5v0_sys: vcc5v0-sys {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	xin32k: xin32k {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+	};
+
+	vcc3v3_rf_aux_mod: vcc3v3-rf-aux-mod {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_rf_aux_mod";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&xin32k>;
+		clock-names = "ext_clock";
+		post-power-on-delay-ms = <80>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+	};
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	clock-frequency = <50000000>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+	};
 };
 
 &gmac {
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
index 58425b1e559f..d5708779c285 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -6,3 +6,15 @@
  */
 
 #include "px30-engicam-common.dtsi"
+
+&pinctrl {
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdio_pwrseq {
+	reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
index e54d1e480daa..913444548b59 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-edimm2.2.dts
@@ -19,3 +19,15 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 };
+
+&pinctrl {
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <1 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdio_pwrseq {
+	reset-gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_LOW>;
+};
-- 
2.25.1

