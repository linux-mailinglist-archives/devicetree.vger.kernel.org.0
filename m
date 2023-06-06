Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F720724AA8
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238849AbjFFRxZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:53:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238263AbjFFRxX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:53:23 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DA8510CA
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:53:19 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073998;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=3l7Jl1iXpyRdwoT/GylOtWdQ+8MZ9B3ZlLM+WuAhu4Y=;
        b=ly/ahLmp8tbaE/a+e7kEDPvKPvk0C2c0QU080rcicZGJAmWiG/m8Dpi2t5lMY7T10ibJR3
        DqMv17fEo9USS3mWOwiFtfbJwt6QOdEbMAZChBl01povI2fN9i8XYD3NTW0IZgcRu0qik1
        ULIIW2c0+r+YISWWMXtUX9plGldrOUljFH9PuN2BvHGup9+SOqC/TYzwQHfcrEopSSt4dS
        XD4o5VP5JmM7TZiTTutPj17NeLgRJznNXWQj83d60rYdLwyTRk148QkiWiU5tLj+xCTHCX
        k2PFGWFSqiLftqjtTy7MDtngj9zEk/YQrk33eVoAq1cPwlGKVFPojm0empWR1Q==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id A46861C000A;
        Tue,  6 Jun 2023 17:53:17 +0000 (UTC)
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
Subject: [PATCH v2 17/17] dt-bindings: mtd: ti,am654: Prevent unevaluated properties
Date:   Tue,  6 Jun 2023 19:52:46 +0200
Message-Id: <20230606175246.190465-18-miquel.raynal@bootlin.com>
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

Reference mtd-physmap.yaml which contains all the relevant properties
for this device. Add "unevaluatedProperties: false" to avoid any
spurious addition of random properties.

Cc: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml
index 4774c92e7fc4..df4fdc02456d 100644
--- a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml
+++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml
@@ -30,6 +30,8 @@ properties:
 patternProperties:
   "^flash@[0-1],[0-9a-f]+$":
     type: object
+    $ref: mtd-physmap.yaml
+    unevaluatedProperties: false
 
 required:
   - compatible
-- 
2.34.1

