Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1B82729DA7
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241386AbjFIPAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241733AbjFIPAC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:00:02 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E1518C
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 08:00:01 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686322800;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=V5FRfPCwQJ17mhgzs0DzGHbHHXENt7bzJ7+A1d6ujS4=;
        b=QSJquyXAM5UyM4CvGaETzuty2pzzdGY57ot/mY+aBGjTaCDLrPVZPboqViSNs34OMaO6RX
        zbQm71eXlludQuIU3hkn1G8bV1N4xgsDIXkJg3OC05qpEHTFrJ3PTd0b1vdoZmecUIsrp1
        FKuU45XNWx87V2c2pNEpn2uuAF/d0V+k+8ArWEADsdWaS9LQkjMe+Np7kOcg+1JtxD9g7w
        GhIMOdjL45QYEWB6fsmxZaLP4klMl8Ialq2qLyP7qYB55F6PZzCMjkiJEeRj4+Rg13y9XV
        9dt3NeXnhBYubFvhp4Ov5grxQYd8e7z69vdqz39uUvk8ezTWNKi84m7P510/Kg==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2E16224000E;
        Fri,  9 Jun 2023 14:59:59 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 5/7] dt-bindings: display: st7789v: Add the edt,et028013dma panel compatible
Date:   Fri,  9 Jun 2023 16:59:49 +0200
Message-Id: <20230609145951.853533-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609145951.853533-1-miquel.raynal@bootlin.com>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ST7789V LCD controller is also embedded in the ET028013DMA panel. In
fact, "sitronix,st7789v" might not be totally relevant alone as most of
the time -if not all- the LCD controller will always be packaged into a
display with its own physical properties.

Let's keep "sitronix,st7789v" valid alone for backward compatibility,
but we should definitely provide two compatibles to fully describe such
panel, so let's expect to have both when describing a panel such as the
EDT ET028013DMA.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/display/panel/sitronix,st7789v.yaml           | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
index d984b59daa4a..d4c8af9a973d 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
@@ -15,7 +15,12 @@ allOf:
 
 properties:
   compatible:
-    const: sitronix,st7789v
+    oneOf:
+      - items:
+          - enum:
+              - edt,et028013dma
+          - const: sitronix,st7789v
+      - const: sitronix,st7789v
 
   reg: true
   reset-gpios: true
-- 
2.34.1

