Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2884618D8C
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726469AbfEIP6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:52 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:36037 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726776AbfEIP6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:51 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRW-00076d-Sa; Thu, 09 May 2019 17:58:46 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062y-87; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org,
        Michael Grzeschik <m.grzeschik@pengutronix.de>
Subject: [PATCH 14/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add boot spi-nor
Date:   Thu,  9 May 2019 17:58:31 +0200
Message-Id: <20190509155834.22838-15-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190509155834.22838-1-m.felsch@pengutronix.de>
References: <20190509155834.22838-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Grzeschik <m.grzeschik@pengutronix.de>

Since Kontron still uses silicon version below 1.3 they have add a
spi-nor to implement Workaround #1 of erratum ERR006282.

Sigend-off-by; Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 0b45b3062358..7e60142f09c1 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -255,6 +255,14 @@
 	pinctrl-0 = <&pinctrl_ecspi4>;
 	cs-gpios = <&gpio3 24 GPIO_ACTIVE_HIGH>,
 		   <&gpio3 29 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	/* default boot source: workaround #1 for errata ERR006282 */
+	m25p80@0 {
+		compatible = "winbond,w25q16dw", "jedec,spi-nor";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+	};
 };
 
 /* GBE */
-- 
2.20.1

