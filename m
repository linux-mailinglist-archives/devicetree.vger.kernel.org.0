Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7663724AA0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238839AbjFFRxM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:53:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238263AbjFFRxL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:53:11 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F032E47
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:53:10 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073989;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=iCK0DHm6UzryjKAJtjsJk2QooGSXLb+4h/3MbZr7jOk=;
        b=c+Nnmcctkd5vhWErOF+5bl7WgJlryebgwVCf4LAr8aZgaoQyKSSo47s7UQy+wFfn/ly1IJ
        FDR9FjMOzYQs6AQhQV7vyStdtGmP+G3vH76YBEiU/hZIA6lanhYaRbKb0DPqUN5dwPNpoW
        2jq/fFiBWOy+/mmfRa20KEos8Ynkiy24ai0eoq0/kG/WJqiYpQKG51nyLic6AWN9WIn2Vq
        RtVhpj9aa/sSVDkKDMwVWIavPrmjsQFKYA/2pqvmsNAghr0MGsfgOii+zwI9n6mil2iDLG
        VQa6ncI/W5JzLAZCc7DLJy4rcv9VTaUGXRIiiDtE1QV/telSdnhghEIv5R2G+A==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 04F831C0007;
        Tue,  6 Jun 2023 17:53:07 +0000 (UTC)
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
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>
Subject: [PATCH v2 10/17] dt-bindings: mtd: brcmnand: Prevent NAND chip unevaluated properties
Date:   Tue,  6 Jun 2023 19:52:39 +0200
Message-Id: <20230606175246.190465-11-miquel.raynal@bootlin.com>
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

Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
index 1571024aa119..f57e96374e67 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
@@ -114,6 +114,7 @@ properties:
 patternProperties:
   "^nand@[a-f0-9]$":
     type: object
+    $ref: raw-nand-chip.yaml
     properties:
       compatible:
         const: brcm,nandcs
@@ -136,6 +137,8 @@ patternProperties:
           layout.
         $ref: /schemas/types.yaml#/definitions/uint32
 
+    unevaluatedProperties: false
+
 allOf:
   - $ref: nand-controller.yaml#
   - if:
-- 
2.34.1

