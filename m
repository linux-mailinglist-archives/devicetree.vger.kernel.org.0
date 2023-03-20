Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61D816C1360
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 14:29:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231279AbjCTN3A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 09:29:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231760AbjCTN2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 09:28:51 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A26B02595F
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 06:28:22 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peFYX-00065i-RW; Mon, 20 Mar 2023 14:28:09 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 06/10] ARM: dts: stm32: Add idle/sleep pinmux for USART3
Date:   Mon, 20 Mar 2023 14:27:51 +0100
Message-Id: <20230320132755.2150384-7-s.trumtrar@pengutronix.de>
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

Add idle and sleep mux option for the USART3 pins_a.

This is used on the Phycore STM32MP1.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 0537aa78e82bd..7569aeca17bbc 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -2387,6 +2387,23 @@ pins2 {
 		};
 	};
 
+	usart3_idle_pins_a: usart3-idle-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('B', 10, ANALOG)>; /* USART3_TX */
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('B', 12, AF8)>; /* USART3_RX */
+			bias-disable;
+		};
+	};
+
+	usart3_sleep_pins_a: usart3-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('B', 10, ANALOG)>, /* USART3_TX */
+				 <STM32_PINMUX('B', 12, ANALOG)>; /* USART3_RX */
+		};
+	};
+
 	usart3_pins_b: usart3-1 {
 		pins1 {
 			pinmux = <STM32_PINMUX('B', 10, AF7)>, /* USART3_TX */
-- 
2.39.1

