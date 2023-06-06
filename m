Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BA5F724A9A
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233136AbjFFRxF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:53:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238798AbjFFRxE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:53:04 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33381E78
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:53:02 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073980;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=oSPMoy4cm/1qPew5J6X7w3l170vo398bSDNMHlKkOcA=;
        b=RYZyzQ/3J966+sltkixRVtvXTc4z4o+nG3liJg2QKTxwAMmkEdWimK/Mdxwa4Tt3TlzKrJ
        ynp4jXqc9sNbkJNjIsPFB8aH+wMXw7RbVMyE0xV1wNDrUGeU4vEm/SWejtxLPag4+pVyuA
        F339Yi4kJFw78HDgJMH/vaVdAa13C7KPvO+hKUo6MYt2HwVhbdBIGK+/6lJsRsUJxTh19G
        mfj2sfMAh8KxBNlTjqj5mxD4fQi971MknyEsOhY/qxLVL4w/EE0dQXkdIkr/bOTv5bvtAV
        SUsno2csf87w+kan7O7vMXpr2n7lw2d+4EK1K7sfTpTCu0tvnsZdIbRDNzNwig==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9E3C21C000C;
        Tue,  6 Jun 2023 17:52:59 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 04/17] dt-bindings: mtd: Describe nand-ecc-mode
Date:   Tue,  6 Jun 2023 19:52:33 +0200
Message-Id: <20230606175246.190465-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606175246.190465-1-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property has been extensively used for almost two decades already,
a lot of device trees use it, this is not the preferred way to configure
the ECC engines but we cannot just ignore it. Describe the property,
list the exact strings which have once been supported and mark it
deprecated.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
index 0b220e99450d..1251d3063e45 100644
--- a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
+++ b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
@@ -41,6 +41,14 @@ properties:
     enum: [ oob, interleaved ]
     deprecated: true
 
+  nand-ecc-mode:
+    description:
+      Legacy ECC configuration mixing the ECC engine choice and
+      configuration.
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [none, soft, soft_bch, hw, hw_syndrome, on-die]
+    deprecated: true
+
   nand-bus-width:
     description:
       Bus width to the NAND chip
-- 
2.34.1

