Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAA0B6CBEBB
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 14:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233022AbjC1MKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 08:10:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233023AbjC1MKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 08:10:48 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457D586AF
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 05:10:45 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1ph89y-0007AZ-Pm; Tue, 28 Mar 2023 14:10:42 +0200
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 07/10] ARM: dts: stm32: Add sleep pinmux for SPI1 pins_a
Date:   Tue, 28 Mar 2023 14:10:13 +0200
Message-Id: <20230328121016.2472819-8-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230328121016.2472819-1-s.trumtrar@pengutronix.de>
References: <20230328121016.2472819-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a sleep mux option for the SPI1 pins_a mux.

This is used on the Phycore STM32MP1.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 7569aeca17bbc..ff53123245a76 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -2642,6 +2642,14 @@ pins2 {
 		};
 	};
 
+	spi1_sleep_pins_a: spi1-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 0, ANALOG)>, /* SPI1_SCK */
+				 <STM32_PINMUX('Z', 1, ANALOG)>, /* SPI1_MISO */
+				 <STM32_PINMUX('Z', 2, ANALOG)>; /* SPI1_MOSI */
+		};
+	};
+
 	spi1_pins_b: spi1-1 {
 		pins1 {
 			pinmux = <STM32_PINMUX('A', 5, AF5)>, /* SPI1_SCK */
-- 
2.39.1

