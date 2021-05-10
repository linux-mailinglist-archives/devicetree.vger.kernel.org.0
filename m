Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DED0A3793D2
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:31:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231189AbhEJQc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:32:26 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:36911 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231570AbhEJQcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:32:25 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C66C7240004;
        Mon, 10 May 2021 16:31:17 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v3 1/5] dt-binding: mtd: nand: Document gpio-cs property
Date:   Mon, 10 May 2021 18:31:10 +0200
Message-Id: <20210510163114.24965-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510163114.24965-1-miquel.raynal@bootlin.com>
References: <20210510163114.24965-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Flag: yes
X-Spam-Level: *************
X-GND-Spam-Score: 200
X-GND-Status: SPAM
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To reach higher capacities, arrays of chips are now pretty common.
Unfortunately, most of the controllers have been designed a decade ago
and did not all anticipate the need for several chip-selects. The new
cs-gpios property allows to workaround this limitation by adding as many
GPIO chip-select as needed.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/nand-controller.yaml | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index 678b39952502..70a400e385b2 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -38,6 +38,15 @@ properties:
 
   ranges: true
 
+  cs-gpios:
+    description:
+      Array of chip-select available to the controller. The first
+      entries are a 1:1 mapping of the available chip-select on the
+      NAND controller (even if they are not used). As many additional
+      chip-select as needed may follow and should be phandles of GPIO
+      lines. 'reg' entries of the NAND chip subnodes become indexes of
+      this array when this property is present.
+
 patternProperties:
   "^nand@[a-f0-9]$":
     type: object
@@ -164,14 +173,19 @@ examples:
     nand-controller {
       #address-cells = <1>;
       #size-cells = <0>;
+      gpio-cs = <0>, <&gpioA 1>; /* A single native CS is available */
 
       /* controller specific properties */
 
       nand@0 {
-        reg = <0>;
+        reg = <0>; /* Native CS */
         nand-use-soft-ecc-engine;
         nand-ecc-algo = "bch";
 
         /* controller specific properties */
       };
+
+      nand@1 {
+        reg = <1>; /* GPIO CS */
+      };
     };
-- 
2.27.0

