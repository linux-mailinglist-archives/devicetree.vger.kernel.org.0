Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E00076A1AD
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 22:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjGaUGL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 16:06:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjGaUGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 16:06:11 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 376D18F
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:06:10 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-686fa3fc860so3087854b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690833969; x=1691438769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e+bzMK/6v3kQ234bXLjTvjuJbaRaWNWJVQGO1WXCCOs=;
        b=V6lgEVtJ0Ffu/WcC+8I6SLiTaQmcX6w3zawv13rGmmi1+oLJl446dTnPF9mmhkL7HK
         j6VKIPP5tUyOkozr8JuY0ifkrVlC6UtKJ2vnS0Q7KfV2qHX6rgJBQ9vRfPfEM08KxT+W
         mlxl5umJRmhAMV+QAmA8MqykB73rtAAyi75jkirqqy8SsAha+3viPYB8IRLvdhN+81Xu
         vY8G0Zd6QXOUSkJr7tmbAlWtbz3O0MVtm1SmdccYsJigswW4uG5gBbxSiv9yUjN211zh
         zWNe6JX8mPh9ekC30oMQFt2xdya99zqqdQAgI4yfUl4BaDyUi01ODcxygBhnzUV+7XWV
         M3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690833969; x=1691438769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e+bzMK/6v3kQ234bXLjTvjuJbaRaWNWJVQGO1WXCCOs=;
        b=kJ3wjeR+tk9wbSN8ioxhNrf8q64t4lVlX9Qe5WXXaQjprF9fxP7C51vhLaiFSseJTw
         wech5NhIeXQKhD2zH7bf7isDy6Wdh09CVOn8esxKt/IO2gg5vEAsfgyBAziKuMY+rHh8
         0EjFsKZbQj1EYaLzpSMMg+qxB5nbRlnP9Qy+AyuYRbkBRz29Iv1vR8jmWDR9DsvFwwq9
         Z2wrveEZd4vEigUU3AFxEpprH/GmzYd3kEvlaKRtxz7C0DRWKInXQ2hg6YNWLgE5gCxf
         CHrxyTAqqBjS5h5ph65z8PXmvKraPmr25r/4QWxtn8XgHpTy6RZG9YzO3ML8xOlD4sXd
         n/mA==
X-Gm-Message-State: ABy/qLZH2sP37qpNW0W9GK+J0hHOgGMs0BqFoYHxH15nudGupzFsORZt
        QDvgruS4Vtwfy7GTNKWLSNkvaUUrVeEFaiu7iT4/zw==
X-Google-Smtp-Source: APBJJlGuHubKXNWPNG6P5I/hWLi8vcJ7Wb2ptATFW/Z4xG5/BvYy8Mq5qVSN5Lt64tPBoHmQLivTyA==
X-Received: by 2002:a05:6a00:39a8:b0:682:713e:e520 with SMTP id fi40-20020a056a0039a800b00682713ee520mr12074824pfb.8.1690833969645;
        Mon, 31 Jul 2023 13:06:09 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:acc9:2620:699c:d7da])
        by smtp.gmail.com with ESMTPSA id c12-20020aa781cc000000b00668821499c3sm7938990pfn.156.2023.07.31.13.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:06:09 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
Date:   Tue,  1 Aug 2023 01:35:57 +0530
Message-Id: <20230731200559.635629-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
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

Add DSI pipeline for Radxa ROCK 4C+ board via DT-overlay.

The DSI connector in Radxa ROCK 4C+ board support different
resolution panels and those compatible is added in another
DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rk3399-rock-4c-plus-mipi-dsi.dtso         | 69 +++++++++++++++++++
 2 files changed, 70 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1ebbb3e9c2f9..3a4c4cd769eb 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus-mipi-dsi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4se.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
new file mode 100644
index 000000000000..271717040b6c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa ROCK 4C+ DSI Connector.
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
+	};
+};
+
+&mipi_dsi {
+	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mipi_out: port@1 {
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
+		backlight = <&backlight>;
+		vdd-supply = <&lcd_3v3>;
+		vccio-supply = <&vcc_1v8_s0>;
+		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_panel_reset>;
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
+		lcd_panel_reset: lcd-panel-reset {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
-- 
2.25.1

