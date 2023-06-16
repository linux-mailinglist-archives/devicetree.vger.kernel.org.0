Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2778773360D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 18:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344095AbjFPQdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 12:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbjFPQdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 12:33:15 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9CA435AB
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 09:33:01 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686933180;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=3HhM3DvR7zX8e3GOHqbYhvRsYfVv5Y/lEkzXt7tdiL8=;
        b=dObm4xkmxh1CBChjp94JWw8JkTDikbkSdMpvNoXBf8H7MXpy5zX/HR2NHem7Nud5kAXR0e
        W/Nw67hK3YDl05gYCF3EIMq0ChbIisjQWz5c8GYWwJxVKu2aS95fZj4QoTa4smm8rrijaa
        J1zssk4QzRh0r6MkSRrG1+ypK4Lq6IxTnuLRz3PYQQ0d0cW35SA54RHUsQG/POcOTDcihb
        mZWzFaZEcCqhMdrbIGFYclhOOt7f9Z2JisgxYkWyScennw9WCDzaV7VHnEwWHG7UYAnE0I
        Gyz6+f7FOW35ft2pbQMQ0fQxDPI0FuVkoemKayvRlrCnBBCYaaAli4dGsBRWpQ==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2E93AC0006;
        Fri, 16 Jun 2023 16:32:59 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 1/6] dt-bindings: display: st7789v: Add the edt,et028013dma panel compatible
Date:   Fri, 16 Jun 2023 18:32:50 +0200
Message-Id: <20230616163255.2804163-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ST7789V LCD controller is also embedded in the ET028013DMA
panel. Add a compatible string to describe this other panel.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/display/panel/sitronix,st7789v.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
index 7c5e4313db1d..0ccf0487fd8e 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
@@ -16,6 +16,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - edt,et028013dma
       - inanbo,t28cp45tn89-v17
       - sitronix,st7789v
 
-- 
2.34.1

