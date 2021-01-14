Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 547452F68B9
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 19:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725995AbhANSB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 13:01:59 -0500
Received: from mslow2.mail.gandi.net ([217.70.178.242]:44920 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbhANSB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 13:01:59 -0500
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 638B23AFD83
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 17:57:06 +0000 (UTC)
X-Originating-IP: 86.201.233.230
Received: from localhost.localdomain (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 86C22FF808;
        Thu, 14 Jan 2021 17:56:04 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v4 2/6] dt-bindings: i3c: mipi-hci: Include the bus binding
Date:   Thu, 14 Jan 2021 18:55:54 +0100
Message-Id: <20210114175558.17097-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210114175558.17097-1-miquel.raynal@bootlin.com>
References: <20210114175558.17097-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix a tiny mistake: the node title should have been named after the
description done in the historical i3c.txt file, ie: i3c-master@<address>.

Cc: Nicolas Pitre <nico@fluxnic.net>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
index 07a7b10163a3..5d7341859650 100644
--- a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
+++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
@@ -9,6 +9,9 @@ title: MIPI I3C HCI Device Tree Bindings
 maintainers:
   - Nicolas Pitre <npitre@baylibre.com>
 
+allOf:
+  - $ref: "i3c.yaml#"
+
 description: |
   MIPI I3C Host Controller Interface
 
@@ -40,7 +43,7 @@ additionalProperties: false
 
 examples:
   - |
-    i3c@a0000000 {
+    i3c-master@a0000000 {
       compatible = "mipi-i3c-hci";
       reg = <0xa0000000 0x2000>;
       interrupts = <89>;
-- 
2.20.1

