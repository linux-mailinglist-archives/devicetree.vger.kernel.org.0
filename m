Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D49082C1C93
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 05:13:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728721AbgKXENP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 23:13:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726839AbgKXENO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 23:13:14 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E89C0613CF
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 20:13:14 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id s63so6420359pgc.8
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 20:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssE2rkcenapq+x01obSYaE3MnwfSXU+ZOnv8ujkQ9Ew=;
        b=VuX6Oo/7aAGiwVPeYURTPR2s3/UpFMbgk1E7E8z8vtpW0ZZJln8Yv1kD3Rso2pubwB
         bqfjiP0gLtvMbJn1R3M3fyrA8ykiHDA93IwMsvpTrZUeUQF38kkKvuhuGN93M56JueyB
         myF3j1IeMGWOjrci9sQy2NMdi3gPba55Cqclc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssE2rkcenapq+x01obSYaE3MnwfSXU+ZOnv8ujkQ9Ew=;
        b=f99cOyjiN6NAf5iK7XbwxYWlk8lQXLpz5BZ8UQS+7ahhW1HOMpvSwGfNTpN1zLMpem
         CcJeW7gwtPh1T0AHcYdZsgJDOW81WVWsQRvvpYHxkfgyfDlWJmOgRgvTyffwbUaiqapv
         kk2pBibe2hNoq1vJaydC+XbIBaaF+UiuziYFQ9t8fOzHulXilV6tqK7i0sB3U8pReODu
         Yqdzati2M1A2yxnaJFgOOXSnT3Bgx02kdALwXxuYPiFu299W/4fXHH8tF+z5h0nLJhxi
         sTAMtcuIfBmhie+7Izs42Fg7iwDSIitL1SeMJQ8i3HUVnfezE+1URNwxTVaMNU9zoUEK
         9giQ==
X-Gm-Message-State: AOAM533ZkFWoRGbenSJvu+NZ3LY9vxG+YOC9KYEwW5Lm45bFSJSF3Py9
        y092guTFDs4mq870apRDHQqsPg==
X-Google-Smtp-Source: ABdhPJytodyqoVaYOATZjSTTMStbhpj9VvjR1hPJ6OwERCe+wrABF9KQfnHIygXjjdYU2sNuESsLYQ==
X-Received: by 2002:aa7:86d8:0:b029:18b:585b:3b16 with SMTP id h24-20020aa786d80000b029018b585b3b16mr2422645pfo.72.1606191193618;
        Mon, 23 Nov 2020 20:13:13 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id g3sm4443573pfr.145.2020.11.23.20.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 20:13:12 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8183: Add pwm and backlight node
Date:   Tue, 24 Nov 2020 12:12:54 +0800
Message-Id: <20201124041253.4181273-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwm to mt8183 and backlight to mt8183-kukui.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 28 +++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 10 +++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 85f7c33ba4461..bf2ad1294dd30 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -19,6 +19,17 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	backlight_lcd0: backlight_lcd0 {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 500000>;
+		power-supply = <&bl_pp5000>;
+		enable-gpios = <&pio 176 0>;
+		brightness-levels = <0 1023>;
+		num-interpolated-steps = <1023>;
+		default-brightness-level = <576>;
+		status = "okay";
+	};
+
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0 0x40000000 0 0x80000000>;
@@ -536,6 +547,17 @@ pins_clk {
 		};
 	};
 
+	pwm0_pin_default: pwm0_pin_default {
+		pins1 {
+			pinmux = <PINMUX_GPIO176__FUNC_GPIO176>;
+			output-high;
+			bias-pull-up;
+		};
+		pins2 {
+			pinmux = <PINMUX_GPIO43__FUNC_DISP_PWM>;
+		};
+	};
+
 	scp_pins: scp {
 		pins_scp_uart {
 			pinmux = <PINMUX_GPIO110__FUNC_TP_URXD1_AO>,
@@ -670,6 +692,12 @@ pins_wifi_wakeup {
 	};
 };
 
+&pwm0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin_default>;
+};
+
 &scp {
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 08a914d3a6435..a974bad899365 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -479,6 +479,16 @@ spi0: spi@1100a000 {
 			status = "disabled";
 		};
 
+		pwm0: pwm@1100e000 {
+			compatible = "mediatek,mt8183-disp-pwm";
+			reg = <0 0x1100e000 0 0x1000>;
+			interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_LOW>;
+			#pwm-cells = <2>;
+			clocks = <&topckgen CLK_TOP_MUX_DISP_PWM>,
+					<&infracfg CLK_INFRA_DISP_PWM>;
+			clock-names = "main", "mm";
+		};
+
 		i2c3: i2c@1100f000 {
 			compatible = "mediatek,mt8183-i2c";
 			reg = <0 0x1100f000 0 0x1000>,
-- 
2.29.2.454.gaff20da3a2-goog

