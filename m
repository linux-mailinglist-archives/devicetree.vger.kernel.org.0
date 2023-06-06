Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6129C724AA6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238838AbjFFRxY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:53:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238845AbjFFRxW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:53:22 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CE781720
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:53:17 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073996;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jwwvRTjJ0LIIZZ8NrpPblpWybAPwlZ5ekZgglbh676s=;
        b=REp41+yA8SlzvL5Yjm59oFIygoVclyfd0QTVka3CssGU85mmN3QU+HE5DtMKTK+h0XCGc8
        dDeS2Yq52mujdHTmnv8LB4YzQkhMzWt9YbtUd3Qg46qZDE7Y/oTl96UBMPFjxuLAp8hOtW
        Q2kec/zJ8J7QO3B7+okIjckU6wWGImHL1SZydM13S3R9ZbjoOD49gB9zbL7rc2T03f/3LE
        Rg8t0ArXGMjN0LNbltimXocAI8P4tkaKNZE9kyI7ghN12ljsYNUHhXbm8EwhPWnk7euJxd
        0UoBbeloC5LxoZaX2VeeWXs3kt67xFMcZLH0ypwXmwnblSSJqx5ClFyJlskDeQ==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id C17921C0004;
        Tue,  6 Jun 2023 17:53:14 +0000 (UTC)
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
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Subject: [PATCH v2 15/17] dt-bindings: mtd: mediatek: Reference raw-nand-chip.yaml
Date:   Tue,  6 Jun 2023 19:52:44 +0200
Message-Id: <20230606175246.190465-16-miquel.raynal@bootlin.com>
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

The mediatek NAND controller should reference the new raw-nand-chip.yaml
binding instead of the original nand-chip.yaml which does not contain
*all* the properties that may be used to fully describe the NAND
devices, certain properties being actually described under
nand-controller.yaml.

Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml b/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
index a6e7f123eda7..ab10b90077b6 100644
--- a/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
+++ b/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
@@ -40,7 +40,7 @@ properties:
 
 patternProperties:
   "^nand@[a-f0-9]$":
-    $ref: nand-chip.yaml#
+    $ref: raw-nand-chip.yaml#
     unevaluatedProperties: false
     properties:
       reg:
-- 
2.34.1

