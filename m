Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A05A30BC30
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbhBBKjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:39:18 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35920 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbhBBKjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:39:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262356; x=1643798356;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HnJ883zL+t4xSM63wnXK5D+H6FssPdmgykJIZOwLcLA=;
  b=DKoJwHgTPLHjoxM9MiubPQIFd33nQelYnG3U+fkyP48bPUhnN4nO3Sl/
   ISyRZZ4VJ4mAaPmeQcNBm10tiHBtK98eSoO9WHObK9S0eWeixXPkzGx70
   SMqxqJ268qzOFepnd3it7f7bYyldNQl9AjDaSBL9sILduVOCROP0ATvfE
   quFhV/eECDyF75S6/+fPMbdWi2pRyfLszRpIWKxfK3nHGFxOtrCSccTYv
   bOeO7FglTP8Bh/I7iI0Jt0RMvR5CCAstbmU5li8Qp91q2S0Pj+mXWdbj7
   ZAgyRPsStkKDCb8jIFX84Spzd1A6N+6W8gegJUoRN/BjWogRUyJRBw01g
   A==;
IronPort-SDR: Rc2WOAJSUzJO2S1lrUXVMbphrahXCo56i55WyA2Iz/xNMkTEK4j6m+8yOTLhSgMKHegAs+7Jll
 UN8Gal8oCxUVWwFONNJr3OLxkpgXYkL2yJLP4BOdKYE3/DaIh+smSlo/O2BNDBibz0zKtR9Ipl
 Ad9OYuCF9KLLlxxpMK5ghuxujZWHjl19jKSqcBCoqrnL/Rqhv/Bg8g3R7nLJJuuzf74tXrC+YH
 0nmCBY6mBm2pSinn7MqfgFBStHfkge61+JCK38srdip4MT0iJopXv4TIysEjOekfS1s3tJgmwo
 Hto=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092498"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:52 +0800
IronPort-SDR: A9xgxYJ2wrBA41bIX99Qe3QmLhbdHJZ/jhDOZ4Pcw0Rn1ILdyZhjtPLiQCyVJhefi0/TukHOXJ
 nXWevVJAo0ly/3G2xEiJdfoJU3Skj2WeQBCTfG/HvIgoAx7QQPaq/Y7dZyChofjac+vh4M6zgB
 tIHSuIsAHl7ymotjWsYR0XOWAscKigyOpCcot7kJRIfuzmVwtxfaJhxHAgqJtpG6P0IbjtOOzm
 bISFULmzUdvkqaqzxJWJig4fLPj18CDFP2HDaIQnKWcvqlHnWkquIDXXgHh8/uv7wRSoRQYXot
 93vt8+y/vl3q3rgWwezLZj3y
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:21:00 -0800
IronPort-SDR: 6/5t+5zUO/L6uoup3z0JKX/4psaQPvgGBLCEBOBisn7ngtzxwUc+MTYATOOXS5V/J17N8NkL/m
 QMG1mbnzGoF+1Qio580+NKZ6SMyLv8DYx3PteGhWU/pEJOSyc/lN0tOVSdxVsKx8SGLbQAEsXt
 1DjP7M3sxw989R8+9wV1hF4IIsUCTskf5nqWFyVgZDzzvNVNKcqJDmlooh5yh4SAxPkHC9+hHw
 eB9Mr3eSY4BVT5ofdWlZvUJQX3tj8WTfHsWoZqlYkikcIJw8AgHgh1E5ibW7yJaD6fCOl0HBlU
 5zE=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:51 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
Date:   Tue,  2 Feb 2021 19:36:14 +0900
Message-Id: <20210202103623.200809-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
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

