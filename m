Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9D3366707C
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:08:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231431AbjALLIF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:08:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233625AbjALLHm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:07:42 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A3D3F459
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 02:59:25 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id o1-20020a17090a678100b00219cf69e5f0so23196677pjj.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 02:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p5P5P+wFzqWhv9To+AotQSv8QNzSKJhsBhW9yfrH4kw=;
        b=RbAnO2jONJGVH9nHF4+4yfgfygG87HAzkmrRRixcctP1t7Brz9BdYGwqEp5o9qPrmK
         8YbtJUTj3RsL61HHCzg99HcpbwWrRaFvNPiujA61+n3LRPoqX9fDtvcJBvkcw89JCOa3
         YKnGmRdnNTM53EL6N93hsZOvzonezTjc0K1r0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p5P5P+wFzqWhv9To+AotQSv8QNzSKJhsBhW9yfrH4kw=;
        b=5xHkhurDMXovE08Tz75s8iUA+9F5R8leQXNtGb/wy49HTsEnSEnCW1p2f6q4LOUuba
         iE77vf2JzgNeEBCoHtekp6EtTstznPfAPcOaSen3aJb77D2wcGvWDZbvEMfWqpYVncpN
         2OqDVvTvYMqI4rsH8ENrF0tEml1HWfdGl6tqj9yYu1ihoYHeNtzZBzU4bnjdEuRmb6qw
         Sg1ZytSq8cnpIfEjYxHHkMJHNzwCEhrZ5ckHDJBLL9ZC6N7Cy/TKURM9dkTmBrLyvHaC
         Z8PiOY+klsvXNpCYtXGTMrAVQr/glyan44RfPTW2GmnlMks37MgPktdziqYuHZyroj4s
         l67g==
X-Gm-Message-State: AFqh2koLDJVNhlU61rpbayFNpIucUqRkjhvX/6lqQq/nMA8Tcv05spNV
        q0M3h4hN94xfTHyAsaP4qDDaIcxvSEgAXlZx
X-Google-Smtp-Source: AMrXdXtE3KVWl84chrX0TGdkyjSHw2c/baH/MUMy5fD8tL7hjIdIDw2JHu3iwsBO9VUgYXx5oWcz0Q==
X-Received: by 2002:a17:902:be05:b0:192:a4e5:ac5f with SMTP id r5-20020a170902be0500b00192a4e5ac5fmr48431556pls.61.1673521164894;
        Thu, 12 Jan 2023 02:59:24 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:4cc5:b413:eb81:9f91:b22e:317f])
        by smtp.gmail.com with ESMTPSA id t5-20020a170902e84500b0017f756563bcsm11986850plg.47.2023.01.12.02.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 02:59:24 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        FUKAUMI Naoki <naoki@radxa.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: rk3566: Add Radxa Compute Module 3 IO
Date:   Thu, 12 Jan 2023 16:29:02 +0530
Message-Id: <20230112105902.192852-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230112105902.192852-1-jagan@amarulasolutions.com>
References: <20230112105902.192852-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa Compute Module 3(CM3) IO board an application board from Radxa
and is compatible with Raspberry Pi CM4 IO form factor.

Specification:
- 1x HDMI,
- 2x MIPI DSI
- 2x MIPI CSI2
- 1x eDP
- 1x PCIe card
- 2x SATA
- 2x USB 2.0 Host
- 1x USB 3.0
- 1x USB 2.0 OTG
- Phone jack
- microSD slot
- 40-pin GPIO expansion header
- 12V DC

Radxa CM3 needs to mount on top of this IO board in order to create
complete Radxa CM3 IO board platform.

Add support for Radxa CM3 IO Board.

Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Co-developed-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 179 ++++++++++++++++++
 2 files changed, 180 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index bf17abe9d12d..77211b79958a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -74,6 +74,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-blade.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
new file mode 100644
index 000000000000..3e6578f27ec0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Radxa Limited
+ * Copyright (c) 2022 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3566.dtsi"
+#include "rk3566-radxa-cm3.dtsi"
+
+/ {
+	model = "Radxa Compute Module 3(CM3) IO Board";
+	compatible = "radxa,radxa-cm3-io", "radxa,radxa-cm3", "rockchip,rk3566";
+
+	aliases {
+		mmc1 = &sdmmc0;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-1 {
+			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_ACTIVITY;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&pi_nled_activity>;
+		};
+	};
+
+	vcc5v0_usb30: vcc5v0-usb30-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb30";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb30_en_h>;
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcca1v8_image: vcca1v8-image-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca1v8_image";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_1v8_p>;
+	};
+
+	vdda0v9_image: vdda0v9-image-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca0v9_image";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vdda_0v9>;
+	};
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vdda0v9_image>;
+	avdd-1v8-supply = <&vcca1v8_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		pi_nled_activity: pi-nled-activity {
+			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdcard {
+		sdmmc_pwren: sdmmc-pwren {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		vcc5v0_usb30_en_h: vcc5v0-host-en-h {
+			rockchip,pins = <3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_pwren>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb30>;
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.25.1

