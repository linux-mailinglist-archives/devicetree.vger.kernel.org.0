Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0AB723F80
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 12:31:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236485AbjFFKbM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 06:31:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236256AbjFFKbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 06:31:10 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7EE2E67
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 03:31:08 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686047467;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/XqwqUEqxTRlwuqyScbemHhCwtlpbBoBEzWo4M8PRqg=;
        b=eVRsuvQOID4SslV5pOtJFf6FwsVvh+pzjF7/1v7gtPn1HGM/Wog5CPSFVjvLr0CE1b25uq
        ayetjfpNHYQsVCFo7fwCIgJXBnEARxK6z/H1bDk0vZRV8edsniTtmC3dHkemDaqBm2EyEt
        HgwCl8LhvV0GQH8gGCOKYwZqk6eYB5dCYp9R3lE7PV/+IZ1b5BCnmSM0IhlDODDkC3mX+Q
        BLNEni6DUPO+DuBSTpoLl+k6uD9xOjNfBL20ha3k/j1pnTO5w+77sywQZQA5CQe9QuDydi
        Q8KfT4XSAYYFT9N85WpgY/gSBrlKhLdSCPOwB7ijcA24BJqveIgJYnLuhn2Umg==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5FE2DFF814;
        Tue,  6 Jun 2023 10:31:05 +0000 (UTC)
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
Subject: [PATCH 3/3] dt-bindings: mtd: ingenic: Prevent NAND chip unevaluated properties
Date:   Tue,  6 Jun 2023 12:30:57 +0200
Message-Id: <20230606103057.137711-4-miquel.raynal@bootlin.com>
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

List all the possible properties in the NAND chip as per the example and
set unevaluatedProperties to false in the NAND chip section.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/ingenic,nand.yaml         | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/ingenic,nand.yaml b/Documentation/devicetree/bindings/mtd/ingenic,nand.yaml
index a7bdb5d3675c..facb44ebcaa6 100644
--- a/Documentation/devicetree/bindings/mtd/ingenic,nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/ingenic,nand.yaml
@@ -40,6 +40,8 @@ patternProperties:
   "^nand@[a-f0-9]$":
     type: object
     properties:
+      reg: true
+
       rb-gpios:
         description: GPIO specifier for the busy pin.
         maxItems: 1
@@ -48,6 +50,15 @@ patternProperties:
         description: GPIO specifier for the write-protect pin.
         maxItems: 1
 
+      nand-ecc-step-size: true
+      nand-ecc-strength: true
+      nand-ecc-mode: true
+      nand-on-flash-bbt: true
+
+      partitions: true
+
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
-- 
2.34.1

