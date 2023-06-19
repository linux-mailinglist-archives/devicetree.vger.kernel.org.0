Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 949C973502E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:30:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231310AbjFSJab (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:30:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231760AbjFSJaD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:30:03 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3DDC1B4
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:29:27 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687166966;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=gBTcCZaAvZqmTZ9xZNZW5ygOpX3IIBILCLO63d3iJ9E=;
        b=eWEjPK2a/xekHlJtMX/qHoKNYq7m/0WbCvojPrz+zc2wuhQ2ThOyLrJrgtci7SMjDgLk0G
        lo/eg1AE+km7d63oXZrQ/QxkZxy/TLoFjYJoDo//BDsrICG3/J2KeA+PJZgHcajM0pXjaz
        c1DmyVCUSmlIqfg/EDWFtmrXaGS2JKRO3zwDuNMXhIm5n0taDaSvIISpCHLZ0zASMw0D/B
        6AQbMSMCf5A4zwzDp1Hw6uQrI0HUqEao25dmRl11ceSM+LumJfXJGmt/16hMFLHal6Zcm0
        PQj2RhIAi0FIwoG9iPioHJwK+UB6RTkFjRP1ZRrKVTo519IcNRfEr6GcPXny1Q==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 28CCF1BF203;
        Mon, 19 Jun 2023 09:29:25 +0000 (UTC)
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
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 03/17] dt-bindings: mtd: Mark nand-ecc-placement deprecated
Date:   Mon, 19 Jun 2023 11:29:02 +0200
Message-Id: <20230619092916.3028470-4-miquel.raynal@bootlin.com>
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

The nand-ecc-placement property has been deprecated for a long time
already, it does not really mean something useful for the ECC engines
and is anyway in the vast majority of cases totally useless. Just mark
it deprecated to avoid appealing people to use it.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
index 2caa6a9a73d3..a0488bf60971 100644
--- a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
+++ b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
@@ -39,6 +39,7 @@ properties:
       bytes will be interleaved with regular data in the main area.
     $ref: /schemas/types.yaml#/definitions/string
     enum: [ oob, interleaved ]
+    deprecated: true
 
   nand-bus-width:
     description:
-- 
2.34.1

