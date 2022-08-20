Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2550B59B007
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbiHTTsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229833AbiHTTsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:36 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F46517ABD
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=aN5182nSfXEkiRzkgHdn65ByCd4rqoUfZ4uBAP3pET0=; b=TIgA+c4DwfNIuxa4Dmw2fQirfH
        55sr7DmLGm09nyD4sTX2gYcsoZDSYTbOaGpiuX+pxgziQJ5okq2wRAKtj4UTOomp4J5XLFaDbtYcr
        v/iL+HEABD1krU0hJjrUAXkW0v/tQrPdRAXjVD50pRoK0ahtWem+2uCD2dTE0YfBKEu4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E48R-NG; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 07/11] DT: nand-controller: Reflect reality of marvell,orion-nand
Date:   Sat, 20 Aug 2022 21:48:00 +0200
Message-Id: <20220820194804.3352415-8-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220820194804.3352415-1-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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
comparison can be made.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/mtd/nand-controller.yaml           | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index 359a015d4e5a..ab90e34557ad 100644
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
+      compatible = "bar";
       #address-cells = <1>;
       #size-cells = <0>;
       cs-gpios = <0>, <&gpioA 1>; /* A single native CS is available */
-- 
2.37.2

