Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA15E724AA3
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238762AbjFFRxT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:53:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238843AbjFFRxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:53:18 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7571410CA
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:53:14 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073993;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=8WpSqsWuk5BYR/kDPBJlDu36RhwdBv9XYyfx55Z4+Pc=;
        b=a4dZJsRUpuAKltY2ZeDhuChXgZZ7iIBxZC3isJMQzkC7+qDG1t+4jAmRcXqYUV/5RG8qtg
        UjrxAWFHAdyaPxbiBOs+eDVzLh7MrIbuaAhEFZkeCDE8vTS8kswmpTmgDU0qe1gtpBmXYB
        IBFH4hSBiBB1OJWTLY4fwF2oW87Ojfym9BBo4K2t8pu9Ig+ZwsX6c8Sq4NQccFhd7RaGCO
        h2IbLJKEKGWP0yVWSak04GJ7jCWL8W++5bs/jFE645OSqa+w0yW8b2yoczc6og1WA8BrAg
        APN0fgNJYD6luNyjDHDIwyoj6CnyJ5IJY24TsTrkDl/ITlhfRTJaD8Rij7767w==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1A8121C0005;
        Tue,  6 Jun 2023 17:53:12 +0000 (UTC)
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
        Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 13/17] dt-bindings: mtd: rockchip: Prevent NAND chip unevaluated properties
Date:   Tue,  6 Jun 2023 19:52:42 +0200
Message-Id: <20230606175246.190465-14-miquel.raynal@bootlin.com>
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

List all the possible properties in the NAND chip as per the example and
set unevaluatedProperties to false in the NAND chip section.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/rockchip,nand-controller.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
index 566f330851f7..3672632e2ffa 100644
--- a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
@@ -57,6 +57,7 @@ properties:
 patternProperties:
   "^nand@[0-7]$":
     type: object
+    $ref: raw-nand-chip.yaml
     properties:
       reg:
         minimum: 0
@@ -116,6 +117,8 @@ patternProperties:
 
           Only used in combination with 'nand-is-boot-medium'.
 
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
-- 
2.34.1

