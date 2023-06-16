Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 841E47332F7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 16:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345705AbjFPOCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 10:02:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345415AbjFPOB2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 10:01:28 -0400
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BD4A4214
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 07:00:58 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686924056;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=vUuQah/jLut+5JCdepeOJ/jXlhpXt0heS9hreLKMNHo=;
        b=I7NzJG0qWy+YP4gvzB4eyBw8PnR5wozl7o3Vr7pl1cbNo32TDit+ANwC/gie06z3BCa52c
        YLqUlSBsKwpLCHeRXRgQF4TyTEMrFiz1ZS/Pm8E1TYA6ZEBbbqwtGef6Rtsat3lvVTehoV
        Z0uGKeMWhElOny7aBsmo9heu6Rb6hxmIdglRJc+MYaWtrteuJ1Nnw3Ml50w9UQPX+YoDe6
        nxdyxYb71nOA3OGV121NZEx2QlHbg0N8H1i0caMbNeW95wbb8vkdcmTo5sHQXOqrkueeoc
        zDSVga4gO/+k+gQq54ChVSB6ELFekZFmsthZrsYuyrr4YA9dgr6X8+sjUS3E6g==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3615340007;
        Fri, 16 Jun 2023 14:00:55 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] dt-bindings: mtd: spi-nor: clarify the need for spi-nor compatibles
Date:   Fri, 16 Jun 2023 16:00:54 +0200
Message-Id: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most SPI NOR devices do not require a specific compatible, their ID can
in general be discovered with the JEDEC READ ID opcode. In this case,
only the "jedec,spi-nor" generic compatible is expected. Clarify this
information in the compatible description to (i) help device-tree
writers and (ii) prevent further attempts to extend this list with
useless information.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 7149784a36ac..bef071163e38 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -43,8 +43,10 @@ properties:
           - const: jedec,spi-nor
       - const: jedec,spi-nor
     description:
-      Must also include "jedec,spi-nor" for any SPI NOR flash that can be
-      identified by the JEDEC READ ID opcode (0x9F).
+      SPI NOR flashes compatible with the JEDEC standard or which may be
+      identified with the JEDEC READ ID opcode (0x9F) do not deserve a
+      specific compatible. They should instead only be matched against
+      the generic "jedec,spi-nor" compatible.
 
   reg:
     minItems: 1
-- 
2.34.1

