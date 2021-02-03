Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 142FF30DA7C
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:03:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231335AbhBCNCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:02:12 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14165 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231596AbhBCNCD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:02:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357917; x=1643893917;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HnJ883zL+t4xSM63wnXK5D+H6FssPdmgykJIZOwLcLA=;
  b=IJaIHgjjU46inZUygjJgMCtI2ZFGwMhcz5a0Lh3l0UoLIRLwcJ/WuWZF
   okdFm/VxOxidNOge8A8LORrTXjJdSHlVr2vCnK5lkdYBVUxNgxEk+o1d+
   rKjvV8AY6NFab0cA8n2wJWISx0rFmGTDbsCZqmjq79Xsj4zz5cCTEr3H7
   MbQGeQkmPPzSWkwkU4DrXJhnTKPVaWGV8U3q1Si/Cf027jcgPSlyweu0x
   1aAkzSUpI1EFTDg7+pUITGVcsHY9MxlasmuDAiYQQ0Cx9laQZQGpKCUQS
   j4D/X8O+oOXDFQmZhvWXDpJRmQsJH6ExgV9II6dUQe9X+jAGIsG9Y9UHA
   Q==;
IronPort-SDR: GKrwaeyOaifRLH6I2jk8L/xEEL/Y6H2OGxSSGZXToR8VW4KSdZ9e/mOlGLM+hRRa7QcRh3P3qW
 lnHXi64OoPBbGcS7M+gFiYrNDIXYkUzibhTfzyss7PyTbhtebrLslgSZZgZYVy9CKghLLJm+Ei
 cSWKzPN0lLS6/g3Cpi5uW7V7XhKTX2X/YKA/6HUD4YL41twQ5rsuOzVvP1VoWJmK6HwoAuKzbg
 M7lt+O2bY2npYoalnCbe0zMrwVjQKlBh498vpyZ07xV6Kwn84+WHNxJh149QYLxqYLhQo0E+j2
 vO4=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106941"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:40 +0800
IronPort-SDR: Woe7Ln109NKEdP9VDmiFpVwkHwMP/9lsBB/ITkGUFAadt5sWj2+HdH+Jt9DFUbV4uDfnVT9FVo
 3r9ejEEy5uJ01BzXWu+tWUUKCG+I/Oo9RxNkyp3tUZYfFnZ/rNZITNcyn7y8IM5zKBLjdzLNyH
 bt7i0nmqKRbTHlP7Q7piIvBsJ0XelCjp4fTbd/SSKuQQdRBpzCi3So7Xej9j8ASTnKKFzC25Oj
 TpJNrnWjvLMvugTPGpzEdg0h+J6c/R1uDPn9vKVMyI4qerUR9akUUt5v4eAxzl6G8ZqUHhbz5F
 bn3XEgFtTA2wif+zXtTce7zp
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:52 -0800
IronPort-SDR: DVW3tS8qC0S/VzUthlpvCggHMkxqZJ/9h6ezOmOBapR2o8TSvvWy5DRP7p+2GI33CWp4kLgjrJ
 x8KEOCMliKZLP/6tHyJNwYfaJGX5B0Uc0ymWMoc/KCP9JVF+1oSQOXQknlmEr2j/roPhqQKBSg
 FF8kcEK/eQqAcHJkwtMHeFNSadMYq5wkDvjCLq5dYNKju5uSZJtkiyaeUSEOE/ear2uPRAncxL
 2EY7TkfGAJScEf6nN9et0az/qZ4V9cEccyU8cmQy8+KHh9ZQXT2Zik0/EzESf3SSc84EazC3OG
 P1o=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:50 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 07/16] dt-bindings: fix sifive gpio properties
Date:   Wed,  3 Feb 2021 21:59:04 +0900
Message-Id: <20210203125913.390949-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
interrupts property description and maxItems. Also add the standard
ngpios property to describe the number of GPIOs available on the
implementation.

Also add the "canaan,k210-gpiohs" compatible string to indicate the use
of this gpio controller in the Canaan Kendryte K210 SoC. If this
compatible string is used, do not define the clocks property as
required as the K210 SoC does not have a software controllable clock
for the Sifive gpio IP block.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
index ab22056f8b44..2cef18ca737c 100644
--- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
@@ -16,6 +16,7 @@ properties:
       - enum:
           - sifive,fu540-c000-gpio
           - sifive,fu740-c000-gpio
+          - canaan,k210-gpiohs
       - const: sifive,gpio0
 
   reg:
@@ -23,9 +24,9 @@ properties:
 
   interrupts:
     description:
-      interrupt mapping one per GPIO. Maximum 16 GPIOs.
+      interrupt mapping one per GPIO. Maximum 32 GPIOs.
     minItems: 1
-    maxItems: 16
+    maxItems: 32
 
   interrupt-controller: true
 
@@ -38,6 +39,10 @@ properties:
   "#gpio-cells":
     const: 2
 
+  ngpios:
+    minimum: 1
+    maximum: 32
+
   gpio-controller: true
 
 required:
@@ -46,10 +51,20 @@ required:
   - interrupts
   - interrupt-controller
   - "#interrupt-cells"
-  - clocks
   - "#gpio-cells"
   - gpio-controller
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - sifive,fu540-c000-gpio
+          - sifive,fu740-c000-gpio
+then:
+  required:
+    - clocks
+
 additionalProperties: false
 
 examples:
-- 
2.29.2

