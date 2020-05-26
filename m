Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3BE61E2F8F
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2020 21:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390358AbgEZT44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 May 2020 15:56:56 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:35495 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390133AbgEZT44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 May 2020 15:56:56 -0400
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C6144C000C;
        Tue, 26 May 2020 19:56:53 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [RESEND v5 16/21] dt-bindings: mtd: Deprecate the nand-ecc-mode property
Date:   Tue, 26 May 2020 21:56:28 +0200
Message-Id: <20200526195633.11543-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526195633.11543-1-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property does not describe very well its purpose: it describes
the ECC engine type, also called provider. Deprecate it in favor of
nand-ecc-provider. In the mean time, update a bit the description of
the property to make it more accurate.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/nand-controller.yaml  | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index a35ff8227427..256080ba50bd 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -46,16 +46,17 @@ patternProperties:
         description:
           Contains the native Ready/Busy IDs.
 
-      nand-ecc-mode:
+      nand-ecc-provider:
         allOf:
           - $ref: /schemas/types.yaml#/definitions/string
           - enum: [ none, soft, hw, on-die ]
         description:
-          Desired ECC engine, either hardware (most of the time
-          embedded in the NAND controller) or software correction
-          (Linux will handle the calculations). soft_bch is deprecated
-          and should be replaced by soft and nand-ecc-algo.
-	  hw_syndrome is deprecated and should be
+          Desired ECC engine provider, either hardware (most of the time
+          embedded in the NAND controller, but can also be external) or
+          software correction (the OS will handle the calculations).
+          The nand-ecc-mode property is deprecated in favor of this one.
+          soft_bch is deprecated and should be replaced by soft and
+          nand-ecc-algo. hw_syndrome is deprecated and should be
           replaced by hw and nand-ecc-placement.
 
       nand-ecc-placement:
@@ -148,7 +149,7 @@ examples:
 
       nand@0 {
         reg = <0>;
-        nand-ecc-mode = "soft";
+        nand-ecc-provider = "soft";
         nand-ecc-algo = "bch";
 
         /* controller specific properties */
-- 
2.20.1

