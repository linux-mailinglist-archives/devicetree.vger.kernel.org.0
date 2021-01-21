Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A6022FE765
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 11:20:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729147AbhAUKTf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 05:19:35 -0500
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:57271 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729166AbhAUKS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:18:58 -0500
X-Originating-IP: 86.201.233.230
Received: from localhost.localdomain (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 831CF20011;
        Thu, 21 Jan 2021 10:18:14 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v5 2/6] dt-bindings: i3c: mipi-hci: Include the bus binding
Date:   Thu, 21 Jan 2021 11:18:04 +0100
Message-Id: <20210121101808.14654-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210121101808.14654-1-miquel.raynal@bootlin.com>
References: <20210121101808.14654-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update a little bit the content to match the bus binding, including:
- the node title should have been named after the description done
  in the historical i3c.txt file, ie: i3c-master@<address>
- child nodes should be accepted even though the drivers do not currently
  support it
- #address-cells and #size-cells are also mandatory and have specific
  values

Cc: Nicolas Pitre <nico@fluxnic.net>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
index 07a7b10163a3..04da001fc6ec 100644
--- a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -9,6 +9,9 @@ title: MIPI I3C HCI Device Tree Bindings
 maintainers:
   - Nicolas Pitre <npitre@baylibre.com>
 
+allOf:
+  - $ref: /schemas/i3c/i3c.yaml#
+
 description: |
   MIPI I3C Host Controller Interface
 
@@ -36,12 +39,14 @@ required:
   - reg
   - interrupts
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-    i3c@a0000000 {
+    i3c-master@a0000000 {
       compatible = "mipi-i3c-hci";
       reg = <0xa0000000 0x2000>;
       interrupts = <89>;
+      #address-cells = <3>;
+      #size-cells = <0>;
     };
-- 
2.20.1

