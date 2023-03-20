Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF936C1359
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 14:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231423AbjCTN2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 09:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231234AbjCTN2q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 09:28:46 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB3D12471B
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 06:28:13 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peFYV-00065i-Iv; Mon, 20 Mar 2023 14:28:07 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 02/10] ARM: dts: stm32: Add alternate pinmux for sai2b
Date:   Mon, 20 Mar 2023 14:27:47 +0100
Message-Id: <20230320132755.2150384-3-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230320132755.2150384-1-s.trumtrar@pengutronix.de>
References: <20230320132755.2150384-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add another option for the SAI2B pins.

This is used on the Phycore STM32MP1.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 1c97db4dbfc6d..0062f8ea17aab 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1491,6 +1491,30 @@ pins {
 		};
 	};
 
+	sai2b_pins_d: sai2b-3 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 2, AF10)>, /* SAI2_SCK_B */
+				 <STM32_PINMUX('C', 0, AF8)>, /* SAI2_FS_B */
+				 <STM32_PINMUX('H', 3, AF10)>; /* SAI2_MCLK_B */
+			slew-rate = <0>;
+			drive-push-pull;
+			bias-disable;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('F', 11, AF10)>; /* SAI2_SD_B */
+			bias-disable;
+		};
+	};
+
+	sai2b_sleep_pins_d: sai2b-sleep-3 {
+		pins1 {
+			pinmux = <STM32_PINMUX('H', 2, ANALOG)>, /* SAI2_SCK_B */
+				 <STM32_PINMUX('C', 0, ANALOG)>, /* SAI2_FS_B */
+				 <STM32_PINMUX('H', 3, ANALOG)>, /* SAI2_MCLK_B */
+				 <STM32_PINMUX('F', 11, ANALOG)>; /* SAI2_SD_B */
+		};
+	};
+
 	sai4a_pins_a: sai4a-0 {
 		pins {
 			pinmux = <STM32_PINMUX('B', 5, AF10)>; /* SAI4_SD_A */
-- 
2.39.1

