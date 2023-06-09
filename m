Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 320FE729D2C
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:43:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241306AbjFIOnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241351AbjFIOnd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:43:33 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F496269A
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:43:31 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686321809;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=XzF0THuG8cJYy8mcdNCIGXc+CKRZs8ZO+k9vaRCCVpU=;
        b=eDUZ3b9b2XhM8CXpmY4WgM2kifLxF1pJ/ARQxrNkZawyvpisOINcmoDk3tTl0sg/I08PZl
        QM20Y5FN8SW1as1TciXNPfeADRJfEP/H9VDOuFOIKwBXyH7msxzjwfqJzM1rkPf4yJH54E
        wXuJ1qzLL07Xv8K2LzNbucBupyrcw3oVAU7O1VKwKHg+YFqyElH3jfe/euGxCjVUyvnARQ
        bthKxDxbJvWH7u+IwdUoqbKXE2IekvJwGrihgTUM2t7hYtbZAFacKqGYGZ8mDNdaZc5jg6
        QmbpzI24BV57dUDSH+LEW+6Firhp7ovXFF/jtDccSf6/y1ZIzqSIKgEBzdojgw==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9F8A2FF80E;
        Fri,  9 Jun 2023 14:43:28 +0000 (UTC)
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
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: mtd: spi-nor: Document sst26vf0xxb flash series
Date:   Fri,  9 Jun 2023 16:43:23 +0200
Message-Id: <20230609144324.850617-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609144324.850617-1-miquel.raynal@bootlin.com>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
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

Add compatibles for the sst26vf0{40,80,16,32,64}b flash devices.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 7149784a36ac..5a788a429b0d 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -25,7 +25,7 @@ properties:
               (mxicy|macronix),mx25l(4005a|1606e|6405d|8005|12805d|25635e)|\
               (mxicy|macronix),mx25u(4033|4035)|\
               (spansion,)?s25fl(128s|256s1|512s|008k|064k|164k)|\
-              (sst|microchip),sst25vf(016b|032b|040b)|\
+              (sst|microchip),sst(25|26)vf(008|016|032|040|064)b|\
               (sst,)?sst26wf016b|\
               (sst,)?sst25wf(040b|080)|\
               winbond,w25x(80|32)|\
-- 
2.34.1

