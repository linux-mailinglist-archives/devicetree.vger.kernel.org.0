Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B10347C13E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727600AbfGaMZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:25:39 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:56105 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726259AbfGaMZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:25:39 -0400
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id B9396100009;
        Wed, 31 Jul 2019 12:25:37 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Jens Axboe <axboe@kernel.dk>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] dt-bindings: ata: fix typo in Allwinner R40 reset specific paragraph
Date:   Wed, 31 Jul 2019 14:25:35 +0200
Message-Id: <20190731122535.3257-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"Property" is misspelled, correct it.

Fixes: caf8975b97c1 ("dt-bindings: ata: update ahci_sunxi bindings")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/ata/ahci-platform.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.txt b/Documentation/devicetree/bindings/ata/ahci-platform.txt
index e30fd106df4f..55c6fab1b373 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.txt
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.txt
@@ -45,7 +45,7 @@ Required properties when using sub-nodes:
 - #address-cells    : number of cells to encode an address
 - #size-cells       : number of cells representing the size of an address
 
-For allwinner,sun8i-r40-ahci, the reset propertie must be present.
+For allwinner,sun8i-r40-ahci, the reset property must be present.
 
 Sub-nodes required properties:
 - reg		    : the port number
-- 
2.20.1

