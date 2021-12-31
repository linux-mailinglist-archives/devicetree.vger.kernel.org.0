Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E284C4823DA
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 12:57:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbhLaL5q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 06:57:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbhLaL5q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Dec 2021 06:57:46 -0500
X-Greylist: delayed 377 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 31 Dec 2021 03:57:45 PST
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [IPv6:2a01:4f8:c010:8611::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1625C061574
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 03:57:45 -0800 (PST)
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
        id BD67F219B56; Fri, 31 Dec 2021 12:51:25 +0100 (CET)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a pinctrl-muxed i2c bus
Date:   Fri, 31 Dec 2021 12:51:09 +0100
Message-Id: <20211231115109.94626-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2059; h=from:subject; bh=+dfG90xdjC/T1eRZROz1JJlKuaG0aILF3KgfyGI7xlg=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBhzu6pqUY2YCAEAKWY/44TOEZEQG3YcW/nSJugejrU Ad71lx2JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYc7uqQAKCRDB/BR4rcrsCVl0CA CatULXGiPEGdmJ4vHvv6YM6YHr8HyXVgwyn8RE+TGfIlMrKnycdpg/8thgLjYFe/PxyEWdWeYSe9N4 8V1a7e6LFlgYtMfNh+Gqb17joUDo0Mz3Wdpr7xj6c1tWnZrVlZtleOea5yugOIy8QAnb8w1Dgv//L7 0+k6Nnved01dCkS/eLSs36zADiHpR8ZIRiW3I4+wS0+t7oXQfFyh2t1el2nKesepXIop4ayqGMQgy4 NpkxF+F2RPa9o23oe/sITS7xWWCZgKrmcBa6vQbVeW8xks9ckel8FxHoOoQZIUx0MuEljaAeQJZSkD /+d7yS+nMxiONq3ThRVehC06c+3+Do
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cm4-io board comes with an PCF85063. Add it to the device tree to make
it usable. The i2c0 bus can use two different pinmux settings to use
different pins. To keep the bus appearing on the usual pin pair (gpio0 +
gpio1) use a pinctrl-muxed setting as the vendor dts does.

Note that if you modified the dts before to add devices to the i2c bus
appearing on pins gpio0 + gpio1 (either directly in the dts or using an
overlay), you have to put these into the i2c@0 node introduced here now.

Reviewed-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
Hello,

changes since v2 (20211216212948.nrfmm4jpbhoknfr5@pengutronix.de):

 - add Maxime's R-b tag
 - change the commit log wording to say vendor dts instead of upstream
   dts
 - Add a paragraph to the commit log about breakage this commits
   introduces.

Best regards
Uwe

 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
index 19600b629be5..5ddad146b541 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
@@ -18,6 +18,41 @@ led-pwr {
 			linux,default-trigger = "default-on";
 		};
 	};
+
+	i2c0mux {
+		compatible = "i2c-mux-pinctrl";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c-parent = <&i2c0>;
+
+		pinctrl-names = "i2c0", "i2c0-vc";
+		pinctrl-0 = <&i2c0_gpio0>;
+		pinctrl-1 = <&i2c0_gpio44>;
+
+		i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			rtc@51 {
+				/* Attention: An alarm resets the machine */
+				compatible = "nxp,pcf85063";
+				reg = <0x51>;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	/delete-property/ pinctrl-names;
+	/delete-property/ pinctrl-0;
 };
 
 &ddc0 {

base-commit: fc74e0a40e4f9fd0468e34045b0c45bba11dcbb2
-- 
2.34.1

