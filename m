Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 649BE2F498D
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 12:10:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727612AbhAMLFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 06:05:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727630AbhAMLFE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 06:05:04 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C61DC061786
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:04:24 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id be12so871557plb.4
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qi6TAbH6xq2gb5QhoJgs+Zx34VA+1B8w65ilqHtaQhg=;
        b=niAlQ6mrmMUTgxTuk/wIFV0dA5FTNL/q7yIeA3KMpPiYrOoeMif/GrsGlBNo4nO5hX
         jS0IBXikG2Rz7tuBf7Cg5OWlFEnPLysXBKbE8NfGrDC26Fn1rRXbr3IGMutv7qZjs1ix
         LuL6120cwyB2sznVfa8VmXkijtJmiiqz/Wodw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qi6TAbH6xq2gb5QhoJgs+Zx34VA+1B8w65ilqHtaQhg=;
        b=cC/d7M3sx5c45zipO3cwFuVAbW20mtfQLahxgXKv3dabyuGj6ylZGsbdV1ij1k36q0
         HUdPBVa2zVu3VHaF3GlGg2l8ElXk1rbrbiDyXzcfVyt/lwFcS2OVXckCB0UImWfxdm89
         xWA08Hjhoz9/ySo1r+AgxWvPq9zx1RBlc+gm8cf1C8NU8q5da7LbHvHi42+aRzxBARmW
         mDySii+2zL/1mOv4kOKOVVUInrW0idKRFsz0xdyo/8Xc0kVEid6H6GmsxsNiCXQ8GHoi
         bu1ooBuGqKDSYMKeGbvj5PXymBOMevQpVUbvQ0zplQzW4zBeDDPjHFpKKmlFEJIuTX46
         mVeQ==
X-Gm-Message-State: AOAM531Yt8a+013cPs6uOP7TbRQn1daIi+T+9Qh2LyP5Ioj/JU0blACg
        kxEiwhJ4XDj9GOfWxx88Pm1QrQ==
X-Google-Smtp-Source: ABdhPJwqXk7qSn7z63czfXwWGRHHdTzvY1QViHROIw4GMPDd5xlJEcOqPF8W7QFFkzxLCyFUXJv/fg==
X-Received: by 2002:a17:902:c005:b029:db:1d7:658f with SMTP id v5-20020a170902c005b02900db01d7658fmr1625118plx.35.1610535863499;
        Wed, 13 Jan 2021 03:04:23 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id o129sm2114749pfg.66.2021.01.13.03.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 03:04:22 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] arm64: dts: mt8183: config dsi node
Date:   Wed, 13 Jan 2021 19:03:59 +0800
Message-Id: <20210113110400.616319-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Config dsi node for mt8183 kukui. Set panel and ports.

Several kukui boards share the same panel property and only compatible
is different. So compatible will be set in board dts for comparison
convenience.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
---
change:
v4: add backlight and enable mipi_tx0
---
 .../mediatek/mt8183-kukui-krane-sku176.dts    |  5 +++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 42 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
index 47113e275cb52..721d16f9c3b4f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
@@ -16,3 +16,8 @@ / {
 	model = "MediaTek krane sku176 board";
 	compatible = "google,krane-sku176", "google,krane", "mediatek,mt8183";
 };
+
+&panel {
+        status = "okay";
+        compatible = "boe,tv101wum-nl6";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index bf2ad1294dd30..da1e947587074 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -249,6 +249,36 @@ &cpu7 {
 	proc-supply = <&mt6358_vproc11_reg>;
 };
 
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	panel: panel@0 {
+		/* compatible will be set in board dts */
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&panel_pins_default>;
+		avdd-supply = <&ppvarn_lcd>;
+		avee-supply = <&ppvarp_lcd>;
+		pp1800-supply = <&pp1800_lcd>;
+		backlight = <&backlight_lcd0>;
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
+
+	ports {
+		port {
+			dsi_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
@@ -290,6 +320,10 @@ &i2c6 {
 	clock-frequency = <100000>;
 };
 
+&mipi_tx0 {
+	status = "okay";
+};
+
 &mmc0 {
 	status = "okay";
 	pinctrl-names = "default", "state_uhs";
@@ -547,6 +581,14 @@ pins_clk {
 		};
 	};
 
+	panel_pins_default: panel_pins_default {
+		panel_reset {
+			pinmux = <PINMUX_GPIO45__FUNC_GPIO45>;
+			output-low;
+			bias-pull-up;
+		};
+	};
+
 	pwm0_pin_default: pwm0_pin_default {
 		pins1 {
 			pinmux = <PINMUX_GPIO176__FUNC_GPIO176>;
-- 
2.30.0.284.gd98b1dd5eaa7-goog

