Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD56B724AA1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236749AbjFFRxO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:53:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238263AbjFFRxN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:53:13 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D10931706
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:53:11 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073990;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Ycgd0NeFF0Qi01QxdVs9F5FiBcqy4Oj5vlvdXkOnpCU=;
        b=lQtIm6KN46pA/jFPeLBuy4GotM0U1rEKX53gt2EAj2hRkrKq3/EkjSmVv9FCvQyAAzyke3
        PCRFzcMv1Flpif89+NSTnQ5DwBSVYb77adje2J6mqo8LnxCOfgXIz4A/2ysDync48Gdvya
        5nVGSzVSxbIiNPuT1gx5FewLdarhlOdO7ZVVu194yfhn16sTWOLqS7v+znb4YmOVk20Qo3
        hxlFuHrNBCMltDEIxAqzX7csBrg1Vtmc47sTI/9ilka0YiA7q0eR2IxLpa7hon6javzjDN
        fH7EUOMty6/ld3Ufr04qbE7nyt7JOVRYxVpy3blot//796n9ApSvYgSSHhA5ug==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6E7B81C0004;
        Tue,  6 Jun 2023 17:53:09 +0000 (UTC)
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
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v2 11/17] dt-bindings: mtd: denali: Prevent NAND chip unevaluated properties
Date:   Tue,  6 Jun 2023 19:52:40 +0200
Message-Id: <20230606175246.190465-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606175246.190465-1-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
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

