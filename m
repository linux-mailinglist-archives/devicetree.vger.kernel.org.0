Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D18D673503C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbjFSJa6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:30:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231785AbjFSJaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:08 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA928B0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:30 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166969;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=QFNn7R3CCLELog5sCLD8kgMqopmVWyHvy7AjleYx/tM=;
        b=QpznXL/FJ88qPbjryvLymATBxEG0I4hZwAPb5p7zFyvJ0BpnLKcX+NUA9h5ucAqaz1Mxui
        8sgRATFZ7t8krSU/ZLzuo9tTT9BUQOX2PxMtcRDJlzWloLwygxFoULtC8eZbVk+oSCr5QU
        Xv2kPbjnsk4NTW6B/AqO03cSeXMncQuxd2LRz7sqGbZA4FW6hGKEYcx1DPCCTUFnDjkyAV
        csFN/kINKf41uicg1bkr7vGAM+l9q9k8Oq+JYXjSox0l7CiqVZ5NoCDzJ17l9UNcJSbw4I
        aGHjh8ug4IYhAmah9qsBSbnHjs2EmLRuLmW/TZ4RjyUk97yDEFR0rg8nbst9LQ==
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
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 092A31BF213;
        Mon, 19 Jun 2023 09:29:27 +0000 (UTC)
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
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 05/17] dt-bindings: mtd: qcom: Fix a property position
Date:   Mon, 19 Jun 2023 11:29:04 +0200
Message-Id: <20230619092916.3028470-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
References: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

qcom,boot-partitions is a NAND chip property, not a NAND controller
property. Move the description of the property into the NAND chip
section and just enable the property in the if/else block.

Fixes: 5278cc93a97f ("dt-bindings: mtd: qcom_nandc: document qcom,boot-partitions binding")
Cc: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mtd/qcom,nandc.yaml   | 41 +++++++++++--------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
index 00c991ffa6c4..3d77922dfaef 100644
--- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
+++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
@@ -45,6 +45,22 @@ patternProperties:
         enum:
           - 512
 
+      qcom,boot-partitions:
+        $ref: /schemas/types.yaml#/definitions/uint32-matrix
+        items:
+          items:
+            - description: offset
+            - description: size
+        description:
+          Boot partition use a different layout where the 4 bytes of spare
+          data are not protected by ECC. Use this to declare these special
+          partitions by defining first the offset and then the size.
+
+          It's in the form of <offset1 size1 offset2 size2 offset3 ...>
+          and should be declared in ascending order.
+
+          Refer to the ipq8064 example on how to use this special binding.
+
 allOf:
   - $ref: nand-controller.yaml#
 
@@ -107,22 +123,15 @@ allOf:
               - qcom,ipq806x-nand
 
     then:
-      properties:
-        qcom,boot-partitions:
-          $ref: /schemas/types.yaml#/definitions/uint32-matrix
-          items:
-            items:
-              - description: offset
-              - description: size
-          description:
-            Boot partition use a different layout where the 4 bytes of spare
-            data are not protected by ECC. Use this to declare these special
-            partitions by defining first the offset and then the size.
-
-            It's in the form of <offset1 size1 offset2 size2 offset3 ...>
-            and should be declared in ascending order.
-
-            Refer to the ipq8064 example on how to use this special binding.
+      patternProperties:
+        "^nand@[a-f0-9]$":
+          properties:
+            qcom,boot-partitions: true
+    else:
+      patternProperties:
+        "^nand@[a-f0-9]$":
+          properties:
+            qcom,boot-partitions: false
 
 required:
   - compatible
-- 
2.34.1

