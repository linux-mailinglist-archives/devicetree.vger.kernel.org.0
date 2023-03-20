Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6C36C135B
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 14:28:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbjCTN2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 09:28:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbjCTN2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 09:28:47 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9837818A8B
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 06:28:14 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peFYW-00065i-Ne; Mon, 20 Mar 2023 14:28:08 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 04/10] ARM: dts: stm32: Add new pinmux for sdmmc2_d47
Date:   Mon, 20 Mar 2023 14:27:49 +0100
Message-Id: <20230320132755.2150384-5-s.trumtrar@pengutronix.de>
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

Add another option for the SDMMC_D47 pins.

This is used on the Phycore STM32MP1.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 6e0363f7aa12f..a23a94aa67a16 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1887,6 +1887,27 @@ pins {
 		};
 	};
 
+	sdmmc2_d47_pins_e: sdmmc2-d47-4 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, AF9)>,	/* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, AF10)>,	/* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, AF10)>,	/* SDMMC2_D6 */
+				 <STM32_PINMUX('D', 3, AF9)>;	/* SDMMC2_D7 */
+			slew-rate = <1>;
+			drive-push-pull;
+			bias-pull-up;
+		};
+	};
+
+	sdmmc2_d47_sleep_pins_e: sdmmc2-d47-sleep-4 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+				 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
+				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
+				 <STM32_PINMUX('D', 3, ANALOG)>; /* SDMMC2_D7 */
+		};
+	};
+
 	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
-- 
2.39.1

