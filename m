Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09AD35A05AE
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232071AbiHYBdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232088AbiHYBdc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:32 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C57608C030
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=zGFHRsZ/AbKSKCtDcuMdrDWnbHc44d3KxEBN5BMjXn8=; b=dLCGA8JIZkNNF68w6NuRZixJkc
        UtRnZTmM1fDcarm780iG57i5hsu8WlLFl1qY/bR9xbF5W/p6RlntTHhODU0N9XwPUY1l7cYiFLXuk
        WOrMXYHv2gMsIOz+3XRQSZ52cl/6qiNP3m9MZIzf+8Fj8YJ3Vcxiivkq9pFOGT4LaiEE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2m-Fd; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 04/12] dt-bindings: marvell,ac5-pinctrl: Refactor to look like other Marvell pinctrl files
Date:   Thu, 25 Aug 2022 03:32:50 +0200
Message-Id: <20220825013258.3459714-5-andrew@lunn.ch>
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

Wrap the long lines, use a regex for the valid mpp names, add missing
required properties and indicate additional properties are not
expected.

Also fix up the example so it does not give warnings.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/pinctrl/marvell,ac5-pinctrl.yaml | 23 +++++++++++--------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml
index a651b2744caf..db28b8149520 100644
--- a/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml
@@ -21,7 +21,7 @@ properties:
     maxItems: 1
 
 patternProperties:
-  '-pins$':
+  '^pmx-':
     type: object
     $ref: pinmux-node.yaml#
 
@@ -30,8 +30,9 @@ patternProperties:
         $ref: "/schemas/types.yaml#/definitions/string"
         description:
           Indicates the function to select.
-        enum: [ dev_init_done, ge, gpio, i2c0, i2c1, int_out, led, nand, pcie, ptp, sdio,
-                spi0, spi1, synce, tsen_int, uart0, uart1, uart2, uart3, uartsd, wd_int, xg ]
+        enum: [ dev_init_done, ge, gpio, i2c0, i2c1, int_out, led, nand, pcie,
+                ptp, sdio, spi0, spi1, synce, tsen_int, uart0, uart1, uart2,
+                uart3, uartsd, wd_int, xg ]
 
       marvell,pins:
         $ref: /schemas/types.yaml#/definitions/string-array
@@ -39,11 +40,13 @@ patternProperties:
           Array of MPP pins to be used for the given function.
         minItems: 1
         items:
-          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
-                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17, mpp18, mpp19,
-                  mpp20, mpp21, mpp22, mpp23, mpp24, mpp25, mpp26, mpp27, mpp28, mpp29,
-                  mpp30, mpp31, mpp32, mpp33, mpp34, mpp35, mpp36, mpp37, mpp38, mpp39,
-                  mpp40, mpp41, mpp42, mpp43, mpp44, mpp45 ]
+          pattern: '^mpp([0-9]|[1-3][0-9]|4[0-5])$'
+
+    required:
+      - marvell,function
+      - marvell,pins
+
+  additionalProperties: false
 
 allOf:
   - $ref: "pinctrl.yaml#"
@@ -60,12 +63,12 @@ examples:
       compatible = "marvell,ac5-pinctrl";
       reg = <0x80020100 0x20>;
 
-      i2c0_pins: i2c0-pins {
+      pmx_i2c0_pins: pmx-i2c0 {
         marvell,pins = "mpp26", "mpp27";
         marvell,function = "i2c0";
       };
 
-      i2c0_gpio: i2c0-gpio-pins {
+      pmx_i2c0_gpio: pmx-gpio-i2c0 {
         marvell,pins = "mpp26", "mpp27";
         marvell,function = "gpio";
       };
-- 
2.37.2

