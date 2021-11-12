Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 055B844E19A
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 06:39:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230490AbhKLFlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 00:41:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229890AbhKLFly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 00:41:54 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A149C061766
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 21:39:04 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id c126so7652923pfb.0
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 21:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3ux6niDLdsPk8MAPGpHmvnQ2ygKaZewBFfo24yv2+C0=;
        b=YbqZyz32VjJoNgJyTfYsHMJIaZX/N7I4TESRxWQdTDBoGQq+LaMfgTPHRbmp5K46W2
         kxVvI2DGKMifDyqSNwbmav+QT0I6qXGGBiGro/DphwUBgBnaW6PT+6B1FS8ocLlJg9Yt
         eo7iER8bl49ip/AgCJqUaLOOyYJB1Z+Al0Vsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3ux6niDLdsPk8MAPGpHmvnQ2ygKaZewBFfo24yv2+C0=;
        b=VIOL3UZrnNl6tXPYJ8ui7iWJoxCjFWnMNGPioG+OsHsh8O6TPCVujcLL1cw3xpQhAA
         jd9MrBRKD9sk7ZTlHZWcjHn0e0C/ZFeWdawQzama3GOW1dJVjp2z5kFI2dtOvHMgcZjK
         jcR5tH0bbQO/Fq/ddhiKJ+q9FWYESsFka+a2KY040PwkwhLVDxKp3mcDPyyEiR3Ev5aI
         Ah4bpEClIdfmfpvoN/Xkg6CTOIdJ9eY5ZTi8n+aQs2UNJpHUdino6DPn+KYQ5lG/iDF2
         II2pYF2whgKQjld+GvnmIsRb9LoUUeGRdFqKEgg+rqCLcAL6AerlJ7t4Aj4VfNnogAgm
         gWcw==
X-Gm-Message-State: AOAM532hZhfBrQULyWT0FMH1yBjNzL8H5rdf9qACXhfJ8fzyjx5qhyRS
        SrfYWdfn+4LHkx+l60WbVEdwJQ==
X-Google-Smtp-Source: ABdhPJy3ErD6gWNx649ZzuzsxaCDMhfAx9aFJnqoT/BdK6zR/T4Gqt4M4ev8huLNxKBpY09CTRjf0g==
X-Received: by 2002:a63:414:: with SMTP id 20mr434718pge.178.1636695543804;
        Thu, 11 Nov 2021 21:39:03 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:de19:8cdf:97cf:a6b1])
        by smtp.gmail.com with ESMTPSA id v38sm3764345pgl.38.2021.11.11.21.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 21:39:03 -0800 (PST)
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
Subject: [PATCH v2 1/3] ARM: dts: stm32: Enable LVDS panel on i.Core STM32MP1 EDIMM2.2
Date:   Fri, 12 Nov 2021 11:08:54 +0530
Message-Id: <20211112053856.18412-1-jagan@amarulasolutions.com>
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
Changes for v2:
- none

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

