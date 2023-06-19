Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9C6735BC2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 18:00:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232117AbjFSQAI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 12:00:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232151AbjFSQAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 12:00:03 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EA7718D
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 09:00:02 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687190401;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/rXmJ0bkOTpBnxmDvPIR7mfO09RTHVt3bulMCuyuLQI=;
        b=mN6nPgUbhcGL23SPhI58ZxXly2EUQ0iXHSaSSMGc9v89wMZNlXidyrMhPFsZy0y05AwRqJ
        fgFXXfp2h/MOL6Wx/9yI1q217Gxj9eEOlhmEYkE2YT9j1IfwN08Q+SSFugiAF4Rfy56CVp
        AUwRqk8EZSiFqFdbIcFfKtmaIMAlOq0sjlOz9QgOzEDXqdA1TtbWt3rfm9Ka/kuCoLDL3h
        3Hx0gC4k1Ppw++ahmptjkh4XUo+8+h2YTkrq0i4LwcHSXhbRG/mk4wUryfsEUASRH1Xz3R
        8S5Tl61je1YLmnu6JzpVxzKP0WesAn0xwwDNER04wCtvMKpP3goaotedw8IXMQ==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id F23691BF20B;
        Mon, 19 Jun 2023 15:59:59 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 1/6] dt-bindings: display: st7789v: Add the edt,et028013dma panel compatible
Date:   Mon, 19 Jun 2023 17:59:53 +0200
Message-Id: <20230619155958.3119181-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619155958.3119181-1-miquel.raynal@bootlin.com>
References: <20230619155958.3119181-1-miquel.raynal@bootlin.com>
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

The ST7789V LCD controller is also embedded in the ET028013DMA
panel. Add a compatible string to describe this other panel.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Maxime Ripard <mripard@kernel.org>
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

