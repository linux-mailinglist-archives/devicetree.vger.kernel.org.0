Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67345389552
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231476AbhESSaX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:23 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:59541 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231445AbhESSaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:20 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id DC3EFCB949
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:09 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 08F34C000C;
        Wed, 19 May 2021 18:26:46 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Helmut Grohne <helmut.grohne@intenta.de>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v20 05/19] dt-binding: memory: pl353-smc: Fix the example syntax and style
Date:   Wed, 19 May 2021 20:26:22 +0200
Message-Id: <20210519182636.1110080-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enhance the spacing, the comment style, add { }, remove (...).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/memory-controllers/pl353-smc.txt | 48 ++++++++++---------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
index 046efcf8bd52..9f65df034b45 100644
--- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
@@ -23,27 +23,29 @@ Required device node properties:
 			of the memory region requested by the device.
 
 Example:
-	smcc: memory-controller@e000e000
-			compatible = "arm,pl353-smc-r2p1", "arm,primecell";
-			clock-names = "memclk", "apb_pclk";
-			clocks = <&clkc 11>, <&clkc 44>;
-			reg = <0xe000e000 0x1000>;
-			#address-cells = <2>;
-			#size-cells = <1>;
-			ranges = <0x0 0x0 0xe1000000 0x1000000 //Nand CS Region
-				  0x1 0x0 0xe2000000 0x2000000 //SRAM/NOR CS Region
-				  0x2 0x0 0xe4000000 0x2000000>; //SRAM/NOR CS Region
-			nand_0: flash@e1000000 {
-				compatible = "arm,pl353-nand-r2p1"
-				reg = <0 0 0x1000000>;
-				(...)
-			};
-			nor0: flash@e2000000 {
-				compatible = "cfi-flash";
-				reg = <1 0 0x2000000>;
-			};
-			nor1: flash@e4000000 {
-				compatible = "cfi-flash";
-				reg = <2 0 0x2000000>;
-			};
+	smcc: memory-controller@e000e000 {
+		compatible = "arm,pl353-smc-r2p1", "arm,primecell";
+		clock-names = "memclk", "apb_pclk";
+		clocks = <&clkc 11>, <&clkc 44>;
+		reg = <0xe000e000 0x1000>;
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
+			  0x1 0x0 0xe2000000 0x2000000 /* SRAM/NOR CS0 region */
+			  0x2 0x0 0xe4000000 0x2000000>; /* SRAM/NOR CS1 region */
+
+		nand_0: flash@e1000000 {
+			compatible = "arm,pl353-nand-r2p1";
+			reg = <0 0 0x1000000>;
+		};
+
+		nor0: flash@e2000000 {
+			compatible = "cfi-flash";
+			reg = <1 0 0x2000000>;
+		};
+
+		nor1: flash@e4000000 {
+			compatible = "cfi-flash";
+			reg = <2 0 0x2000000>;
+		};
 	};
-- 
2.27.0

