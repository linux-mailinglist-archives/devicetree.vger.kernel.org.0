Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AED776940E
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbjGaLBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:01:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbjGaLBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:01:11 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BFDE76
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:07 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1bbf8cb694aso17437795ad.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801267; x=1691406067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3HQqCjHhe62nCHb2ZUEredGg2Liro7QpcAO6XbGXQM=;
        b=Vbu3QlUxDZg8h79w1nMCHELds+BECqRM0VQBZ7eTInS4YI+1kEdByyYuXdZM7dSrGq
         33waIJ5YruLhehpBsPuE2dFPtTQgmI84V4ZIEnKh5q4OACZMvdPcewQ1sxNRNe5kqa5E
         6ry7bNVuLPciLCE61JAY48hpUnBcG7FAOkfsPunXIAcklRdcUDY1Uj7cIbaqnpG8iS2d
         UCT2Qwq+qQzO6v9Z/zNtLq6UjuehBSkg6MJUg+ngbrHuaNLM6+q4eQ5oWw7sGHp/IAlC
         qYbIjYyWoxOEzraNBj6PgFzu5SHV5++xfLF+6Jr9tRCAU+Dz2m7mhomhLlL9VX13DlEK
         p+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801267; x=1691406067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I3HQqCjHhe62nCHb2ZUEredGg2Liro7QpcAO6XbGXQM=;
        b=IblkJRjXmihND2LvYwudF833blbjnnHxQ143hB9kntqnMqIjtoc6E/4vciV90XM9QZ
         KPs6lllwJFohOUs52OiBnsZZm79R0GhpEoQPzsw+YVoHgT0GAfK3NvURg0JVOD/+8Jrq
         Yb7FCJIS7ZNHcRlSM1EbERdfik6s86IeMbm0oMMB1nN4VsEPQ5Bpyi8x5daJ9fR/8xlR
         LDHV4mY/Z8f1/oa6XS0sWSTE+jXxSem9kn090EP2TDFdWk5A2KNaLHeAbVWXIgqkTyJV
         ojMl4ASTWAI6s3dr8xZrLhcViEd3jTJvQ1+LjvedYtQYi/37IL4embIS02LkiFZGE6Yz
         01yw==
X-Gm-Message-State: ABy/qLbZoXyyWMay81yDsU7G1E507XQudzjr5l9pxA0MJUPSSOgMdkUX
        x/25g75gtxccEZ9oYQ3V+jEG3w==
X-Google-Smtp-Source: APBJJlFq+2TfHav2VZ5GzORqXeGIqvCIntD0Yt+oFMlS+Mm1TXcW7gCdNp3DlH7fkuLzM7MZG0S/Zg==
X-Received: by 2002:a17:902:ea09:b0:1b8:76ce:9d91 with SMTP id s9-20020a170902ea0900b001b876ce9d91mr11389549plg.1.1690801267368;
        Mon, 31 Jul 2023 04:01:07 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:06 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 12/14] ARM: dts: rockchip: rv1126: Add Edgeble Neu2 IO DSI overlay
Date:   Mon, 31 Jul 2023 16:30:10 +0530
Message-Id: <20230731110012.2913742-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DSI pipeline for Edgeble Neu2 IO board via DT-overlay

The DSI connector in Edgeble Neu2 IO board support different
resolution panels and those compatible is added in another
DT-overlay.

Add Edgeble Neu2 IO DSI connector DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../rockchip/rv1126-edgeble-neu2-io-dsi.dtso  | 112 ++++++++++++++++++
 2 files changed, 113 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 0f46e18fe275..c8c8e1292650 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1126-edgeble-neu2-io.dtb \
+	rv1126-edgeble-neu2-io-dsi.dtbo \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso
new file mode 100644
index 000000000000..88431e1e30f8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Edgeble Neu2 IO DSI Connector.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 25000 0>;
+		enable-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&backlight_en>;
+	};
+
+	vcc_lcd_mipi_2: vcc-lcd-mipi-2-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_lcd_mipi_2";
+		enable-active-high;
+		gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_lcd_mipi_2_en>;
+		regulator-boot-on;
+		vin-supply = <&v3v3_sys>;
+	};
+
+	vcc_1v8_2: vcc-1v8-2-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8_2";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&dsi_dphy {
+	status = "okay";
+};
+
+&dsi {
+	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		/* different resolution panels are used, compatibles are in DTO */
+		reg = <0>;
+		vdd-supply = <&vcc_lcd_mipi_2>;
+		vccio-supply = <&vcc_1v8_2>;
+		reset-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_reset>;
+		backlight = <&backlight>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	lcd {
+		backlight_en: backlight-en {
+			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		lcd_reset: lcd-reset {
+			rockchip,pins = <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vcc_lcd_mipi_2_en: vcc-lcd-mipi-2-en {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
-- 
2.25.1

