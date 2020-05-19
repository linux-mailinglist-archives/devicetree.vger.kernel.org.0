Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44C861DA54D
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 01:25:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728219AbgESXZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 19:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728228AbgESXZD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 19:25:03 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22303C061A0E
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 16:25:03 -0700 (PDT)
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C5ABC2A26C9;
        Wed, 20 May 2020 00:25:00 +0100 (BST)
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Paul Cercueil <paul@crapouillou.net>,
        Harvey Hunt <harveyhuntnexus@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-mtd@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH v2 2/4] dt-bindings: mtd: nand: Document the generic rb-gpios property
Date:   Wed, 20 May 2020 01:24:52 +0200
Message-Id: <20200519232454.374081-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200519232454.374081-1-boris.brezillon@collabora.com>
References: <20200519232454.374081-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A few drivers use this property to describe GPIO pins used to sample
the NAND Ready/Busy state. Let's make it part of the generic binding
doc.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v2:
* New patch
---
 Documentation/devicetree/bindings/mtd/nand-controller.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index d261b7096c69..17f4dc8f8cab 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -119,6 +119,13 @@ patternProperties:
         description:
           Contains the native Ready/Busy IDs.
 
+      rb-gpios:
+        description:
+          Contains one or more GPIO descriptor (the numper of descriptor
+          depends on the number of R/B pins exposed by the flash) for the
+          Ready/Busy pins. Active state refers to the NAND ready state and
+          should be set to GPIOD_ACTIVE_HIGH unless the signal is inverted.
+
     required:
       - reg
 
-- 
2.25.4

