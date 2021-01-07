Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2672EC9F3
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 06:24:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726113AbhAGFWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 00:22:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725956AbhAGFWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 00:22:51 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51EA7C0612F0
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 21:22:11 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id h10so3156606pfo.9
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 21:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eLE93hpiBdRKt3WPBHOIxpy0yVp5ANcOQ4KAWXhz31Y=;
        b=Br2fUK5aQXEQnNF2FL1dWIM9oohchhmsLPeZY1u7dDH6KCIXjWouGqEdPHCo2bEsbj
         egUPgfFtUqJoYxOlC0VJTE4TE6pcc7/y4e7P6d1wZutvDlBUMthu6ImFhapt7FJVTl97
         SBso3chUoEzWTIJN2Y+NI9mYwJ81XAXeTFhII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eLE93hpiBdRKt3WPBHOIxpy0yVp5ANcOQ4KAWXhz31Y=;
        b=MA6sBD3hcY6+w9HhODTMIYeSBE83pyPQLM/FhH0p71B5hd5Csd7+tVo4jpARIJGN0T
         Fl34UsIjnRG4cDDOFw7e+Oy90IMrgiiayO4SyooZ/sckK2D7nT+9k3dd1p3TmYDsAJPO
         DgJmsDwohzUOqx5E7rSXLDQHcoZ0Ba5hCDVwMOjUPFDgutbrcVcGhAEPBch61GgCTnUt
         5Nf5g98dx86mC0YHt3HvRVvznXuzxoLwQfaj2rizz8+wUSfzM+yRiudBqx+14vbFTs2w
         qpnNMK2U6kei+zWhc8ACCKDmUvL409k8aGYt7L41pHugpwhef0G0GcvximGpevzKbkoi
         GGBw==
X-Gm-Message-State: AOAM532YjztzQAamAyxnDKbudaXJeqPNsiMAvKQ9WfDfvoB+Tag4JCqz
        25fJGhQ15em2RUAmZsVkUuHRIg==
X-Google-Smtp-Source: ABdhPJxJqLa/QJi+BCyVXEoST+A+b/gUGY6Xzc5D/qYc5FFQDs9oz+sKkoXWsQZWFRRhap+t+tKBLw==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr131095pgt.328.1609996930794;
        Wed, 06 Jan 2021 21:22:10 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id c5sm4824479pgt.73.2021.01.06.21.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 21:22:10 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: mt8183: config dsi node
Date:   Thu,  7 Jan 2021 13:22:05 +0800
Message-Id: <20210107052206.2599844-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
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
---
Change:
v2: move compatible to board dts
---
 .../mediatek/mt8183-kukui-krane-sku176.dts    |  5 +++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 37 +++++++++++++++++++
 2 files changed, 42 insertions(+)

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
index bf2ad1294dd30..d3d20e4773cf1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -249,6 +249,35 @@ &cpu7 {
 	proc-supply = <&mt6358_vproc11_reg>;
 };
 
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	panel: panel@0 {
+		// compatible will be set in board dts
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&panel_pins_default>;
+		avdd-supply = <&ppvarn_lcd>;
+		avee-supply = <&ppvarp_lcd>;
+		pp1800-supply = <&pp1800_lcd>;
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
@@ -547,6 +576,14 @@ pins_clk {
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
2.29.2.729.g45daf8777d-goog

