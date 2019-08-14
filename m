Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2BF688CD48
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 09:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726555AbfHNH4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 03:56:06 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:51187 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726373AbfHNH4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 03:56:06 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1hxo8Y-0006fk-69; Wed, 14 Aug 2019 09:56:02 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hxo8W-0000d1-Dh; Wed, 14 Aug 2019 09:56:00 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 2/2] ARM: dts: imx6: drop gpmi-nand address and size cells
Date:   Wed, 14 Aug 2019 09:55:58 +0200
Message-Id: <20190814075558.2319-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814075558.2319-1-m.felsch@pengutronix.de>
References: <20190814075558.2319-1-m.felsch@pengutronix.de>
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

Since commit fe2585e9c29a ("doc: dt: mtd: support partitions in a
special 'partitions' subnode") and commit 5cfdedb7b9a0 ("mtd: ofpart:
move ofpart partitions to a dedicated dt node") the partitioning should
be within a partitions sub-node.

Baseboard device trees following that scheme will get a dtc warning due
to the predefined #address-cells and #size-cells properties:

arch/arm/boot/dts/imx6qdl.dtsi:171.26-189.5: Warning (avoid_unnecessary_addr_size): /soc/gpmi-nand@112000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

I found no upstream imx6 baseboard using the old partitioning scheme, so
we can drop the two properties to avoid such warnings.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index e51d72f044e2..e6b4b8525f98 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -171,8 +171,6 @@
 
 		gpmi: gpmi-nand@112000 {
 			compatible = "fsl,imx6q-gpmi-nand";
-			#address-cells = <1>;
-			#size-cells = <1>;
 			reg = <0x00112000 0x2000>, <0x00114000 0x2000>;
 			reg-names = "gpmi-nand", "bch";
 			interrupts = <0 15 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.20.1

