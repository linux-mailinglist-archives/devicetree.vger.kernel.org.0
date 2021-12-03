Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 002A6467BDB
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 17:54:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345203AbhLCQ6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 11:58:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240527AbhLCQ6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 11:58:15 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 994B1C061751
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 08:54:48 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id p13so3479713pfw.2
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 08:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UA3ii36hU7CdFEgS88eAZUCDHAYVIn1jZ23qtSJM4UQ=;
        b=ooGW6c2JtcWB6Z7qX/xxQgDAgbHQXqbIOErmLKsxLC8fe3xCwRbXjvVK/NrOOMfh1p
         pitbMmaJ6twHOl/1D89GbJyC6AlFIRHfNFKFVs5rNkkfsemwclyL4NpySf3j3mnthZ4k
         IqGji4pbnlff2wdzE1EOJp0brNBZtnRWuMCD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UA3ii36hU7CdFEgS88eAZUCDHAYVIn1jZ23qtSJM4UQ=;
        b=MF4e0TndwsEM4Gb/s31beqrPRvAnTaIJjyJhZFspw4uJ6RM/tb+SZMayHY+puJooeo
         bjh1q/ZNWhmvKg1L6PrttLkGCdTO+cpb5XHNmPKfbFSD/34JE42ex7vDS0Pl26Vhkpuy
         pxBjJ916P1P0y2S1I2altYFDdHPGg3OcCCRD0bXlfRVVMKIPr6IkH/5Un39iPUiQOhiK
         KjgqJXgNYbN+NEo8n3mlXJgIkTd7X0jEx1T5pitvaRWNlVmBQ16z5uhcR2Pl6FFK19P1
         OUatw0CKYVHy/sc2dS6F7zFG/rwzsIPDZwf/BE8quTkuhKdXo0UK5yj0aQu2pjRxuQUE
         llPA==
X-Gm-Message-State: AOAM530H8xvOKv26avfJz8VCiqX7YRzsiUf6pGsqVqXpJBwPEic+Wb9V
        uvG24uZK7btLJMMlbUye4THQOw==
X-Google-Smtp-Source: ABdhPJxJYkiXrbYqX6lTlZURwnlCJAqFBzbUOiRcQC2IgJNCDLFsdBPBjaMtqnwewL9ZpvMXR4gBxA==
X-Received: by 2002:a63:86c7:: with SMTP id x190mr5335423pgd.230.1638550488153;
        Fri, 03 Dec 2021 08:54:48 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:9d21:588c:4f26:8400])
        by smtp.gmail.com with ESMTPSA id s72sm2783693pgc.69.2021.12.03.08.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 08:54:47 -0800 (PST)
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
Subject: [PATCH v3 1/3] ARM: dts: stm32: Enable LVDS panel on i.Core STM32MP1 EDIMM2.2
Date:   Fri,  3 Dec 2021 22:24:33 +0530
Message-Id: <20211203165435.8042-1-jagan@amarulasolutions.com>
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
Changes for v3:
- fix dtbs_check
Changes for v2:
- none

 .../stm32mp157a-icore-stm32mp1-edimm2.2.dts   | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
index ec9f1d1cd50f..a797eaa917b7 100644
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
+					data-lanes = <1 2>;
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

