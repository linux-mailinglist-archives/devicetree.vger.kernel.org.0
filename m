Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D31F6C135E
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 14:29:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231682AbjCTN27 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 09:28:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230241AbjCTN2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 09:28:51 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F0CE25964
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 06:28:22 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peFYa-00065i-9G; Mon, 20 Mar 2023 14:28:12 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 10/10] ARM: dts: stm32: add STM32MP1-based Phytec board
Date:   Mon, 20 Mar 2023 14:27:55 +0100
Message-Id: <20230320132755.2150384-11-s.trumtrar@pengutronix.de>
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

Add the Phytec STM32MP1-3 Dev board. The devboard uses a Phytec
stm32m157c-som.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/Makefile                    |  3 +-
 .../dts/stm32mp157c-phycore-stm32mp1-3.dts    | 66 +++++++++++++++++++
 2 files changed, 68 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index efe4152e5846d..dfa9a7477c825 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1252,7 +1252,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32mp157c-ev1.dtb \
 	stm32mp157c-ev1-scmi.dtb \
 	stm32mp157c-lxa-mc1.dtb \
-	stm32mp157c-odyssey.dtb
+	stm32mp157c-odyssey.dtb \
+	stm32mp157c-phycore-stm32mp1-3.dtb
 dtb-$(CONFIG_MACH_SUN4I) += \
 	sun4i-a10-a1000.dtb \
 	sun4i-a10-ba10-tvbox.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
new file mode 100644
index 0000000000000..6f4e5f326bdd3
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
+ * Author: Dom VOVARD <dom.vovard@linrt.com>.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/stm32-pinfunc.h>
+#include "stm32mp157.dtsi"
+#include "stm32mp15xc.dtsi"
+#include "stm32mp15xxac-pinctrl.dtsi"
+#include "stm32mp157c-phycore-stm32mp15-som.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-STM32MP1-3 Dev Board";
+	compatible = "phytec,phycore-stm32mp1-3",
+		     "phytec,phycore-stm32mp157c-som", "st,stm32mp157";
+
+	aliases {
+		mmc0 = &sdmmc1;
+		mmc1 = &sdmmc2;
+		mmc2 = &sdmmc3;
+		serial0 = &uart4;
+		serial1 = &usart3;
+		serial2 = &usart1;
+	};
+};
+
+&cryp1 {
+	status = "okay";
+};
+
+&dts {
+	status = "okay";
+};
+
+&fmc {
+	status = "disabled";
+};
+
+&gpu {
+	status = "okay";
+	contiguous-area = <&gpu_reserved>;
+};
+
+&i2c4_eeprom {
+	status = "okay";
+};
+
+&i2c4_rtc {
+	status = "okay";
+};
+
+&qspi {
+	status = "okay";
+};
+
+&sdmmc1 {
+	secure-status = "disabled";
+};
+
+&sdmmc2 {
+	status = "okay";
+	secure-status = "disabled";
+};
-- 
2.39.1

