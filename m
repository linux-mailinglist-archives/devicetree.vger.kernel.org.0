Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A812A6162F0
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:46:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiKBMq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:46:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229756AbiKBMqY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:46:24 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C7D42A436
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:46:22 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id v17so13443121plo.1
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kO6+CnIeDGV1TT1m2dtttHbeeP5ee+5E/D067fCY9pY=;
        b=R4ymprkNzMdWNSWjsnePOPgdNqr6+axbObfeBWm1bPoRpdjHwSePgIJie3HD9Yt5gv
         YIKJSpthX4N1wHY0ml6jMTt6c0uzfkd2tuEbIiwQ4jxzwlsmKqB3h3njmZ0PHakYZKaz
         bfcf6/vAsDzWI+5kUgZ2PShznNBlPPIcwC4JGQBOqFlEpQV3oE4Gkwe6f7Zkd1pzXSIX
         LvAvc02wugHtm+hVLGxWY2GNBwCN78y0512idxABnuBtB0b8iMvSE+kMvYabaIBKNGBU
         1R4yQXZFpm/2j0T5+t1HkfaZVFyyepdVuCc2+u3rgzvTC8Ia+7+VtWU86t4cwA5MeSAA
         azrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kO6+CnIeDGV1TT1m2dtttHbeeP5ee+5E/D067fCY9pY=;
        b=LYMYcb6edhAfgi+w32BLpDHhNpmTujL5LOhYMcYSIVtuR0VLO/Uip8aj5EgllgNVfM
         ozylnShw+4D9802KvXI+UWoM5r3TbyENbqhqoMg/XA1xkmIatby8vbkznUd3fKXB87F3
         hQtMALvSN0ALJplWWDX/OI/D8wudqWgyXCYryL76lTGassvwdWfX07T1NuSy19q9hGHe
         jVxYKUGt8H6kHVMHIfz0OGEEnkRt14ja/VttB6FyGs4WNldbABZsd/Eu0QQIi3bafD61
         Eug9E21p/5nBtcvb56DMQUfOLKiL8FHicKDmUMX5QOJb8Idll9py1dnEHJcdy7nZDTxQ
         7KWg==
X-Gm-Message-State: ACrzQf2QACNRxmSnTXAou2OHyDDT25ACNd0O3pIIpNE0gI/qxvgtAhsn
        DK0dHB+JQMi4ubJtz8sQnQXUPMnoDe4wpam7+0hxVw==
X-Google-Smtp-Source: AMsMyM7f5o5dkoKkL/hBc8xki/YP7nnqiLXIbcFkCsswbgmL4XwXxC3F40mRTJA4kDIaJigHz5z/rg==
X-Received: by 2002:a17:902:7485:b0:17d:5176:fe6e with SMTP id h5-20020a170902748500b0017d5176fe6emr24850640pll.147.1667393181426;
        Wed, 02 Nov 2022 05:46:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:21 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v6 1/6] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
Date:   Wed,  2 Nov 2022 18:16:02 +0530
Message-Id: <20221102124607.297083-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
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
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 212 ++++++++++++++++++++++++++
 2 files changed, 213 insertions(+), 1 deletion(-)
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
index 000000000000..8d660d7c81ba
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -0,0 +1,212 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
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

