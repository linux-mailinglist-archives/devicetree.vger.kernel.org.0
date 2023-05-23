Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9398470D462
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 08:55:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235201AbjEWGzu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 02:55:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232057AbjEWGzm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 02:55:42 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DD7E9133
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 23:55:36 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 2A45F80B5;
        Tue, 23 May 2023 06:55:35 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: Unify pinctrl-single pin group nodes for hisilicon
Date:   Tue, 23 May 2023 09:55:18 +0300
Message-Id: <20230523065522.14895-1-tony@atomide.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We want to unify the pinctrl-single pin group nodes to use naming "pins".
Otherwise non-standad pin group names will add make dtbs checks errors
when the pinctrl-single yaml binding gets merged.

Let's also correct the pinctrl controller #size-cells to 0 while at it.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi     |   6 +-
 .../boot/dts/hisilicon/hikey-pinctrl.dtsi     | 134 +++++++++---------
 .../boot/dts/hisilicon/hikey960-pinctrl.dtsi  | 124 ++++++++--------
 .../boot/dts/hisilicon/hikey970-pinctrl.dtsi  | 118 +++++++--------
 4 files changed, 191 insertions(+), 191 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -407,7 +407,7 @@ pmx0: pinmux@f7010000 {
 			compatible = "pinctrl-single";
 			reg = <0x0 0xf7010000  0x0 0x27c>;
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			#pinctrl-cells = <1>;
 			#gpio-range-cells = <3>;
 			pinctrl-single,register-width = <32>;
@@ -446,7 +446,7 @@ pmx1: pinmux@f7010800 {
 			compatible = "pinconf-single";
 			reg = <0x0 0xf7010800 0x0 0x28c>;
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <32>;
 		};
@@ -455,7 +455,7 @@ pmx2: pinmux@f8001800 {
 			compatible = "pinconf-single";
 			reg = <0x0 0xf8001800 0x0 0x78>;
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <32>;
 		};
diff --git a/arch/arm64/boot/dts/hisilicon/hikey-pinctrl.dtsi b/arch/arm64/boot/dts/hisilicon/hikey-pinctrl.dtsi
--- a/arch/arm64/boot/dts/hisilicon/hikey-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hikey-pinctrl.dtsi
@@ -17,13 +17,13 @@ &pwm_in_pmx_func
 				&bl_pwm_pmx_func
 				>;
 
-			boot_sel_pmx_func: boot_sel_pmx_func {
+			boot_sel_pmx_func: boot-sel-pins {
 				pinctrl-single,pins = <
 					0x0    MUX_M0	/* BOOT_SEL     (IOMG000) */
 				>;
 			};
 
-			emmc_pmx_func: emmc_pmx_func {
+			emmc_pmx_func: emmc-pins {
 				pinctrl-single,pins = <
 					0x100  MUX_M0	/* EMMC_CLK     (IOMG064) */
 					0x104  MUX_M0	/* EMMC_CMD     (IOMG065) */
@@ -38,7 +38,7 @@ emmc_pmx_func: emmc_pmx_func {
 				>;
 			};
 
-			sd_pmx_func: sd_pmx_func {
+			sd_pmx_func: sd-pins {
 				pinctrl-single,pins = <
 					0xc    MUX_M0	/* SD_CLK       (IOMG003) */
 					0x10   MUX_M0	/* SD_CMD       (IOMG004) */
@@ -48,7 +48,7 @@ sd_pmx_func: sd_pmx_func {
 					0x20   MUX_M0	/* SD_DATA3     (IOMG008) */
 				>;
 			};
-			sd_pmx_idle: sd_pmx_idle {
+			sd_pmx_idle: sd-idle-pins {
 				pinctrl-single,pins = <
 					0xc    MUX_M1	/* SD_CLK       (IOMG003) */
 					0x10   MUX_M1	/* SD_CMD       (IOMG004) */
@@ -59,7 +59,7 @@ sd_pmx_idle: sd_pmx_idle {
 				>;
 			};
 
-			sdio_pmx_func: sdio_pmx_func {
+			sdio_pmx_func: sdio-pins {
 				pinctrl-single,pins = <
 					0x128  MUX_M0	/* SDIO_CLK     (IOMG074) */
 					0x12c  MUX_M0	/* SDIO_CMD     (IOMG075) */
@@ -69,7 +69,7 @@ sdio_pmx_func: sdio_pmx_func {
 					0x13c  MUX_M0	/* SDIO_DATA3   (IOMG079) */
 				>;
 			};
-			sdio_pmx_idle: sdio_pmx_idle {
+			sdio_pmx_idle: sdio-idle-pins {
 				pinctrl-single,pins = <
 					0x128  MUX_M1	/* SDIO_CLK     (IOMG074) */
 					0x12c  MUX_M1	/* SDIO_CMD     (IOMG075) */
@@ -80,7 +80,7 @@ sdio_pmx_idle: sdio_pmx_idle {
 				>;
 			};
 
-			isp_pmx_func: isp_pmx_func {
+			isp_pmx_func: isp-pins {
 				pinctrl-single,pins = <
 					0x24   MUX_M0	/* ISP_PWDN0    (IOMG009) */
 					0x28   MUX_M0	/* ISP_PWDN1    (IOMG010) */
@@ -101,19 +101,19 @@ isp_pmx_func: isp_pmx_func {
 				>;
 			};
 
-			hkadc_ssi_pmx_func: hkadc_ssi_pmx_func {
+			hkadc_ssi_pmx_func: hkadc-ssi-pins {
 				pinctrl-single,pins = <
 					0x68   MUX_M0	/* HKADC_SSI    (IOMG026) */
 				>;
 			};
 
-			codec_clk_pmx_func: codec_clk_pmx_func {
+			codec_clk_pmx_func: codec-clk-pins {
 				pinctrl-single,pins = <
 					0x6c   MUX_M0	/* CODEC_CLK    (IOMG027) */
 				>;
 			};
 
-			codec_pmx_func: codec_pmx_func {
+			codec_pmx_func: codec-pins {
 				pinctrl-single,pins = <
 					0x70   MUX_M1	/* DMIC_CLK     (IOMG028) */
 					0x74   MUX_M0	/* CODEC_SYNC   (IOMG029) */
@@ -122,7 +122,7 @@ codec_pmx_func: codec_pmx_func {
 				>;
 			};
 
-			fm_pmx_func: fm_pmx_func {
+			fm_pmx_func: fm-pins {
 				pinctrl-single,pins = <
 					0x80   MUX_M1	/* FM_XCLK      (IOMG032) */
 					0x84   MUX_M1	/* FM_XFS       (IOMG033) */
@@ -131,7 +131,7 @@ fm_pmx_func: fm_pmx_func {
 				>;
 			};
 
-			bt_pmx_func: bt_pmx_func {
+			bt_pmx_func: bt-pins {
 				pinctrl-single,pins = <
 					0x90   MUX_M0	/* BT_XCLK      (IOMG036) */
 					0x94   MUX_M0	/* BT_XFS       (IOMG037) */
@@ -140,26 +140,26 @@ bt_pmx_func: bt_pmx_func {
 				>;
 			};
 
-			pwm_in_pmx_func: pwm_in_pmx_func {
+			pwm_in_pmx_func: pwm-in-pins {
 				pinctrl-single,pins = <
 					0xb8   MUX_M1	/* PWM_IN       (IOMG046) */
 				>;
 			};
 
-			bl_pwm_pmx_func: bl_pwm_pmx_func {
+			bl_pwm_pmx_func: bl-pwm-pins {
 				pinctrl-single,pins = <
 					0xbc   MUX_M1	/* BL_PWM       (IOMG047) */
 				>;
 			};
 
-			uart0_pmx_func: uart0_pmx_func {
+			uart0_pmx_func: uart0-pins {
 				pinctrl-single,pins = <
 					0xc0   MUX_M0	/* UART0_RXD    (IOMG048) */
 					0xc4   MUX_M0	/* UART0_TXD    (IOMG049) */
 				>;
 			};
 
-			uart1_pmx_func: uart1_pmx_func {
+			uart1_pmx_func: uart1-pins {
 				pinctrl-single,pins = <
 					0xc8   MUX_M0	/* UART1_CTS_N  (IOMG050) */
 					0xcc   MUX_M0	/* UART1_RTS_N  (IOMG051) */
@@ -168,7 +168,7 @@ uart1_pmx_func: uart1_pmx_func {
 				>;
 			};
 
-			uart2_pmx_func: uart2_pmx_func {
+			uart2_pmx_func: uart2-pins {
 				pinctrl-single,pins = <
 					0xd8   MUX_M0	/* UART2_CTS_N  (IOMG054) */
 					0xdc   MUX_M0	/* UART2_RTS_N  (IOMG055) */
@@ -177,7 +177,7 @@ uart2_pmx_func: uart2_pmx_func {
 				>;
 			};
 
-			uart3_pmx_func: uart3_pmx_func {
+			uart3_pmx_func: uart3-pins {
 				pinctrl-single,pins = <
 					0x180  MUX_M1	/* UART3_CTS_N  (IOMG096) */
 					0x184  MUX_M1	/* UART3_RTS_N  (IOMG097) */
@@ -186,7 +186,7 @@ uart3_pmx_func: uart3_pmx_func {
 				>;
 			};
 
-			uart4_pmx_func: uart4_pmx_func {
+			uart4_pmx_func: uart4-pins {
 				pinctrl-single,pins = <
 					0x1d0  MUX_M1	/* UART4_CTS_N  (IOMG116) */
 					0x1d4  MUX_M1	/* UART4_RTS_N  (IOMG117) */
@@ -195,35 +195,35 @@ uart4_pmx_func: uart4_pmx_func {
 				>;
 			};
 
-			uart5_pmx_func: uart5_pmx_func {
+			uart5_pmx_func: uart5-pins {
 				pinctrl-single,pins = <
 					0x1c8  MUX_M1	/* UART5_RXD    (IOMG114) */
 					0x1cc  MUX_M1	/* UART5_TXD    (IOMG115) */
 				>;
 			};
 
-			i2c0_pmx_func: i2c0_pmx_func {
+			i2c0_pmx_func: i2c0-pins {
 				pinctrl-single,pins = <
 					0xe8   MUX_M0	/* I2C0_SCL     (IOMG058) */
 					0xec   MUX_M0	/* I2C0_SDA     (IOMG059) */
 				>;
 			};
 
-			i2c1_pmx_func: i2c1_pmx_func {
+			i2c1_pmx_func: i2c1-pins {
 				pinctrl-single,pins = <
 					0xf0   MUX_M0	/* I2C1_SCL     (IOMG060) */
 					0xf4   MUX_M0	/* I2C1_SDA     (IOMG061) */
 				>;
 			};
 
-			i2c2_pmx_func: i2c2_pmx_func {
+			i2c2_pmx_func: i2c2-pins {
 				pinctrl-single,pins = <
 					0xf8   MUX_M0	/* I2C2_SCL     (IOMG062) */
 					0xfc   MUX_M0	/* I2C2_SDA     (IOMG063) */
 				>;
 			};
 
-			spi0_pmx_func: spi0_pmx_func {
+			spi0_pmx_func: spi0-pins {
 				pinctrl-single,pins = <
 					0x1a0  MUX_M1   /* SPI0_DI      (IOMG104) */
 					0x1a4  MUX_M1	/* SPI0_DO	(IOMG105) */
@@ -244,7 +244,7 @@ &pwm_in_cfg_func
 				&bl_pwm_cfg_func
 				>;
 
-			boot_sel_cfg_func: boot_sel_cfg_func {
+			boot_sel_cfg_func: boot-sel-cfg-pins {
 				pinctrl-single,pins = <
 					0x0    0x0	/* BOOT_SEL     (IOCFG000) */
 				>;
@@ -253,7 +253,7 @@ boot_sel_cfg_func: boot_sel_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			hkadc_ssi_cfg_func: hkadc_ssi_cfg_func {
+			hkadc_ssi_cfg_func: hkadc-ssi-cfg-pins {
 				pinctrl-single,pins = <
 					0x6c   0x0	/* HKADC_SSI    (IOCFG027) */
 				>;
@@ -262,7 +262,7 @@ hkadc_ssi_cfg_func: hkadc_ssi_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			emmc_clk_cfg_func: emmc_clk_cfg_func {
+			emmc_clk_cfg_func: emmc-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x104  0x0	/* EMMC_CLK     (IOCFG065) */
 				>;
@@ -271,7 +271,7 @@ emmc_clk_cfg_func: emmc_clk_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_08MA DRIVE_MASK>;
 			};
 
-			emmc_cfg_func: emmc_cfg_func {
+			emmc_cfg_func: emmc-cfg-pins {
 				pinctrl-single,pins = <
 					0x108  0x0	/* EMMC_CMD     (IOCFG066) */
 					0x10c  0x0	/* EMMC_DATA0   (IOCFG067) */
@@ -288,7 +288,7 @@ emmc_cfg_func: emmc_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_04MA DRIVE_MASK>;
 			};
 
-			emmc_rst_cfg_func: emmc_rst_cfg_func {
+			emmc_rst_cfg_func: emmc-rst-cfg-pins {
 				pinctrl-single,pins = <
 					0x12c  0x0	/* EMMC_RST_N   (IOCFG075) */
 				>;
@@ -297,7 +297,7 @@ emmc_rst_cfg_func: emmc_rst_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_04MA DRIVE_MASK>;
 			};
 
-			sd_clk_cfg_func: sd_clk_cfg_func {
+			sd_clk_cfg_func: sd-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0xc    0x0	/* SD_CLK       (IOCFG003) */
 				>;
@@ -305,7 +305,7 @@ sd_clk_cfg_func: sd_clk_cfg_func {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_10MA DRIVE_MASK>;
 			};
-			sd_clk_cfg_idle: sd_clk_cfg_idle {
+			sd_clk_cfg_idle: sd-clk-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0xc    0x0	/* SD_CLK       (IOCFG003) */
 				>;
@@ -314,7 +314,7 @@ sd_clk_cfg_idle: sd_clk_cfg_idle {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			sd_cfg_func: sd_cfg_func {
+			sd_cfg_func: sd-cfg-pins {
 				pinctrl-single,pins = <
 					0x10   0x0	/* SD_CMD       (IOCFG004) */
 					0x14   0x0	/* SD_DATA0     (IOCFG005) */
@@ -326,7 +326,7 @@ sd_cfg_func: sd_cfg_func {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_08MA DRIVE_MASK>;
 			};
-			sd_cfg_idle: sd_cfg_idle {
+			sd_cfg_idle: sd-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x10   0x0	/* SD_CMD       (IOCFG004) */
 					0x14   0x0	/* SD_DATA0     (IOCFG005) */
@@ -339,7 +339,7 @@ sd_cfg_idle: sd_cfg_idle {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			sdio_clk_cfg_func: sdio_clk_cfg_func {
+			sdio_clk_cfg_func: sdio-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x134  0x0	/* SDIO_CLK     (IOCFG077) */
 				>;
@@ -347,7 +347,7 @@ sdio_clk_cfg_func: sdio_clk_cfg_func {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_08MA DRIVE_MASK>;
 			};
-			sdio_clk_cfg_idle: sdio_clk_cfg_idle {
+			sdio_clk_cfg_idle: sdio-clk-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x134  0x0	/* SDIO_CLK     (IOCFG077) */
 				>;
@@ -356,7 +356,7 @@ sdio_clk_cfg_idle: sdio_clk_cfg_idle {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			sdio_cfg_func: sdio_cfg_func {
+			sdio_cfg_func: sdio-cfg-pins {
 				pinctrl-single,pins = <
 					0x138  0x0	/* SDIO_CMD     (IOCFG078) */
 					0x13c  0x0	/* SDIO_DATA0   (IOCFG079) */
@@ -368,7 +368,7 @@ sdio_cfg_func: sdio_cfg_func {
 				pinctrl-single,bias-pullup    = <PULL_UP   PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_04MA DRIVE_MASK>;
 			};
-			sdio_cfg_idle: sdio_cfg_idle {
+			sdio_cfg_idle: sdio-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x138  0x0	/* SDIO_CMD     (IOCFG078) */
 					0x13c  0x0	/* SDIO_DATA0   (IOCFG079) */
@@ -381,7 +381,7 @@ sdio_cfg_idle: sdio_cfg_idle {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			isp_cfg_func1: isp_cfg_func1 {
+			isp_cfg_func1: isp-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0x28   0x0	/* ISP_PWDN0    (IOCFG010) */
 					0x2c   0x0	/* ISP_PWDN1    (IOCFG011) */
@@ -403,7 +403,7 @@ isp_cfg_func1: isp_cfg_func1 {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
-			isp_cfg_idle1: isp_cfg_idle1 {
+			isp_cfg_idle1: isp-cfg-idle1-pins {
 				pinctrl-single,pins = <
 					0x34   0x0	/* ISP_SHUTTER0 (IOCFG013) */
 					0x38   0x0	/* ISP_SHUTTER1 (IOCFG014) */
@@ -413,7 +413,7 @@ isp_cfg_idle1: isp_cfg_idle1 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			isp_cfg_func2: isp_cfg_func2 {
+			isp_cfg_func2: isp-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0x54   0x0	/* ISP_STROBE1  (IOCFG021) */
 				>;
@@ -422,7 +422,7 @@ isp_cfg_func2: isp_cfg_func2 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			codec_clk_cfg_func: codec_clk_cfg_func {
+			codec_clk_cfg_func: codec-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x70   0x0	/* CODEC_CLK    (IOCFG028) */
 				>;
@@ -430,7 +430,7 @@ codec_clk_cfg_func: codec_clk_cfg_func {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_04MA DRIVE_MASK>;
 			};
-			codec_clk_cfg_idle: codec_clk_cfg_idle {
+			codec_clk_cfg_idle: codec-clk-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x70   0x0	/* CODEC_CLK    (IOCFG028) */
 				>;
@@ -439,7 +439,7 @@ codec_clk_cfg_idle: codec_clk_cfg_idle {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			codec_cfg_func1: codec_cfg_func1 {
+			codec_cfg_func1: codec-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0x74   0x0	/* DMIC_CLK     (IOCFG029) */
 				>;
@@ -448,7 +448,7 @@ codec_cfg_func1: codec_cfg_func1 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			codec_cfg_func2: codec_cfg_func2 {
+			codec_cfg_func2: codec-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0x78   0x0	/* CODEC_SYNC   (IOCFG030) */
 					0x7c   0x0	/* CODEC_DI     (IOCFG031) */
@@ -458,7 +458,7 @@ codec_cfg_func2: codec_cfg_func2 {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_04MA DRIVE_MASK>;
 			};
-			codec_cfg_idle2: codec_cfg_idle2 {
+			codec_cfg_idle2: codec-cfg-idle2-pins {
 				pinctrl-single,pins = <
 					0x78   0x0	/* CODEC_SYNC   (IOCFG030) */
 					0x7c   0x0	/* CODEC_DI     (IOCFG031) */
@@ -469,7 +469,7 @@ codec_cfg_idle2: codec_cfg_idle2 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			fm_cfg_func: fm_cfg_func {
+			fm_cfg_func: fm-cfg-pins {
 				pinctrl-single,pins = <
 					0x84   0x0	/* FM_XCLK      (IOCFG033) */
 					0x88   0x0	/* FM_XFS       (IOCFG034) */
@@ -481,7 +481,7 @@ fm_cfg_func: fm_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			bt_cfg_func: bt_cfg_func {
+			bt_cfg_func: bt-cfg-pins {
 				pinctrl-single,pins = <
 					0x94   0x0	/* BT_XCLK      (IOCFG037) */
 					0x98   0x0	/* BT_XFS       (IOCFG038) */
@@ -492,7 +492,7 @@ bt_cfg_func: bt_cfg_func {
 				pinctrl-single,bias-pullup    = <PULL_DIS  PULL_UP   PULL_DIS  PULL_UP>;
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
-			bt_cfg_idle: bt_cfg_idle {
+			bt_cfg_idle: bt-cfg-idle-pins {
 				pinctrl-single,pins = <
 					0x94   0x0	/* BT_XCLK      (IOCFG037) */
 					0x98   0x0	/* BT_XFS       (IOCFG038) */
@@ -504,7 +504,7 @@ bt_cfg_idle: bt_cfg_idle {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			pwm_in_cfg_func: pwm_in_cfg_func {
+			pwm_in_cfg_func: pwm-in-cfg-pins {
 				pinctrl-single,pins = <
 					0xbc   0x0	/* PWM_IN       (IOCFG047) */
 				>;
@@ -513,7 +513,7 @@ pwm_in_cfg_func: pwm_in_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			bl_pwm_cfg_func: bl_pwm_cfg_func {
+			bl_pwm_cfg_func: bl-pwm-cfg-pins {
 				pinctrl-single,pins = <
 					0xc0   0x0	/* BL_PWM       (IOCFG048) */
 				>;
@@ -522,7 +522,7 @@ bl_pwm_cfg_func: bl_pwm_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart0_cfg_func1: uart0_cfg_func1 {
+			uart0_cfg_func1: uart0-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0xc4   0x0	/* UART0_RXD    (IOCFG049) */
 				>;
@@ -531,7 +531,7 @@ uart0_cfg_func1: uart0_cfg_func1 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart0_cfg_func2: uart0_cfg_func2 {
+			uart0_cfg_func2: uart0-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0xc8   0x0	/* UART0_TXD    (IOCFG050) */
 				>;
@@ -540,7 +540,7 @@ uart0_cfg_func2: uart0_cfg_func2 {
 				pinctrl-single,drive-strength = <DRIVE1_04MA DRIVE_MASK>;
 			};
 
-			uart1_cfg_func1: uart1_cfg_func1 {
+			uart1_cfg_func1: uart1-cfg-func1-pins {
 				pinctrl-single,pins = <
 					0xcc   0x0	/* UART1_CTS_N  (IOCFG051) */
 					0xd4   0x0	/* UART1_RXD    (IOCFG053) */
@@ -550,7 +550,7 @@ uart1_cfg_func1: uart1_cfg_func1 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart1_cfg_func2: uart1_cfg_func2 {
+			uart1_cfg_func2: uart1-cfg-func2-pins {
 				pinctrl-single,pins = <
 					0xd0   0x0	/* UART1_RTS_N  (IOCFG052) */
 					0xd8   0x0	/* UART1_TXD    (IOCFG054) */
@@ -560,7 +560,7 @@ uart1_cfg_func2: uart1_cfg_func2 {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart2_cfg_func: uart2_cfg_func {
+			uart2_cfg_func: uart2-cfg-pins {
 				pinctrl-single,pins = <
 					0xdc   0x0	/* UART2_CTS_N  (IOCFG055) */
 					0xe0   0x0	/* UART2_RTS_N  (IOCFG056) */
@@ -572,7 +572,7 @@ uart2_cfg_func: uart2_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart3_cfg_func: uart3_cfg_func {
+			uart3_cfg_func: uart3-cfg-pins {
 				pinctrl-single,pins = <
 					0x190  0x0	/* UART3_CTS_N  (IOCFG100) */
 					0x194  0x0	/* UART3_RTS_N  (IOCFG101) */
@@ -584,7 +584,7 @@ uart3_cfg_func: uart3_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart4_cfg_func: uart4_cfg_func {
+			uart4_cfg_func: uart4-cfg-pins {
 				pinctrl-single,pins = <
 					0x1e0  0x0	/* UART4_CTS_N  (IOCFG120) */
 					0x1e4  0x0	/* UART4_RTS_N  (IOCFG121) */
@@ -596,7 +596,7 @@ uart4_cfg_func: uart4_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			uart5_cfg_func: uart5_cfg_func {
+			uart5_cfg_func: uart5-cfg-pins {
 				pinctrl-single,pins = <
 					0x1d8  0x0	/* UART4_RXD    (IOCFG118) */
 					0x1dc  0x0	/* UART4_TXD    (IOCFG119) */
@@ -606,7 +606,7 @@ uart5_cfg_func: uart5_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			i2c0_cfg_func: i2c0_cfg_func {
+			i2c0_cfg_func: i2c0-cfg-pins {
 				pinctrl-single,pins = <
 					0xec   0x0	/* I2C0_SCL     (IOCFG059) */
 					0xf0   0x0	/* I2C0_SDA     (IOCFG060) */
@@ -616,7 +616,7 @@ i2c0_cfg_func: i2c0_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			i2c1_cfg_func: i2c1_cfg_func {
+			i2c1_cfg_func: i2c1-cfg-pins {
 				pinctrl-single,pins = <
 					0xf4   0x0	/* I2C1_SCL     (IOCFG061) */
 					0xf8   0x0	/* I2C1_SDA     (IOCFG062) */
@@ -626,7 +626,7 @@ i2c1_cfg_func: i2c1_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			i2c2_cfg_func: i2c2_cfg_func {
+			i2c2_cfg_func: i2c2-cfg-pins {
 				pinctrl-single,pins = <
 					0xfc   0x0	/* I2C2_SCL     (IOCFG063) */
 					0x100  0x0	/* I2C2_SDA     (IOCFG064) */
@@ -636,7 +636,7 @@ i2c2_cfg_func: i2c2_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			spi0_cfg_func: spi0_cfg_func {
+			spi0_cfg_func: spi0-cfg-pins {
 				pinctrl-single,pins = <
 					0x1b0  0x0	/* SPI0_DI	(IOCFG108) */
 					0x1b4  0x0	/* SPI0_DO	(IOCFG109) */
@@ -656,7 +656,7 @@ pmx2: pinmux@f8001800 {
 				&rstout_n_cfg_func
 				>;
 
-			rstout_n_cfg_func: rstout_n_cfg_func {
+			rstout_n_cfg_func: rstout-n-cfg-pins {
 				pinctrl-single,pins = <
 					0x0    0x0	/* RSTOUT_N     (IOCFG000) */
 				>;
@@ -665,7 +665,7 @@ rstout_n_cfg_func: rstout_n_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			pmu_peri_en_cfg_func: pmu_peri_en_cfg_func {
+			pmu_peri_en_cfg_func: pmu-peri-en-cfg-pins {
 				pinctrl-single,pins = <
 					0x4    0x0	/* PMU_PERI_EN  (IOCFG001) */
 				>;
@@ -674,7 +674,7 @@ pmu_peri_en_cfg_func: pmu_peri_en_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			sysclk0_en_cfg_func: sysclk0_en_cfg_func {
+			sysclk0_en_cfg_func: sysclk0-en-cfg-pins {
 				pinctrl-single,pins = <
 					0x8    0x0	/* SYSCLK0_EN   (IOCFG002) */
 				>;
@@ -683,7 +683,7 @@ sysclk0_en_cfg_func: sysclk0_en_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_02MA DRIVE_MASK>;
 			};
 
-			jtag_tdo_cfg_func: jtag_tdo_cfg_func {
+			jtag_tdo_cfg_func: jtag-tdo-cfg-pins {
 				pinctrl-single,pins = <
 					0xc    0x0	/* JTAG_TDO     (IOCFG003) */
 				>;
@@ -692,7 +692,7 @@ jtag_tdo_cfg_func: jtag_tdo_cfg_func {
 				pinctrl-single,drive-strength = <DRIVE1_08MA DRIVE_MASK>;
 			};
 
-			rf_reset_cfg_func: rf_reset_cfg_func {
+			rf_reset_cfg_func: rf-reset-cfg-pins {
 				pinctrl-single,pins = <
 					0x70   0x0	/* RF_RESET0    (IOCFG028) */
 					0x74   0x0	/* RF_RESET1    (IOCFG029) */
diff --git a/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi b/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
--- a/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
@@ -25,7 +25,7 @@ pmx0: pinmux@e896c000 {
 				&range 0 7 0
 				&range 8 116 0>;
 
-			pmu_pmx_func: pmu_pmx_func {
+			pmu_pmx_func: pmu-pins {
 				pinctrl-single,pins = <
 					0x008 MUX_M1 /* PMU1_SSI */
 					0x00c MUX_M1 /* PMU2_SSI */
@@ -34,19 +34,19 @@ pmu_pmx_func: pmu_pmx_func {
 				>;
 			};
 
-			csi0_pwd_n_pmx_func: csi0_pwd_n_pmx_func {
+			csi0_pwd_n_pmx_func: csi0-pwd-n-pins {
 				pinctrl-single,pins = <
 					0x044 MUX_M0 /* CSI0_PWD_N */
 				>;
 			};
 
-			csi1_pwd_n_pmx_func: csi1_pwd_n_pmx_func {
+			csi1_pwd_n_pmx_func: csi1-pwd-n-pins {
 				pinctrl-single,pins = <
 					0x04c MUX_M0 /* CSI1_PWD_N */
 				>;
 			};
 
-			isp0_pmx_func: isp0_pmx_func {
+			isp0_pmx_func: isp0-pins {
 				pinctrl-single,pins = <
 					0x058 MUX_M1 /* ISP_CLK0 */
 					0x064 MUX_M1 /* ISP_SCL0 */
@@ -54,7 +54,7 @@ isp0_pmx_func: isp0_pmx_func {
 				>;
 			};
 
-			isp1_pmx_func: isp1_pmx_func {
+			isp1_pmx_func: isp1-pins {
 				pinctrl-single,pins = <
 					0x05c MUX_M1 /* ISP_CLK1 */
 					0x06c MUX_M1 /* ISP_SCL1 */
@@ -62,47 +62,47 @@ isp1_pmx_func: isp1_pmx_func {
 				>;
 			};
 
-			pwr_key_pmx_func: pwr_key_pmx_func {
+			pwr_key_pmx_func: pwr-key-pins {
 				pinctrl-single,pins = <
 					0x080 MUX_M0 /* GPIO_034 */
 				>;
 			};
 
-			i2c3_pmx_func: i2c3_pmx_func {
+			i2c3_pmx_func: i2c3-pins {
 				pinctrl-single,pins = <
 					0x02c MUX_M1 /* I2C3_SCL */
 					0x030 MUX_M1 /* I2C3_SDA */
 				>;
 			};
 
-			i2c4_pmx_func: i2c4_pmx_func {
+			i2c4_pmx_func: i2c4-pins {
 				pinctrl-single,pins = <
 					0x090 MUX_M1 /* I2C4_SCL */
 					0x094 MUX_M1 /* I2C4_SDA */
 				>;
 			};
 
-			pcie_perstn_pmx_func: pcie_perstn_pmx_func {
+			pcie_perstn_pmx_func: pcie-perstn-pins {
 				pinctrl-single,pins = <
 					0x15c MUX_M1 /* PCIE_PERST_N */
 				>;
 			};
 
-			usbhub5734_pmx_func: usbhub5734_pmx_func {
+			usbhub5734_pmx_func: usbhub5734-pins {
 				pinctrl-single,pins = <
 					0x11c MUX_M0 /* GPIO_073 */
 					0x120 MUX_M0 /* GPIO_074 */
 				>;
 			};
 
-			uart0_pmx_func: uart0_pmx_func {
+			uart0_pmx_func: uart0-pins {
 				pinctrl-single,pins = <
 					0x0cc MUX_M2 /* UART0_RXD */
 					0x0d0 MUX_M2 /* UART0_TXD */
 				>;
 			};
 
-			uart1_pmx_func: uart1_pmx_func {
+			uart1_pmx_func: uart1-pins {
 				pinctrl-single,pins = <
 					0x0b0 MUX_M2 /* UART1_CTS_N */
 					0x0b4 MUX_M2 /* UART1_RTS_N */
@@ -111,7 +111,7 @@ uart1_pmx_func: uart1_pmx_func {
 				>;
 			};
 
-			uart2_pmx_func: uart2_pmx_func {
+			uart2_pmx_func: uart2-pins {
 				pinctrl-single,pins = <
 					0x0bc MUX_M2 /* UART2_CTS_N */
 					0x0c0 MUX_M2 /* UART2_RTS_N */
@@ -120,7 +120,7 @@ uart2_pmx_func: uart2_pmx_func {
 				>;
 			};
 
-			uart3_pmx_func: uart3_pmx_func {
+			uart3_pmx_func: uart3-pins {
 				pinctrl-single,pins = <
 					0x0dc MUX_M1 /* UART3_CTS_N */
 					0x0e0 MUX_M1 /* UART3_RTS_N */
@@ -129,7 +129,7 @@ uart3_pmx_func: uart3_pmx_func {
 				>;
 			};
 
-			uart4_pmx_func: uart4_pmx_func {
+			uart4_pmx_func: uart4-pins {
 				pinctrl-single,pins = <
 					0x0ec MUX_M1 /* UART4_CTS_N */
 					0x0f0 MUX_M1 /* UART4_RTS_N */
@@ -138,7 +138,7 @@ uart4_pmx_func: uart4_pmx_func {
 				>;
 			};
 
-			uart5_pmx_func: uart5_pmx_func {
+			uart5_pmx_func: uart5-pins {
 				pinctrl-single,pins = <
 					0x0c4 MUX_M3 /* UART5_CTS_N */
 					0x0c8 MUX_M3 /* UART5_RTS_N */
@@ -147,7 +147,7 @@ uart5_pmx_func: uart5_pmx_func {
 				>;
 			};
 
-			uart6_pmx_func: uart6_pmx_func {
+			uart6_pmx_func: uart6-pins {
 				pinctrl-single,pins = <
 					0x0cc MUX_M1 /* UART6_CTS_N */
 					0x0d0 MUX_M1 /* UART6_RTS_N */
@@ -156,13 +156,13 @@ uart6_pmx_func: uart6_pmx_func {
 				>;
 			};
 
-			cam0_rst_pmx_func: cam0_rst_pmx_func {
+			cam0_rst_pmx_func: cam0-rst-pins {
 				pinctrl-single,pins = <
 					0x0c8 MUX_M0 /* CAM0_RST */
 				>;
 			};
 
-			cam1_rst_pmx_func: cam1_rst_pmx_func {
+			cam1_rst_pmx_func: cam1-rst-pins {
 				pinctrl-single,pins = <
 					0x124 MUX_M0 /* CAM1_RST */
 				>;
@@ -180,7 +180,7 @@ pmx1: pinmux@ff37e000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 6 0>;
 
-			sd_pmx_func: sd_pmx_func {
+			sd_pmx_func: sd-pins {
 				pinctrl-single,pins = <
 					0x000 MUX_M1 /* SD_CLK */
 					0x004 MUX_M1 /* SD_CMD */
@@ -203,14 +203,14 @@ pmx2: pinmux@ff3b6000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 12 0>;
 
-			ufs_pmx_func: ufs_pmx_func {
+			ufs_pmx_func: ufs-pins {
 				pinctrl-single,pins = <
 					0x000 MUX_M1 /* UFS_REF_CLK */
 					0x004 MUX_M1 /* UFS_RST_N */
 				>;
 			};
 
-			spi3_pmx_func: spi3_pmx_func {
+			spi3_pmx_func: spi3-pins {
 				pinctrl-single,pins = <
 					0x008 MUX_M1 /* SPI3_CLK */
 					0x00c MUX_M1 /* SPI3_DI */
@@ -231,7 +231,7 @@ pmx3: pinmux@ff3fd000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 6 0>;
 
-			sdio_pmx_func: sdio_pmx_func {
+			sdio_pmx_func: sdio-pins {
 				pinctrl-single,pins = <
 					0x000 MUX_M1 /* SDIO_CLK */
 					0x004 MUX_M1 /* SDIO_CMD */
@@ -254,7 +254,7 @@ pmx4: pinmux@fff11000 {
 			/* pin base in node, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 42 0>;
 
-			i2s2_pmx_func: i2s2_pmx_func {
+			i2s2_pmx_func: i2s2-pins {
 				pinctrl-single,pins = <
 					0x044 MUX_M1 /* I2S2_DI */
 					0x048 MUX_M1 /* I2S2_DO */
@@ -263,42 +263,42 @@ i2s2_pmx_func: i2s2_pmx_func {
 				>;
 			};
 
-			slimbus_pmx_func: slimbus_pmx_func {
+			slimbus_pmx_func: slimbus-pins {
 				pinctrl-single,pins = <
 					0x02c MUX_M1 /* SLIMBUS_CLK */
 					0x030 MUX_M1 /* SLIMBUS_DATA */
 				>;
 			};
 
-			i2c0_pmx_func: i2c0_pmx_func {
+			i2c0_pmx_func: i2c0-pins {
 				pinctrl-single,pins = <
 					0x014 MUX_M1 /* I2C0_SCL */
 					0x018 MUX_M1 /* I2C0_SDA */
 				>;
 			};
 
-			i2c1_pmx_func: i2c1_pmx_func {
+			i2c1_pmx_func: i2c1-pins {
 				pinctrl-single,pins = <
 					0x01c MUX_M1 /* I2C1_SCL */
 					0x020 MUX_M1 /* I2C1_SDA */
 				>;
 			};
 
-			i2c7_pmx_func: i2c7_pmx_func {
+			i2c7_pmx_func: i2c7-pins {
 				pinctrl-single,pins = <
 					0x024 MUX_M3 /* I2C7_SCL */
 					0x028 MUX_M3 /* I2C7_SDA */
 				>;
 			};
 
-			pcie_pmx_func: pcie_pmx_func {
+			pcie_pmx_func: pcie-pins {
 				pinctrl-single,pins = <
 					0x084 MUX_M1 /* PCIE_CLKREQ_N */
 					0x088 MUX_M1 /* PCIE_WAKE_N */
 				>;
 			};
 
-			spi2_pmx_func: spi2_pmx_func {
+			spi2_pmx_func: spi2-pins {
 				pinctrl-single,pins = <
 					0x08c MUX_M1 /* SPI2_CLK */
 					0x090 MUX_M1 /* SPI2_DI */
@@ -307,7 +307,7 @@ spi2_pmx_func: spi2_pmx_func {
 				>;
 			};
 
-			i2s0_pmx_func: i2s0_pmx_func {
+			i2s0_pmx_func: i2s0-pins {
 				pinctrl-single,pins = <
 					0x034 MUX_M1 /* I2S0_DI */
 					0x038 MUX_M1 /* I2S0_DO */
@@ -323,7 +323,7 @@ pmx5: pinmux@e896c800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			pmu_cfg_func: pmu_cfg_func {
+			pmu_cfg_func: pmu-cfg-pins {
 				pinctrl-single,pins = <
 					0x010 0x0 /* PMU1_SSI */
 					0x014 0x0 /* PMU2_SSI */
@@ -347,7 +347,7 @@ DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 
-			i2c3_cfg_func: i2c3_cfg_func {
+			i2c3_cfg_func: i2c3-cfg-pins {
 				pinctrl-single,pins = <
 					0x038 0x0 /* I2C3_SCL */
 					0x03c 0x0 /* I2C3_SDA */
@@ -369,7 +369,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			csi0_pwd_n_cfg_func: csi0_pwd_n_cfg_func {
+			csi0_pwd_n_cfg_func: csi0-pwd-n-cfg-pins {
 				pinctrl-single,pins = <
 					0x050 0x0 /* CSI0_PWD_N */
 				>;
@@ -390,7 +390,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			csi1_pwd_n_cfg_func: csi1_pwd_n_cfg_func {
+			csi1_pwd_n_cfg_func: csi1-pwd-n-cfg-pins {
 				pinctrl-single,pins = <
 					0x058 0x0 /* CSI1_PWD_N */
 				>;
@@ -411,7 +411,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			isp0_cfg_func: isp0_cfg_func {
+			isp0_cfg_func: isp0-cfg-pins {
 				pinctrl-single,pins = <
 					0x064 0x0 /* ISP_CLK0 */
 					0x070 0x0 /* ISP_SCL0 */
@@ -433,7 +433,7 @@ PULL_UP
 					DRIVE7_04MA DRIVE6_MASK>;
 			};
 
-			isp1_cfg_func: isp1_cfg_func {
+			isp1_cfg_func: isp1-cfg-pins {
 				pinctrl-single,pins = <
 					0x068 0x0 /* ISP_CLK1 */
 					0x078 0x0 /* ISP_SCL1 */
@@ -456,7 +456,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			pwr_key_cfg_func: pwr_key_cfg_func {
+			pwr_key_cfg_func: pwr-key-cfg-pins {
 				pinctrl-single,pins = <
 					0x08c 0x0 /* GPIO_034 */
 				>;
@@ -477,7 +477,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			uart1_cfg_func: uart1_cfg_func {
+			uart1_cfg_func: uart1-cfg-pins {
 				pinctrl-single,pins = <
 					0x0b4 0x0 /* UART1_RXD */
 					0x0b8 0x0 /* UART1_TXD */
@@ -501,7 +501,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			uart2_cfg_func: uart2_cfg_func {
+			uart2_cfg_func: uart2-cfg-pins {
 				pinctrl-single,pins = <
 					0x0c8 0x0 /* UART2_CTS_N */
 					0x0cc 0x0 /* UART2_RTS_N */
@@ -525,7 +525,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			uart5_cfg_func: uart5_cfg_func {
+			uart5_cfg_func: uart5-cfg-pins {
 				pinctrl-single,pins = <
 					0x0c8 0x0 /* UART5_RXD */
 					0x0cc 0x0 /* UART5_TXD */
@@ -549,7 +549,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			cam0_rst_cfg_func: cam0_rst_cfg_func {
+			cam0_rst_cfg_func: cam0-rst-cfg-pins {
 				pinctrl-single,pins = <
 					0x0d4 0x0 /* CAM0_RST */
 				>;
@@ -570,7 +570,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			uart0_cfg_func: uart0_cfg_func {
+			uart0_cfg_func: uart0-cfg-pins {
 				pinctrl-single,pins = <
 					0x0d8 0x0 /* UART0_RXD */
 					0x0dc 0x0 /* UART0_TXD */
@@ -592,7 +592,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			uart6_cfg_func: uart6_cfg_func {
+			uart6_cfg_func: uart6-cfg-pins {
 				pinctrl-single,pins = <
 					0x0d8 0x0 /* UART6_CTS_N */
 					0x0dc 0x0 /* UART6_RTS_N */
@@ -616,7 +616,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			uart3_cfg_func: uart3_cfg_func {
+			uart3_cfg_func: uart3-cfg-pins {
 				pinctrl-single,pins = <
 					0x0e8 0x0 /* UART3_CTS_N */
 					0x0ec 0x0 /* UART3_RTS_N */
@@ -640,7 +640,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			uart4_cfg_func: uart4_cfg_func {
+			uart4_cfg_func: uart4-cfg-pins {
 				pinctrl-single,pins = <
 					0x0f8 0x0 /* UART4_CTS_N */
 					0x0fc 0x0 /* UART4_RTS_N */
@@ -664,7 +664,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			cam1_rst_cfg_func: cam1_rst_cfg_func {
+			cam1_rst_cfg_func: cam1-rst-cfg-pins {
 				pinctrl-single,pins = <
 					0x130 0x0 /* CAM1_RST */
 				>;
@@ -692,7 +692,7 @@ pmx6: pinmux@ff3b6800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			ufs_cfg_func: ufs_cfg_func {
+			ufs_cfg_func: ufs-cfg-pins {
 				pinctrl-single,pins = <
 					0x000 0x0 /* UFS_REF_CLK */
 					0x004 0x0 /* UFS_RST_N */
@@ -714,7 +714,7 @@ DRIVE7_08MA DRIVE6_MASK
 				>;
 			};
 
-			spi3_cfg_func: spi3_cfg_func {
+			spi3_cfg_func: spi3-cfg-pins {
 				pinctrl-single,pins = <
 					0x008 0x0 /* SPI3_CLK */
 					0x00c 0x0 /* SPI3_DI */
@@ -745,7 +745,7 @@ pmx7: pinmux@ff3fd800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			sdio_clk_cfg_func: sdio_clk_cfg_func {
+			sdio_clk_cfg_func: sdio-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x000 0x0 /* SDIO_CLK */
 				>;
@@ -766,7 +766,7 @@ DRIVE6_32MA DRIVE6_MASK
 				>;
 			};
 
-			sdio_cfg_func: sdio_cfg_func {
+			sdio_cfg_func: sdio-cfg-pins {
 				pinctrl-single,pins = <
 					0x004 0x0 /* SDIO_CMD */
 					0x008 0x0 /* SDIO_DATA0 */
@@ -798,7 +798,7 @@ pmx8: pinmux@ff37e800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			sd_clk_cfg_func: sd_clk_cfg_func {
+			sd_clk_cfg_func: sd-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x000 0x0 /* SD_CLK */
 				>;
@@ -820,7 +820,7 @@ DRIVE6_MASK
 				>;
 			};
 
-			sd_cfg_func: sd_cfg_func {
+			sd_cfg_func: sd-cfg-pins {
 				pinctrl-single,pins = <
 					0x004 0x0 /* SD_CMD */
 					0x008 0x0 /* SD_DATA0 */
@@ -853,7 +853,7 @@ pmx9: pinmux@fff11800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			i2c0_cfg_func: i2c0_cfg_func {
+			i2c0_cfg_func: i2c0-cfg-pins {
 				pinctrl-single,pins = <
 					0x01c 0x0 /* I2C0_SCL */
 					0x020 0x0 /* I2C0_SDA */
@@ -875,7 +875,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			i2c1_cfg_func: i2c1_cfg_func {
+			i2c1_cfg_func: i2c1-cfg-pins {
 				pinctrl-single,pins = <
 					0x024 0x0 /* I2C1_SCL */
 					0x028 0x0 /* I2C1_SDA */
@@ -897,7 +897,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			i2c7_cfg_func: i2c7_cfg_func {
+			i2c7_cfg_func: i2c7-cfg-pins {
 				pinctrl-single,pins = <
 					0x02c 0x0 /* I2C7_SCL */
 					0x030 0x0 /* I2C7_SDA */
@@ -919,7 +919,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			slimbus_cfg_func: slimbus_cfg_func {
+			slimbus_cfg_func: slimbus-cfg-pins {
 				pinctrl-single,pins = <
 					0x034 0x0 /* SLIMBUS_CLK */
 					0x038 0x0 /* SLIMBUS_DATA */
@@ -941,7 +941,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			i2s0_cfg_func: i2s0_cfg_func {
+			i2s0_cfg_func: i2s0-cfg-pins {
 				pinctrl-single,pins = <
 					0x040 0x0 /* I2S0_DI */
 					0x044 0x0 /* I2S0_DO */
@@ -965,7 +965,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			i2s2_cfg_func: i2s2_cfg_func {
+			i2s2_cfg_func: i2s2-cfg-pins {
 				pinctrl-single,pins = <
 					0x050 0x0 /* I2S2_DI */
 					0x054 0x0 /* I2S2_DO */
@@ -989,7 +989,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			pcie_cfg_func: pcie_cfg_func {
+			pcie_cfg_func: pcie-cfg-pins {
 				pinctrl-single,pins = <
 					0x094 0x0 /* PCIE_CLKREQ_N */
 					0x098 0x0 /* PCIE_WAKE_N */
@@ -1011,7 +1011,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			spi2_cfg_func: spi2_cfg_func {
+			spi2_cfg_func: spi2-cfg-pins {
 				pinctrl-single,pins = <
 					0x09c 0x0 /* SPI2_CLK */
 					0x0a0 0x0 /* SPI2_DI */
@@ -1035,7 +1035,7 @@ DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 
-			usb_cfg_func: usb_cfg_func {
+			usb_cfg_func: usb-cfg-pins {
 				pinctrl-single,pins = <
 					0x0ac 0x0 /* GPIO_219 */
 				>;
diff --git a/arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi b/arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi
--- a/arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hikey970-pinctrl.dtsi
@@ -21,14 +21,14 @@ pmx0: pinmux@e896c000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 82 0>;
 
-			uart0_pmx_func: uart0_pmx_func {
+			uart0_pmx_func: uart0-pins {
 				pinctrl-single,pins = <
 					0x054 MUX_M2 /* UART0_RXD */
 					0x058 MUX_M2 /* UART0_TXD */
 				>;
 			};
 
-			uart2_pmx_func: uart2_pmx_func {
+			uart2_pmx_func: uart2-pins {
 				pinctrl-single,pins = <
 					0x700 MUX_M2 /* UART2_CTS_N */
 					0x704 MUX_M2 /* UART2_RTS_N */
@@ -37,7 +37,7 @@ uart2_pmx_func: uart2_pmx_func {
 				>;
 			};
 
-			uart3_pmx_func: uart3_pmx_func {
+			uart3_pmx_func: uart3-pins {
 				pinctrl-single,pins = <
 					0x064 MUX_M1 /* UART3_CTS_N */
 					0x068 MUX_M1 /* UART3_RTS_N */
@@ -46,7 +46,7 @@ uart3_pmx_func: uart3_pmx_func {
 				>;
 			};
 
-			uart4_pmx_func: uart4_pmx_func {
+			uart4_pmx_func: uart4-pins {
 				pinctrl-single,pins = <
 					0x074 MUX_M1 /* UART4_CTS_N */
 					0x078 MUX_M1 /* UART4_RTS_N */
@@ -55,52 +55,52 @@ uart4_pmx_func: uart4_pmx_func {
 				>;
 			};
 
-			uart6_pmx_func: uart6_pmx_func {
+			uart6_pmx_func: uart6-pins {
 				pinctrl-single,pins = <
 					0x05c MUX_M1 /* UART6_RXD */
 					0x060 MUX_M1 /* UART6_TXD */
 				>;
 			};
 
-			i2c3_pmx_func: i2c3_pmx_func {
+			i2c3_pmx_func: i2c3-pins {
 				pinctrl-single,pins = <
 					0x010 MUX_M1 /* I2C3_SCL */
 					0x014 MUX_M1 /* I2C3_SDA */
 				>;
 			};
 
-			i2c4_pmx_func: i2c4_pmx_func {
+			i2c4_pmx_func: i2c4-pins {
 				pinctrl-single,pins = <
 					0x03c MUX_M1 /* I2C4_SCL */
 					0x040 MUX_M1 /* I2C4_SDA */
 				>;
 			};
 
-			cam0_rst_pmx_func: cam0_rst_pmx_func {
+			cam0_rst_pmx_func: cam0-rst-pins {
 				pinctrl-single,pins = <
 					0x714 MUX_M0 /* CAM0_RST */
 				>;
 			};
 
-			cam1_rst_pmx_func: cam1_rst_pmx_func {
+			cam1_rst_pmx_func: cam1-rst-pins {
 				pinctrl-single,pins = <
 					0x048 MUX_M0 /* CAM1_RST */
 				>;
 			};
 
-			cam0_pwd_n_pmx_func: cam0_pwd_n_pmx_func {
+			cam0_pwd_n_pmx_func: cam0-pwd-n-pins {
 				pinctrl-single,pins = <
 					0x098 MUX_M0 /* CAM0_PWD_N */
 				>;
 			};
 
-			cam1_pwd_n_pmx_func: cam1_pwd_n_pmx_func {
+			cam1_pwd_n_pmx_func: cam1-pwd-n-pins {
 				pinctrl-single,pins = <
 					0x044 MUX_M0 /* CAM1_PWD_N */
 				>;
 			};
 
-			isp0_pmx_func: isp0_pmx_func {
+			isp0_pmx_func: isp0-pins {
 				pinctrl-single,pins = <
 					0x018 MUX_M1 /* ISP_CLK0 */
 					0x024 MUX_M1 /* ISP_SCL0 */
@@ -108,7 +108,7 @@ isp0_pmx_func: isp0_pmx_func {
 				>;
 			};
 
-			isp1_pmx_func: isp1_pmx_func {
+			isp1_pmx_func: isp1-pins {
 				pinctrl-single,pins = <
 					0x01c MUX_M1 /* ISP_CLK1 */
 					0x02c MUX_M1 /* ISP_SCL1 */
@@ -127,19 +127,19 @@ pmx1: pinmux@fff11000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 46 0>;
 
-			pwr_key_pmx_func: pwr_key_pmx_func {
+			pwr_key_pmx_func: pwr-key-pins {
 				pinctrl-single,pins = <
 					0x064 MUX_M0 /* GPIO_203 */
 				>;
 			};
 
-			pd_pmx_func: pd_pmx_func{
+			pd_pmx_func: pd-pins {
 				pinctrl-single,pins = <
 					0x080 MUX_M0 /* GPIO_221 */
 				>;
 			};
 
-			i2s2_pmx_func: i2s2_pmx_func {
+			i2s2_pmx_func: i2s2-pins {
 			    pinctrl-single,pins = <
 					0x050 MUX_M1 /* I2S2_DI */
 					0x054 MUX_M1 /* I2S2_DO */
@@ -148,7 +148,7 @@ i2s2_pmx_func: i2s2_pmx_func {
 			    >;
 			};
 
-			spi0_pmx_func: spi0_pmx_func {
+			spi0_pmx_func: spi0-pins {
 				pinctrl-single,pins = <
 					0x094 MUX_M1 /* SPI0_CLK */
 					0x098 MUX_M1 /* SPI0_DI */
@@ -157,7 +157,7 @@ spi0_pmx_func: spi0_pmx_func {
 				>;
 			};
 
-			spi2_pmx_func: spi2_pmx_func {
+			spi2_pmx_func: spi2-pins {
 				pinctrl-single,pins = <
 					0x710 MUX_M1 /* SPI2_CLK */
 					0x714 MUX_M1 /* SPI2_DI */
@@ -166,7 +166,7 @@ spi2_pmx_func: spi2_pmx_func {
 				>;
 			};
 
-			spi3_pmx_func: spi3_pmx_func {
+			spi3_pmx_func: spi3-pins {
 				pinctrl-single,pins = <
 					0x72c MUX_M1 /* SPI3_CLK */
 					0x730 MUX_M1 /* SPI3_DI */
@@ -175,37 +175,37 @@ spi3_pmx_func: spi3_pmx_func {
 				>;
 			};
 
-			i2c0_pmx_func: i2c0_pmx_func {
+			i2c0_pmx_func: i2c0-pins {
 				pinctrl-single,pins = <
 					0x020 MUX_M1 /* I2C0_SCL */
 					0x024 MUX_M1 /* I2C0_SDA */
 				>;
 			};
 
-			i2c1_pmx_func: i2c1_pmx_func {
+			i2c1_pmx_func: i2c1-pins {
 				pinctrl-single,pins = <
 					0x028 MUX_M1 /* I2C1_SCL */
 					0x02c MUX_M1 /* I2C1_SDA */
 				>;
 			};
-			i2c2_pmx_func: i2c2_pmx_func {
+			i2c2_pmx_func: i2c2-pins {
 				pinctrl-single,pins = <
 					0x030 MUX_M1 /* I2C2_SCL */
 					0x034 MUX_M1 /* I2C2_SDA */
 				>;
 			};
 
-			pcie_clkreq_pmx_func: pcie_clkreq_pmx_func {
+			pcie_clkreq_pmx_func: pcie-clkreq-pins {
 				pinctrl-single,pins = <
 					0x084 MUX_M1 /* PCIE0_CLKREQ_N */
 				>;
 			};
 
-			gpio185_pmx_func: gpio185_pmx_func {
+			gpio185_pmx_func: gpio185-pins {
 				pinctrl-single,pins = <0x01C    0x1>;
 			};
 
-			gpio185_pmx_idle: gpio185_pmx_idle {
+			gpio185_pmx_idle: gpio185-idle-pins {
 				pinctrl-single,pins = <0x01C    0x0>;
 			};
 		};
@@ -216,7 +216,7 @@ pmx2: pinmux@e896c800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			uart0_cfg_func: uart0_cfg_func {
+			uart0_cfg_func: uart0-cfg-pins {
 				pinctrl-single,pins = <
 					0x058 0x0 /* UART0_RXD */
 					0x05c 0x0 /* UART0_TXD */
@@ -238,7 +238,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			uart2_cfg_func: uart2_cfg_func {
+			uart2_cfg_func: uart2-cfg-pins {
 				pinctrl-single,pins = <
 					0x700 0x0 /* UART2_CTS_N */
 					0x704 0x0 /* UART2_RTS_N */
@@ -262,7 +262,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			uart3_cfg_func: uart3_cfg_func {
+			uart3_cfg_func: uart3-cfg-pins {
 				pinctrl-single,pins = <
 					0x068 0x0 /* UART3_CTS_N */
 					0x06c 0x0 /* UART3_RTS_N */
@@ -286,7 +286,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			uart4_cfg_func: uart4_cfg_func {
+			uart4_cfg_func: uart4-cfg-pins {
 				pinctrl-single,pins = <
 					0x078 0x0 /* UART4_CTS_N */
 					0x07c 0x0 /* UART4_RTS_N */
@@ -310,7 +310,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			uart6_cfg_func: uart6_cfg_func {
+			uart6_cfg_func: uart6-cfg-pins {
 				pinctrl-single,pins = <
 					0x060 0x0 /* UART6_RXD */
 					0x064 0x0 /* UART6_TXD */
@@ -332,7 +332,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			i2c3_cfg_func: i2c3_cfg_func {
+			i2c3_cfg_func: i2c3-cfg-pins {
 				pinctrl-single,pins = <
 					0x014 0x0 /* I2C3_SCL */
 					0x018 0x0 /* I2C3_SDA */
@@ -354,7 +354,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			i2c4_cfg_func: i2c4_cfg_func {
+			i2c4_cfg_func: i2c4-cfg-pins {
 				pinctrl-single,pins = <
 					0x040 0x0 /* I2C4_SCL */
 					0x044 0x0 /* I2C4_SDA */
@@ -376,7 +376,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			cam0_rst_cfg_func: cam0_rst_cfg_func {
+			cam0_rst_cfg_func: cam0-rst-cfg-pins {
 				pinctrl-single,pins = <
 					0x714 0x0 /* CAM0_RST */
 				>;
@@ -397,7 +397,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			cam1_rst_cfg_func: cam1_rst_cfg_func {
+			cam1_rst_cfg_func: cam1-rst-cfg-pins {
 				pinctrl-single,pins = <
 					0x04C 0x0 /* CAM1_RST */
 				>;
@@ -418,7 +418,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			cam0_pwd_n_cfg_func: cam0_pwd_n_cfg_func {
+			cam0_pwd_n_cfg_func: cam0-pwd-n-cfg-pins {
 				pinctrl-single,pins = <
 					0x09C 0x0 /* CAM0_PWD_N */
 				>;
@@ -439,7 +439,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			cam1_pwd_n_cfg_func: cam1_pwd_n_cfg_func {
+			cam1_pwd_n_cfg_func: cam1-pwd-n-cfg-pins {
 				pinctrl-single,pins = <
 					0x048 0x0 /* CAM1_PWD_N */
 				>;
@@ -460,7 +460,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			isp0_cfg_func: isp0_cfg_func {
+			isp0_cfg_func: isp0-cfg-pins {
 				pinctrl-single,pins = <
 					0x01C 0x0 /* ISP_CLK0 */
 					0x028 0x0 /* ISP_SCL0 */
@@ -483,7 +483,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			isp1_cfg_func: isp1_cfg_func {
+			isp1_cfg_func: isp1-cfg-pins {
 				pinctrl-single,pins = <
 					0x020 0x0 /* ISP_CLK1 */
 					0x030 0x0 /* ISP_SCL1 */
@@ -517,7 +517,7 @@ pmx5: pinmux@fc182000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 10 0>;
 
-			sdio_pmx_func: sdio_pmx_func {
+			sdio_pmx_func: sdio-pins {
 				pinctrl-single,pins = <
 					0x000 MUX_M1 /* SDIO_CLK */
 					0x004 MUX_M1 /* SDIO_CMD */
@@ -535,7 +535,7 @@ pmx6: pinmux@fc182800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			sdio_clk_cfg_func: sdio_clk_cfg_func {
+			sdio_clk_cfg_func: sdio-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x000 0x0 /* SDIO_CLK */
 				>;
@@ -556,7 +556,7 @@ DRIVE6_32MA DRIVE6_MASK
 				>;
 			};
 
-			sdio_cfg_func: sdio_cfg_func {
+			sdio_cfg_func: sdio-cfg-pins {
 				pinctrl-single,pins = <
 					0x004 0x0 /* SDIO_CMD */
 					0x008 0x0 /* SDIO_DATA0 */
@@ -592,7 +592,7 @@ pmx7: pinmux@ff37e000 {
 			/* pin base, nr pins & gpio function */
 			pinctrl-single,gpio-range = <&range 0 12 0>;
 
-			sd_pmx_func: sd_pmx_func {
+			sd_pmx_func: sd-pins {
 				pinctrl-single,pins = <
 					0x000 MUX_M1 /* SD_CLK */
 					0x004 MUX_M1 /* SD_CMD */
@@ -610,7 +610,7 @@ pmx8: pinmux@ff37e800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			sd_clk_cfg_func: sd_clk_cfg_func {
+			sd_clk_cfg_func: sd-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x000 0x0 /* SD_CLK */
 				>;
@@ -632,7 +632,7 @@ DRIVE6_MASK
 				>;
 			};
 
-			sd_cfg_func: sd_cfg_func {
+			sd_cfg_func: sd-cfg-pins {
 				pinctrl-single,pins = <
 					0x004 0x0 /* SD_CMD */
 					0x008 0x0 /* SD_DATA0 */
@@ -665,7 +665,7 @@ pmx16: pinmux@fff11800 {
 			#pinctrl-cells = <1>;
 			pinctrl-single,register-width = <0x20>;
 
-			pwr_key_cfg_func: pwr_key_cfg_func {
+			pwr_key_cfg_func: pwr-key-cfg-pins {
 				pinctrl-single,pins = <
 					0x090 0x0 /* GPIO_203 */
 				>;
@@ -686,7 +686,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			usb_cfg_func: usb_cfg_func {
+			usb_cfg_func: usb-cfg-pins {
 				pinctrl-single,pins = <
 					0x0AC 0x0 /* GPIO_221 */
 				>;
@@ -707,7 +707,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			spi0_cfg_func: spi0_cfg_func {
+			spi0_cfg_func: spi0-cfg-pins {
 				pinctrl-single,pins = <
 					0x0c8 0x0 /* SPI0_DI */
 					0x0cc 0x0 /* SPI0_DO */
@@ -730,7 +730,7 @@ DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 
-			spi2_cfg_func: spi2_cfg_func {
+			spi2_cfg_func: spi2-cfg-pins {
 				pinctrl-single,pins = <
 					0x714 0x0 /* SPI2_DI */
 					0x718 0x0 /* SPI2_DO */
@@ -753,7 +753,7 @@ DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 
-			spi3_cfg_func: spi3_cfg_func {
+			spi3_cfg_func: spi3-cfg-pins {
 				pinctrl-single,pins = <
 					0x730 0x0 /* SPI3_DI */
 					0x734 0x0 /* SPI3_DO */
@@ -776,7 +776,7 @@ DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 
-			spi0_clk_cfg_func: spi0_clk_cfg_func {
+			spi0_clk_cfg_func: spi0-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x0c4 0x0 /* SPI0_CLK */
 				>;
@@ -797,7 +797,7 @@ DRIVE7_10MA DRIVE6_MASK
 				>;
 			};
 
-			spi2_clk_cfg_func: spi2_clk_cfg_func {
+			spi2_clk_cfg_func: spi2-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x710 0x0 /* SPI2_CLK */
 				>;
@@ -818,7 +818,7 @@ DRIVE7_10MA DRIVE6_MASK
 				>;
 			};
 
-			spi3_clk_cfg_func: spi3_clk_cfg_func {
+			spi3_clk_cfg_func: spi3-clk-cfg-pins {
 				pinctrl-single,pins = <
 					0x72c 0x0 /* SPI3_CLK */
 				>;
@@ -839,7 +839,7 @@ DRIVE7_10MA DRIVE6_MASK
 				>;
 			};
 
-			i2c0_cfg_func: i2c0_cfg_func {
+			i2c0_cfg_func: i2c0-cfg-pins {
 				pinctrl-single,pins = <
 					0x04c 0x0 /* I2C0_SCL */
 					0x050 0x0 /* I2C0_SDA */
@@ -861,7 +861,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			i2c1_cfg_func: i2c1_cfg_func {
+			i2c1_cfg_func: i2c1-cfg-pins {
 				pinctrl-single,pins = <
 					0x054 0x0 /* I2C1_SCL */
 					0x058 0x0 /* I2C1_SDA */
@@ -883,7 +883,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			i2c2_cfg_func: i2c2_cfg_func {
+			i2c2_cfg_func: i2c2-cfg-pins {
 				pinctrl-single,pins = <
 					0x05c 0x0 /* I2C2_SCL */
 					0x060 0x0 /* I2C2_SDA */
@@ -905,7 +905,7 @@ DRIVE7_04MA DRIVE6_MASK
 				>;
 			};
 
-			pcie_clkreq_cfg_func: pcie_clkreq_cfg_func {
+			pcie_clkreq_cfg_func: pcie-clkreq-cfg-pins {
 				pinctrl-single,pins = <
 					0x0b0 0x0
 				>;
@@ -925,7 +925,7 @@ PULL_UP
 					DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
-			i2s2_cfg_func: i2s2_cfg_func {
+			i2s2_cfg_func: i2s2-cfg-pins {
 				pinctrl-single,pins = <
 					0x07c 0x0 /* I2S2_DI */
 					0x080 0x0 /* I2S2_DO */
@@ -949,7 +949,7 @@ DRIVE7_02MA DRIVE6_MASK
 				>;
 			};
 
-			gpio185_cfg_func: gpio185_cfg_func {
+			gpio185_cfg_func: gpio185-cfg-pins {
 				pinctrl-single,pins = <0x048  0>;
 				pinctrl-single,bias-pulldown = <0 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
@@ -957,7 +957,7 @@ gpio185_cfg_func: gpio185_cfg_func {
 				pinctrl-single,slew-rate = <0x0 0x80>;
 			};
 
-			gpio185_cfg_idle: gpio185_cfg_idle {
+			gpio185_cfg_idle: gpio185-cfg-idle-pins {
 				pinctrl-single,pins = <0x048  0>;
 				pinctrl-single,bias-pulldown = <2 2 0 2>;
 				pinctrl-single,bias-pullup = <0 1 0 1>;
-- 
2.40.1
