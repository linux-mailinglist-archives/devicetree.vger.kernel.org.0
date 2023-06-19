Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A615E735050
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:32:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbjFSJc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231361AbjFSJac (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:32 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8CEE1FD5
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:49 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166986;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=CSvDfU4mIUD6bC0UtkNHyN1VSKAOfl/jaJrLVsjL+hI=;
        b=XU+QHTpjXC20tnQ6L/HGIMQ66govMHq0RpLtOYOwbF2xtcMN0Yb6nQJdQqZXvmbDT4yhlJ
        sqPmEdPxNspa4FtW0E5+QIKZj6l49zzA9Ha8OKbrNQenk6/3ewgLUDnBy2A4VpPe+uNRPv
        lWTpBuNipZ055vuLLmL5UdLH49dZSmY18w8q9h315Gp/i9yf71eRZZ+mmgV9vX7Cd3WfYQ
        kphN+qoGbWbDyohmlkO8mOx7yQSc5ukSaP1n3ciulk4v/zo0IQfFZAAfpwBTJUgqduOQrV
        JkJSft9ZLvDbJcHmJpd+Msd1/PkT7sGAYWs/PPPpKxLo31T3/s1EttJNxQmWXA==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 68AD31BF219;
        Mon, 19 Jun 2023 09:29:45 +0000 (UTC)
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
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 16/17] dt-bindings: mtd: mediatek: Prevent NAND chip unevaluated properties
Date:   Mon, 19 Jun 2023 11:29:15 +0200
Message-Id: <20230619092916.3028470-17-miquel.raynal@bootlin.com>
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

nand-on-flash-bbt is a generic property which may apply to any raw NAND
chip, it does not need to be listed in each controller
description. The raw NAND chip description file which contains the
property is already referenced, so no need to mention the property here
again.

Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml b/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
index ab10b90077b6..ab503a33a269 100644
--- a/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
+++ b/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
@@ -45,7 +45,6 @@ patternProperties:
     properties:
       reg:
         maximum: 1
-      nand-on-flash-bbt: true
       nand-ecc-mode:
         const: hw
 
-- 
2.34.1

