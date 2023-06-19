Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FCE873504F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbjFSJcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231526AbjFSJa7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:59 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7931A19A4
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:55 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166987;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=iglQIY4QvWya2y1OlkXSdtLQxq0KUlMVd8OaSiGAwgI=;
        b=Cyc4/xAarToYnL+5GuQNZWro1T9IPeINoNzIYg2H6Uycbpk12XL4c1DVgMwzJxJYUDqZs0
        bwgnvgu9l/8UqAwLlzG+Xk3+Jrd7DQIJSosu05JLnN8RVk90zvPlM6T6Hc2NxSn6FtgOsZ
        qEEGztxlLB/d7r9pVvzUnerw5K19qEY7iCZIWnBu00q+qhOB4tjzrtQiXfLaRSs4s4vKh/
        g8hyfFXB77PPZ1IxoQ9uAviDpPJQw8+kUzeTj4qPO3U6pb7tApyZDpG2TSejwCDpXoAD1d
        Xf7Qo6mbxwEO5v//G6cs0VVnf9wFzRha9spzYtz79fjYUgYQ/915I4mkhvV7rQ==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id C447E1BF203;
        Mon, 19 Jun 2023 09:29:46 +0000 (UTC)
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
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 17/17] dt-bindings: mtd: ti,am654: Prevent unevaluated properties
Date:   Mon, 19 Jun 2023 11:29:16 +0200
Message-Id: <20230619092916.3028470-18-miquel.raynal@bootlin.com>
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

Reference mtd-physmap.yaml which contains all the relevant properties
for this device. Add "unevaluatedProperties: false" to avoid any
spurious addition of random properties.

Cc: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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

