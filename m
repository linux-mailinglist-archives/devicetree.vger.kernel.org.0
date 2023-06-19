Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09FB6735042
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjFSJbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231838AbjFSJaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:15 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E222E1BC7
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:39 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166978;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=RFmCslVFz2CsswADyIjnNQmF72pKXiw6o6n+ThVMj7A=;
        b=Xmn+KDShpLYN5LuORmG5+hp+80pxOYwTikAP/2in2yKo4E3FU5zBhN3q3/E2zy5EpAjL6C
        iZLXftq+/uIXEVOzkaUGuGR0331MbV+15dk1B3foaceUJzlJ0arHh7NIPwQ2ecAIk/1kg9
        bH6/HkhjUflEWkwRI9VuW+AYoYuw+BszHYFv5Qphu10j7uRTGToh03I46HWXWpn2brF1nP
        Enw2TqSW8FDSlW6s9lWDU//xVxbATo3eeGcxox495i7tk/PQKJzJb8zXoAHtxJOTOVDUig
        FOaJ7waX1O3s2gUkdCPWHcxsBlTCdm1dhGwPkdiTQiIhdXfLAWcEYWHt5dpMxw==
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
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C566B1BF204;
        Mon, 19 Jun 2023 09:29:36 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 11/17] dt-bindings: mtd: denali: Prevent NAND chip unevaluated properties
Date:   Mon, 19 Jun 2023 11:29:10 +0200
Message-Id: <20230619092916.3028470-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
References: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ensure all raw NAND chip properties are valid by referencing the
relevant schema and set unevaluatedProperties to false in the NAND chip
section to avoid spurious additions of random properties.

Doing this in one location also saves us from dupplicating the
description of the NAND chip object.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mtd/denali,nand.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/denali,nand.yaml b/Documentation/devicetree/bindings/mtd/denali,nand.yaml
index 0be83ad42970..81f95538d415 100644
--- a/Documentation/devicetree/bindings/mtd/denali,nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/denali,nand.yaml
@@ -63,6 +63,12 @@ properties:
     minItems: 1
     maxItems: 2
 
+patternProperties:
+  "^nand@[a-f0-9]$":
+    type: object
+    $ref: raw-nand-chip.yaml
+    unevaluatedProperties: false
+
 allOf:
   - $ref: nand-controller.yaml
 
@@ -74,7 +80,6 @@ allOf:
     then:
       patternProperties:
         "^nand@[a-f0-9]$":
-          type: object
           properties:
             nand-ecc-strength:
               enum:
@@ -92,7 +97,6 @@ allOf:
     then:
       patternProperties:
         "^nand@[a-f0-9]$":
-          type: object
           properties:
             nand-ecc-strength:
               enum:
@@ -111,7 +115,6 @@ allOf:
     then:
       patternProperties:
         "^nand@[a-f0-9]$":
-          type: object
           properties:
             nand-ecc-strength:
               enum:
-- 
2.34.1

