Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26C4F781A6
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2019 23:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726203AbfG1VEf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Jul 2019 17:04:35 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:35782 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726197AbfG1VEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Jul 2019 17:04:35 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id D7B1874155F; Sun, 28 Jul 2019 23:04:33 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        info@acmesystems.it
Subject: [PATCH 2/2] ARM: dts: at91: add support for Arietta G25
Date:   Sun, 28 Jul 2019 23:04:03 +0200
Message-Id: <20190728210403.2730-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190728210403.2730-1-uwe@kleine-koenig.org>
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arietta G25 is a SBC powered by a AT91SAMG25 running at 400 MHz.
See https://www.acmesystems.it/arietta for more details.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm/boot/dts/at91sam9g25-arietta.dts | 86 +++++++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91sam9g25-arietta.dts

diff --git a/arch/arm/boot/dts/at91sam9g25-arietta.dts b/arch/arm/boot/dts/at91sam9g25-arietta.dts
new file mode 100644
index 000000000000..6c20e02f0ea9
--- /dev/null
+++ b/arch/arm/boot/dts/at91sam9g25-arietta.dts
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Arietta - System On Module
+ * https://www.acmesystems.it/arietta
+ */
+
+/dts-v1/;
+#include "at91sam9g25.dtsi"
+
+/ {
+	model = "Acme Systems Arietta G25";
+	compatible = "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory {
+		reg = <0x20000000 0x8000000>;
+	};
+
+	clocks {
+		slow_xtal {
+			clock-frequency = <32768>;
+		};
+
+		main_xtal {
+			clock-frequency = <12000000>;
+		};
+	};
+
+	ahb {
+		apb {
+			rtc@fffffeb0 {
+				status = "okay";
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		arietta_led {
+			label = "arietta_led";
+			gpios = <&pioB 8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&dbgu {
+	status = "okay";
+};
+
+&mmc0 {
+	pinctrl-0 = <
+		&pinctrl_mmc0_slot0_clk_cmd_dat0
+		&pinctrl_mmc0_slot0_dat1_3>;
+	status = "okay";
+
+	slot@0 {
+		reg = <0>;
+		bus-width = <4>;
+	};
+};
+
+&usart0 {
+	status ="okay";
+};
+
+&usart1 {
+	status ="okay";
+};
+
+&usb0 {
+	status = "okay";
+	num-ports = <3>;
+};
+
+&usb1 {
+	status = "okay";
+};
+
+&usb2 {
+	status = "okay";
+};
-- 
2.20.1

