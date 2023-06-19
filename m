Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0B51735048
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:31:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbjFSJbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:31:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231862AbjFSJaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:18 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2BE51BD5
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:42 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166981;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=paHx31E8jcNJg0VSKOZjmKvwKnVepcca3eu++LDKBlM=;
        b=TEHQ2u7CjOWV9DaQ3M3i///G0L+ft2bYURxUry/dst6PBl1yCJswvt/lWPPI9GEc1iKnrc
        xGiQEgdBw2jePsPKgh8mAg9R3wkDun8ilFwxSEhOshMvj6eEXjqCknn9o1alnBxDO/jtdu
        zX1E8TRIOhY5Ggy5FgnJdNsICpURfr/nwXi2cJ1Zj6MJpzcrNvNZZiZPqiDg6nB0fdU1es
        8FJJj1Xpxdz2uKZc3Jo4TCzg/cGBDHNU3iCaxXQZnxnIMt2phHX5UcS55TiCDuGX8JYMfU
        UW46C+/Ilds48vj7KLz54UwjqyOJHPcEWDe6OhGweZf4mTSaPpTZNVCcIjRpnw==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id E1E471BF205;
        Mon, 19 Jun 2023 09:29:39 +0000 (UTC)
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
        Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 13/17] dt-bindings: mtd: rockchip: Prevent NAND chip unevaluated properties
Date:   Mon, 19 Jun 2023 11:29:12 +0200
Message-Id: <20230619092916.3028470-14-miquel.raynal@bootlin.com>
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

List all the possible properties in the NAND chip as per the example and
set unevaluatedProperties to false in the NAND chip section.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mtd/rockchip,nand-controller.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
index 7eb1d0a38565..ee53715ffdca 100644
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

