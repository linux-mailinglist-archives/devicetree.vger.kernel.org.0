Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66E7E6C135C
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 14:28:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbjCTN25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 09:28:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231443AbjCTN2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 09:28:49 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CEA724BD5
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 06:28:21 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peFYX-00065i-9r; Mon, 20 Mar 2023 14:28:09 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 05/10] ARM: dts: stm32: Add pinmux for USART1 pins
Date:   Mon, 20 Mar 2023 14:27:50 +0100
Message-Id: <20230320132755.2150384-6-s.trumtrar@pengutronix.de>
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

Add a mux option for the USART1 pins.

This is used on the Phycore STM32MP1.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 57 ++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index a23a94aa67a16..0537aa78e82bd 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -2258,6 +2258,33 @@ pins {
 		};
 	};
 
+	usart1_pins_a: usart1-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('A', 12, AF7)>; /* USART1_RTS */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 11, AF7)>; /* USART1_CTS_NSS */
+			bias-disable;
+		};
+	};
+
+	usart1_idle_pins_a: usart1-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('A', 12, ANALOG)>, /* USART1_RTS */
+				 <STM32_PINMUX('A', 11, AF7)>; /* USART1_CTS_NSS */
+		};
+	};
+
+	usart1_sleep_pins_a: usart1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('A', 12, ANALOG)>, /* USART1_RTS */
+				 <STM32_PINMUX('A', 11, ANALOG)>; /* USART1_CTS_NSS */
+		};
+	};
+
 	usart2_pins_a: usart2-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 5, AF7)>, /* USART2_TX */
@@ -2612,4 +2639,34 @@ pins2 {
 			bias-disable;
 		};
 	};
+
+	usart1_idle_pins_b: usart1-idle-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('Z', 7, ANALOG)>; /* USART1_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('Z', 6, AF7)>; /* USART1_RX */
+			bias-disable;
+		};
+	};
+
+	usart1_sleep_pins_b: usart1-sleep-1 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 7, ANALOG)>, /* USART1_TX */
+				 <STM32_PINMUX('Z', 6, ANALOG)>; /* USART1_RX */
+		};
+	};
+
+	usart1_pins_b: usart1-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('Z', 7, AF7)>; /* USART1_TX */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('Z', 6, AF7)>; /* USART1_RX */
+			bias-disable;
+		};
+	};
 };
-- 
2.39.1

