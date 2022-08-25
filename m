Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 774C75A05A5
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbiHYBd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231989AbiHYBd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:28 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 630928E9A5
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=W8B7hSu9NrKaphrPGFPcTYvcSHuNVgplx9QPI6UHWmE=; b=oXLEkA4qQUavhJsUv1KrWYsBEg
        HPo2KfjQOcfY4qjQzrpPWBzuV7CVJNMQf+w3M0m7jUKRwmwZqq+rJ0nwVi6uu9uaOAb+QQSPpcnFn
        nXSUwGFCi7Fj+lGWz647axKoQR+K1tt/Wl8FI3wcNub9bokrK5fxCsjIJTQGRiC3VTmc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2y-LQ; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 08/12] dt-bindings: nand-controller: Reflect reality of marvell,orion-nand
Date:   Thu, 25 Aug 2022 03:32:54 +0200
Message-Id: <20220825013258.3459714-9-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220825013258.3459714-1-andrew@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Marvell Orion NAND driver comes from before the time of the
standardised NAND binding. The controller only supports a single
device, and expects the NAND partition table to be directly in the
controller node. This goes against the standardised NAND binding which
expects a sub node per NAND device, which contains the partition
table.

Since the partition table contains a reg property indicating the start
address of the partition and its length, it needs #size-cells set to
1. However, for a list of nand devices, the reg value is the device
number, requiring #size-cells of 0.

Add an exception to nand-controller.yaml to allow this #size-cells
value when the compatible matches the orion controller.

In order that the example works, it needs a compatible string so the
comparison can be made. Pick the first example in the directory.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/mtd/nand-controller.yaml           | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index 359a015d4e5a..e3bb97353793 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -34,7 +34,7 @@ properties:
     const: 1
 
   "#size-cells":
-    const: 0
+    enum: [0, 1]
 
   ranges: true
 
@@ -130,11 +130,26 @@ required:
   - "#address-cells"
   - "#size-cells"
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: marvell,orion-nand
+then:
+  properties:
+    "#size-cells":
+      const: 1
+else:
+  properties:
+    "#size-cells":
+      const: 0
+
 additionalProperties: true
 
 examples:
   - |
     nand-controller {
+      compatible = "arm,pl353-nand-r2p1";
       #address-cells = <1>;
       #size-cells = <0>;
       cs-gpios = <0>, <&gpioA 1>; /* A single native CS is available */
-- 
2.37.2

