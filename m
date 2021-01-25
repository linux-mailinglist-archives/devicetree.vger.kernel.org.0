Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD21E304B40
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 22:28:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727983AbhAZEsH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:48:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730864AbhAYSst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 13:48:49 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C23BEC06178B
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:47:40 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1l46tm-0007Cg-N1; Mon, 25 Jan 2021 19:47:38 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH 05/10] ARM: dts: imx6: RDU2: adjust audio devices nomenclature
Date:   Mon, 25 Jan 2021 19:47:31 +0100
Message-Id: <20210125184736.1226435-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125184736.1226435-1-l.stach@pengutronix.de>
References: <20210125184736.1226435-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Cory Tusar <cory.tusar@zii.aero>

This adds a "HPA1" prefix to the amplifiers on both audio cards, this is
done in order to get more consistency for userspace running on RDU2 and
RDU3, where we have two amplifiers on a single card device in the "Zest"
configuration.

Also adjust the card names to the new standard expected by userspace.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
[adjusted commit message]
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index dcc97a84c88d..525ff62b47f5 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -112,17 +112,17 @@
 
 	sound1 {
 		compatible = "simple-audio-card";
-		simple-audio-card,name = "Front";
+		simple-audio-card,name = "front";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,bitclock-master = <&sound1_codec>;
 		simple-audio-card,frame-master = <&sound1_codec>;
 		simple-audio-card,widgets =
 			"Headphone", "Headphone Jack";
 		simple-audio-card,routing =
-			"Headphone Jack", "HPLEFT",
-			"Headphone Jack", "HPRIGHT",
-			"LEFTIN", "HPL",
-			"RIGHTIN", "HPR";
+			"Headphone Jack", "HPA1 HPLEFT",
+			"Headphone Jack", "HPA1 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR";
 		simple-audio-card,aux-devs = <&hpa1>;
 
 		sound1_cpu: simple-audio-card,cpu {
@@ -137,17 +137,17 @@
 
 	sound2 {
 		compatible = "simple-audio-card";
-		simple-audio-card,name = "Back";
+		simple-audio-card,name = "periph";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,bitclock-master = <&sound2_codec>;
 		simple-audio-card,frame-master = <&sound2_codec>;
 		simple-audio-card,widgets =
 			"Headphone", "Headphone Jack";
 		simple-audio-card,routing =
-			"Headphone Jack", "HPLEFT",
-			"Headphone Jack", "HPRIGHT",
-			"LEFTIN", "HPL",
-			"RIGHTIN", "HPR";
+			"Headphone Jack", "HPA1 HPLEFT",
+			"Headphone Jack", "HPA1 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR";
 		simple-audio-card,aux-devs = <&hpa2>;
 
 		sound2_cpu: simple-audio-card,cpu {
@@ -399,6 +399,7 @@
 		reg = <0x60>;
 		power-gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
 		Vdd-supply = <&reg_5p0v_main>;
+		sound-name-prefix = "HPA1";
 	};
 
 	edp-bridge@68 {
@@ -639,6 +640,7 @@
 		reg = <0x60>;
 		power-gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
 		Vdd-supply = <&reg_5p0v_main>;
+		sound-name-prefix = "HPA1";
 	};
 };
 
-- 
2.20.1

