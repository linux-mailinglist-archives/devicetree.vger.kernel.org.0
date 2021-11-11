Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6718244D960
	for <lists+devicetree@lfdr.de>; Thu, 11 Nov 2021 16:46:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233898AbhKKPsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Nov 2021 10:48:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233981AbhKKPsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Nov 2021 10:48:54 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AC21C061767
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 07:46:05 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id y1so6036476plk.10
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 07:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IHt50f9mlyj2/SGCeb4ttMHVOWoii0nmE+uZwCQwvss=;
        b=pJ+aj0QcW5CArcwgJ/NlNf7LjHw/5Dte0pH8KK1eCFpa3e3bzsXEOjr0mZfAd97E87
         wneccpy8j5SVG3wQuitDaYXf3q+k4h3nGJYGTDSsR/tMAZyDl4IFpSOQvlzkInw3kAR2
         Md4gPyfxT+6FZ+yPkZo0DiItVLsxp4GaQPqB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IHt50f9mlyj2/SGCeb4ttMHVOWoii0nmE+uZwCQwvss=;
        b=2U5Vo5L33rCnjO+SY6eygD4GY3n26EWIr2ha+oRDi86kr0Z2RvAPpXhPRcRBsAmmxc
         4whjBhwg1tHF3GyAuT5p+HmNMMmFTa0lVB7YZwoR3EIeyFkhFs+/yuXKI1AykjZV0Uz1
         mZqTKu1iGlGrnvaBXP47FhTO2SJqa4ILJEkACPTgtMHTUB5yOtcX51E9LxfbG6G6beDF
         I+69N7ie4Tb8uDlbd0MDJONMOPHeDnfSF1tQbz2upUmsuIqwxXV1/EEiNq6wwkSCAOzN
         Ajcknm78q5Rejgt/54Tc6vLPDK2xEurfopRuzjI9sPo6ILdYJ+m3gwO2cYxmjuGxL/wh
         GBgQ==
X-Gm-Message-State: AOAM532iq/nzsWfK8nDe74rVij2I80SRu9Qnhjp+egDyUcNTGN4mYrKW
        AmPXsQhkg0mByjsHYUk8DraFiw==
X-Google-Smtp-Source: ABdhPJxC6ZgyozJNOpUT/48/RGwMj3ZvL6O5TXHm+OR45a6ap3fs4/22wlkQl/SgvLOHLCzAQ+3q/Q==
X-Received: by 2002:a17:90a:17a5:: with SMTP id q34mr27153922pja.122.1636645564865;
        Thu, 11 Nov 2021 07:46:04 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:3041:135c:4e21:846c])
        by smtp.gmail.com with ESMTPSA id m15sm2782122pjf.49.2021.11.11.07.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 07:46:04 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] ARM: dts: stm32: Enable LVDS panel on i.Core STM32MP1 EDIMM2.2
Date:   Thu, 11 Nov 2021 21:15:55 +0530
Message-Id: <20211111154557.852637-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit has plugged with
7" LVDS panel.

Engicam i.Core STM32MP1 SoM has SN65DSI84 DSI to LVDS bridge.

This patch adds a display pipeline to connect DSI to SN65DSI84
to 7" LVDS panel.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../stm32mp157a-icore-stm32mp1-edimm2.2.dts   | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
index ec9f1d1cd50f..d80b4415e761 100644
--- a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
@@ -24,6 +24,91 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	backlight: backlight {
+		compatible = "gpio-backlight";
+		gpios = <&gpiod 13 GPIO_ACTIVE_HIGH>;
+		default-on;
+	};
+
+	panel {
+		compatible = "yes-optoelectronics,ytc700tlag-05-201c";
+		backlight = <&backlight>;
+		power-supply = <&v3v3>;
+
+		port {
+			panel_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_panel>;
+			};
+		};
+	};
+};
+
+&dsi {
+	status = "okay";
+	phy-dsi-supply = <&reg18>;
+
+	ports {
+		port@0 {
+			reg = <0>;
+			dsi_in_ltdc: endpoint {
+				remote-endpoint = <&ltdc_out_dsi>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			dsi_out_bridge: endpoint {
+				remote-endpoint = <&bridge_in_dsi>;
+			};
+		};
+	};
+};
+
+&i2c6 {
+	i2c-scl-falling-time-ns = <20>;
+	i2c-scl-rising-time-ns = <185>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c6_pins_a>;
+	pinctrl-1 = <&i2c6_sleep_pins_a>;
+	status = "okay";
+
+	bridge@2c {
+		compatible = "ti,sn65dsi84";
+		reg = <0x2c>;
+		enable-gpios = <&gpiof 15 GPIO_ACTIVE_HIGH>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				bridge_in_dsi: endpoint {
+					remote-endpoint = <&dsi_out_bridge>;
+					data-lanes = <0 1>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				bridge_out_panel: endpoint {
+					remote-endpoint = <&panel_out_bridge>;
+				};
+			};
+		};
+	};
+};
+
+&ltdc {
+	status = "okay";
+
+	port {
+		ltdc_out_dsi: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&dsi_in_ltdc>;
+		};
+	};
 };
 
 &sdmmc1 {
-- 
2.25.1

