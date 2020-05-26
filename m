Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38CFE1DA54F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 01:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728215AbgESXZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 19:25:05 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:58390 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725998AbgESXZC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 19:25:02 -0400
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 541DB2A0256;
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
Subject: [PATCH v2 1/4] dt-bindings: mtd: rawnand: ingenic: Clarify the active state of the RB pin
Date:   Wed, 20 May 2020 01:24:51 +0200
Message-Id: <20200519232454.374081-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Let's make things consistent with other bindings and clarify the
expected active state.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v2:
* New patch
---
 Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt b/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
index c02259353327..4cbe13f94564 100644
--- a/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
+++ b/Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt
@@ -30,7 +30,8 @@ Optional children node properties:
 - nand-ecc-strength: ECC strength (max number of correctable bits).
 - nand-ecc-mode: String, operation mode of the NAND ecc mode. "hw" by default
 - nand-on-flash-bbt: boolean to enable on flash bbt option, if not present false
-- rb-gpios: GPIO specifier for the busy pin.
+- rb-gpios: GPIO specifier for the ready/busy pin. The active state (ready)
+            should be high unless the signal is inverted.
 - wp-gpios: GPIO specifier for the write protect pin.
 
 Optional child node of NAND chip nodes:
-- 
2.25.4

