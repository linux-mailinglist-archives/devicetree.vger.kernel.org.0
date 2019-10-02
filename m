Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4A93C8C2D
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 16:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727750AbfJBO7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 10:59:20 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:43801 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726070AbfJBO7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 10:59:19 -0400
Received: from localhost (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
        (Authenticated sender: kamel.bouhara@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id DD077200003;
        Wed,  2 Oct 2019 14:59:17 +0000 (UTC)
From:   Kamel Bouhara <kamel.bouhara@bootlin.com>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH] ARM: dts: at91: sama5d2: add an rtc label for derivated boards
Date:   Wed,  2 Oct 2019 16:59:14 +0200
Message-Id: <20191002145914.14874-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an rtc label so we just need to alias it from derivated boards.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 2e2c1a7b1d1d..565204816e34 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -689,7 +689,7 @@
 				#clock-cells = <0>;
 			};
 
-			rtc@f80480b0 {
+			rtc: rtc@f80480b0 {
 				compatible = "atmel,at91rm9200-rtc";
 				reg = <0xf80480b0 0x30>;
 				interrupts = <74 IRQ_TYPE_LEVEL_HIGH 7>;
-- 
2.23.0

