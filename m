Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD8D1723F7B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 12:31:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236356AbjFFKbH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 06:31:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236737AbjFFKbF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 06:31:05 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B159E8
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 03:31:04 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686047463;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=W9SZREVVBoJoyxWni6go3L9WEAtm6kUUTLlFeQD9fVg=;
        b=DaLDiww24w9CAiIp1T0bEVRVf4+mCxWNnTaXX3k8uFueigUgGrgOrA8T5AV8jL8jjsFFzO
        2I5MGqX+QHNlnn9+cCNiiz8qxM1OpaAc1i4cP9yO3gTs3qv2p309B+ls9W7/JO+V7b/SlD
        mk4n4NYyDh2qTOSENpq4F+d7NwaIM4bKunI4H8cCww66YMsV8+MOdAJu2qa0kvx+CFkkh9
        fEr5azly7PKGwx3Il/GL31m1dUGm3ebfGNmsQSMFJonvu7MMLyru3s1wV8jt51xm+6NjmG
        z/DC7axgH202X8SXVITWfKq5GWwurKWETrN8gy0jNb2acPXPgzoNnm5FN79jrw==
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
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4B7A2FF80E;
        Tue,  6 Jun 2023 10:31:01 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 1/3] dt-bindings: mtd: qcom: Fix a property position
Date:   Tue,  6 Jun 2023 12:30:55 +0200
Message-Id: <20230606103057.137711-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606103057.137711-1-miquel.raynal@bootlin.com>
References: <20230606103057.137711-1-miquel.raynal@bootlin.com>
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

qcom,boot-partitions is a NAND chip property, not a NAND controller
property. Move the description of the property into the NAND chip
section and just enable the property in the if/else block.

Fixes: 5278cc93a97f ("dt-bindings: mtd: qcom_nandc: document qcom,boot-partitions binding")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/qcom,nandc.yaml   | 41 +++++++++++--------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
index 07024ee45951..7217d8a64d14 100644
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
   - $ref: "nand-controller.yaml#"
 
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

