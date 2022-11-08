Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A45E620825
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233351AbiKHEPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:15:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbiKHEPD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:15:03 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA10326D5
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:15:02 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id p21so13092158plr.7
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8AupBO7ArfsThYZ4F3jhut22sgUXTSHnSRij7H265o=;
        b=Z0zqCeISHuhuSD/Z0K1gipY/JTZEs0knMG8OVc+G7PYWuJ464GtgOSQcZ4Urb0PZSS
         cxQbdIMHb5p7IDI3TGiXMtY4mcOSd9HXGXDUoSqLLEHMBxljc/jN68dfnF+T9K3B6wfr
         MKUKkBl4DOgW8fQc7gtM6xYgg08rh606h+6zVdbJj3jjmUyakS013aB+WJdkpwHE8LCU
         dNnD/voVDUVQ1Xl9R7wlputBqomfmr+2gEQ2DRQNySxCca3F8UEXV0LcolSQ1aaNyeTe
         8RKfjqe7gmpVmxP6EspjWPd9yIvVOvuj7SSCBriA4kOWIsteNJYomZlc0rdfPwA4adg3
         Oe4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u8AupBO7ArfsThYZ4F3jhut22sgUXTSHnSRij7H265o=;
        b=2uJZApBmP2SpgHAFhA7phU37VfIUVQ5V8kaC5vdPDL8OtW/vbc4xN8HMNsDnytnDy9
         KqPNaF09tpB6/pa5jFq2Jj65w1F3SH0lqqkV34hxl6+9HOoi9SgrT8jwmaTBgWFXavFL
         GEp+oHKEaoQ50rtk6tOaf1nAc3taQj3peDrEXNmviS0fkJUlrnjS+ekfY4LZamcmnF+U
         7+uSDehGIZjrrikXrHuYcz4GXsiV/qo/MQtwZVr8vUhvhbqnycgs25RBlsgXrDmT4mt4
         yDcg/oyTWsUC956BCF2OZdDJZ3EOaIaYRqWA3LSuYwoTttjcgTmluyKtHZx/S5s28352
         EQGQ==
X-Gm-Message-State: ACrzQf0JNaOeNBhLiv9VFHXG4/edN5MB+7JMWVEZdI5fICEC0DlyGNEM
        axdDPbVKDR8UTSYmUKgPWMOUWA==
X-Google-Smtp-Source: AMsMyM57mOu2cJHtkfCwvWT27HoYaS1v11oVrytwy8uNPnTPpNMSS70eVV3rF74CttyFGXW9qcOCJQ==
X-Received: by 2002:a17:90b:3594:b0:213:bf67:4d50 with SMTP id mm20-20020a17090b359400b00213bf674d50mr52403215pjb.32.1667880901522;
        Mon, 07 Nov 2022 20:15:01 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:01 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v7 05/10] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
Date:   Tue,  8 Nov 2022 09:43:55 +0530
Message-Id: <20221108041400.157052-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pinctrl definitions for Rockchip RV1126.

From RK3568 on-wards pinctrl configurations are maintained
in common conf file rockchip-pinconf.dtsi and it is available
in arm64 path (arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi).

So, include the same conf file to RV1126 pinctrl from arm64 path.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- remove Edegble in license text
Changes for v6:
- updated commit message
Changes for v5:
- none
Changes for v4:
- update i2c pins
- rebase on -next
Changes for v3:
- none
Changes for v2:
- spilt pinctrl as separate patch 

 MAINTAINERS                           |   2 +-
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 211 ++++++++++++++++++++++++++
 2 files changed, 212 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 5f66378dcfb0..4fd0fa773209 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2750,7 +2750,7 @@ F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
 F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
 F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
 F:	arch/arm/boot/dts/rk3*
-F:	arch/arm/boot/dts/rv1108*
+F:	arch/arm/boot/dts/rv11*
 F:	arch/arm/mach-rockchip/
 F:	drivers/*/*/*rockchip*
 F:	drivers/*/*rockchip*
diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
new file mode 100644
index 000000000000..4bc419cc1210
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <arm64/rockchip/rockchip-pinconf.dtsi>
+
+/*
+ * This file is auto generated by pin2dts tool, please keep these code
+ * by adding changes at end of this file.
+ */
+&pinctrl {
+	emmc {
+		/omit-if-no-ref/
+		emmc_rstnout: emmc-rstnout {
+			rockchip,pins =
+				/* emmc_rstn */
+				<1 RK_PA3 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		emmc_bus8: emmc-bus8 {
+			rockchip,pins =
+				/* emmc_d0 */
+				<0 RK_PC4 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d1 */
+				<0 RK_PC5 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d2 */
+				<0 RK_PC6 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d3 */
+				<0 RK_PC7 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d4 */
+				<0 RK_PD0 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d5 */
+				<0 RK_PD1 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d6 */
+				<0 RK_PD2 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d7 */
+				<0 RK_PD3 2 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		emmc_clk: emmc-clk {
+			rockchip,pins =
+				/* emmc_clko */
+				<0 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		emmc_cmd: emmc-cmd {
+			rockchip,pins =
+				/* emmc_cmd */
+				<0 RK_PD5 2 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+	i2c0 {
+		/omit-if-no-ref/
+		i2c0_xfer: i2c0-xfer {
+			rockchip,pins =
+				/* i2c0_scl */
+				<0 RK_PB4 1 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c0_sda */
+				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	sdmmc0 {
+		/omit-if-no-ref/
+		sdmmc0_bus4: sdmmc0-bus4 {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d1 */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d2 */
+				<1 RK_PA6 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d3 */
+				<1 RK_PA7 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_clk: sdmmc0-clk {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_cmd: sdmmc0-cmd {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_det: sdmmc0-det {
+			rockchip,pins =
+				<0 RK_PA3 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_pwr: sdmmc0-pwr {
+			rockchip,pins =
+				<0 RK_PC0 1 &pcfg_pull_none>;
+		};
+	};
+	sdmmc1 {
+		/omit-if-no-ref/
+		sdmmc1_bus4: sdmmc1-bus4 {
+			rockchip,pins =
+				/* sdmmc1_d0 */
+				<1 RK_PB4 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d1 */
+				<1 RK_PB5 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d2 */
+				<1 RK_PB6 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d3 */
+				<1 RK_PB7 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_clk: sdmmc1-clk {
+			rockchip,pins =
+				/* sdmmc1_clk */
+				<1 RK_PB2 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_cmd: sdmmc1-cmd {
+			rockchip,pins =
+				/* sdmmc1_cmd */
+				<1 RK_PB3 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_det: sdmmc1-det {
+			rockchip,pins =
+				<1 RK_PD0 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_pwr: sdmmc1-pwr {
+			rockchip,pins =
+				<1 RK_PD1 2 &pcfg_pull_none>;
+		};
+	};
+	uart0 {
+		/omit-if-no-ref/
+		uart0_xfer: uart0-xfer {
+			rockchip,pins =
+				/* uart0_rx */
+				<1 RK_PC2 1 &pcfg_pull_up>,
+				/* uart0_tx */
+				<1 RK_PC3 1 &pcfg_pull_up>;
+		};
+		/omit-if-no-ref/
+		uart0_ctsn: uart0-ctsn {
+			rockchip,pins =
+				<1 RK_PC1 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart0_rtsn: uart0-rtsn {
+			rockchip,pins =
+				<1 RK_PC0 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart0_rtsn_gpio: uart0-rts-pin {
+			rockchip,pins =
+				<1 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+	uart1 {
+		/omit-if-no-ref/
+		uart1m0_xfer: uart1m0-xfer {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<0 RK_PB7 2 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<0 RK_PB6 2 &pcfg_pull_up>;
+		};
+	};
+	uart2 {
+		/omit-if-no-ref/
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<3 RK_PA3 1 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<3 RK_PA2 1 &pcfg_pull_up>;
+		};
+	};
+	uart3 {
+		/omit-if-no-ref/
+		uart3m0_xfer: uart3m0-xfer {
+			rockchip,pins =
+				/* uart3_rx_m0 */
+				<3 RK_PC7 4 &pcfg_pull_up>,
+				/* uart3_tx_m0 */
+				<3 RK_PC6 4 &pcfg_pull_up>;
+		};
+	};
+	uart4 {
+		/omit-if-no-ref/
+		uart4m0_xfer: uart4m0-xfer {
+			rockchip,pins =
+				/* uart4_rx_m0 */
+				<3 RK_PA5 4 &pcfg_pull_up>,
+				/* uart4_tx_m0 */
+				<3 RK_PA4 4 &pcfg_pull_up>;
+		};
+	};
+	uart5 {
+		/omit-if-no-ref/
+		uart5m0_xfer: uart5m0-xfer {
+			rockchip,pins =
+				/* uart5_rx_m0 */
+				<3 RK_PA7 4 &pcfg_pull_up>,
+				/* uart5_tx_m0 */
+				<3 RK_PA6 4 &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.25.1

