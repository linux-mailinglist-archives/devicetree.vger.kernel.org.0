Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A66965B322
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:04:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236129AbjABOEk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:04:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236112AbjABOEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:04:33 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8955A6566
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:04:32 -0800 (PST)
Received: from localhost.localdomain (unknown [IPv6:2804:14c:485:4b69:f6ef:d541:8aff:4dc7])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0C34985355;
        Mon,  2 Jan 2023 15:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672668270;
        bh=L38LzinRVRh/8tkHMxkSYsQDyK3/Lz0La0nmovWSTNY=;
        h=From:To:Cc:Subject:Date:From;
        b=YQbgjklFYfb1oEJNYXG0ibl4aKvJQm41r8fQtDvn4t2RDusYpFlvI9yPhp+nQ8kJq
         HsBDz2ZycfKDQjHcXl0sEEqPJt+ADU+j0QwXPRez830rT4klIy/7yNR2tU+2ZoSyUi
         SDtQC0m1K3LmFOIRD09+cDKYCaIfVTREHr59MTZkwYNSKrRsqe78B1/BoF56oH/HLE
         F2N4JpWezx7C5RnbsaU8ZvJ3hVk8H6+/v5ezN8STulgGQgvNGmrMt7xcPSEBGrwT4h
         xgn5TpaYgrz2Aiougv5voZX/P0q7omP86gsJxdmlnS8pHvygDEngrQHDUEDKvFAUFY
         A+cweAWEwu7Lw==
From:   Fabio Estevam <festevam@denx.de>
To:     shawnguo@kernel.org
Cc:     tharvey@gateworks.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8m-venice: Remove incorrect 'uart-has-rtscts'
Date:   Mon,  2 Jan 2023 11:04:02 -0300
Message-Id: <20230102140402.582698-1-festevam@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The following build warnings are seen when running:

make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml

arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb: serial@30860000: cts-gpios: False schema does not allow [[33, 3, 1]]
	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb: serial@30860000: rts-gpios: False schema does not allow [[33, 5, 1]]
	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
...

The imx8m Venice Gateworks boards do not expose the UART RTS and CTS
as native UART pins, so 'uart-has-rtscts' should not be used.

Using 'uart-has-rtscts' with 'rts-gpios' is an invalid combination
detected by serial.yaml.

Fix the problem by removing the incorrect 'uart-has-rtscts' property.

Fixes: 27c8f4ccc1b9 ("arm64: dts: imx8mm-venice-gw72xx-0x: add dt overlays for serial modes")
Fixes: d9a9a7cf32c9 ("arm64: dts: imx8m{m,n}-venice-*: add missing uart-has-rtscts property to UARTs")
Fixes: 870f645b396b ("arm64: dts: imx8mp-venice-gw74xx: add WiFi/BT module support")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso  | 1 -
 .../boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso  | 1 -
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi        | 1 -
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts         | 3 ---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts         | 3 ---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts         | 1 -
 arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts         | 1 -
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts         | 1 -
 8 files changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
index 3ea73a6886ff..f6ad1a4b8b66 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.dtso
@@ -33,7 +33,6 @@
 	pinctrl-0 = <&pinctrl_uart2>;
 	rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
 	cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso
index 2fa635e1c1a8..1f8ea20dfafc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtso
@@ -33,7 +33,6 @@
 	pinctrl-0 = <&pinctrl_uart2>;
 	rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
 	cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
index 244ef8d6cc68..7761d5671cb1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
@@ -222,7 +222,6 @@ &uart3 {
 	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_bten>;
 	cts-gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
 	rts-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index 750a1f07ecb7..a186df2f833f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -733,7 +733,6 @@ &uart1 {
 	dtr-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
 	dsr-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
 	dcd-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
@@ -749,7 +748,6 @@ &uart3 {
 	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
 	cts-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
 	rts-gpios = <&gpio4 9 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
@@ -758,7 +756,6 @@ &uart4 {
 	pinctrl-0 = <&pinctrl_uart4>, <&pinctrl_uart4_gpio>;
 	cts-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
 	rts-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index 32872b0b1aaf..e8bc1fccc47b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -664,7 +664,6 @@ &uart1 {
 	pinctrl-0 = <&pinctrl_uart1>, <&pinctrl_uart1_gpio>;
 	rts-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
 	cts-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
@@ -681,7 +680,6 @@ &uart3 {
 	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
 	rts-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
 	cts-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
@@ -699,7 +697,6 @@ &uart4 {
 	dtr-gpios = <&gpio4 3 GPIO_ACTIVE_LOW>;
 	dsr-gpios = <&gpio4 4 GPIO_ACTIVE_LOW>;
 	dcd-gpios = <&gpio4 6 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
index 8ce562246a08..acc2ba8e00a8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
@@ -581,7 +581,6 @@ &uart1 {
 	dtr-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	dsr-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
 	dcd-gpios = <&gpio3 24 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
index b9444e4a3d2d..7c12518dbc96 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
@@ -643,7 +643,6 @@ &uart3 {
 	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
 	rts-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
 	cts-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
index ceeca4966fc5..8eb7d5ee38da 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
@@ -623,7 +623,6 @@ &uart3 {
 	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_uart3_gpio>;
 	cts-gpios = <&gpio3 21 GPIO_ACTIVE_LOW>;
 	rts-gpios = <&gpio3 22 GPIO_ACTIVE_LOW>;
-	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
-- 
2.25.1

