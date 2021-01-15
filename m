Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 871E82F7DAB
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732423AbhAOOFu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:05:50 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1776 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731599AbhAOOFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:05:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719550; x=1642255550;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=pxt0C0mCAFqqSrNoTsLwsfHLdzD156W4WrdlqAAuxAw=;
  b=Qkv2aunFW5c+3jnQUcuQ8T5eocY4SseniAVZGBxpJvhTahsYSaeuLeTc
   BMeGZEt1B/OQsBxV076ASzD8+UU8koA0bHKCOCILrQqECqK5wfeLNXWRm
   A6TvckerVh83W04BhkfkjMIIgg5Q+DTwQ2Y7lOJ8U4b3rrc/3yklZSrp8
   2fumdxFnPXDZnUhzl5jBOnh+fYOqDRbR+gRQuVWjnre5Qegi++jXDtaaC
   Gb6RlDVVoURzXxc7YRWkW7cCz7NoLzexkpq2wZeRxMGLDrjQ60u0SyjVp
   KfN3G6/qqOPBqK5dLFgSOgem5jg6eX5KnWog1wwJD37L3cn99pcFjLCY7
   A==;
IronPort-SDR: xBljeKVhw8eGy9HKb+iStC3X23Hl70Hmzx+uQ8KZ2p+asTGW+oDm//uZKbRCTSqkKqTbqsHHyo
 84epEsxHwS0eMCWWmXM6iPhsoAYEaXMHXINEZTD1ESC37YRYjdOvs61mHMuaXN2FEnidd0rAbw
 s6N5yjzkPDifCPIDETR/0UyZFEG6luLd/mKXznHptn7r29TKnQzpHPds6ohltYlPJ6qwkr05uw
 VfTTUqTA1aaOpKzXhYrAbbbX8BgskJO1gjKYBpSuF61fBXfUj0iDlZSIN/1B/9XAsjx1icfNTp
 XDk=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693641"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:44 +0800
IronPort-SDR: M/qMz9rZ1q42jEEqCHJBcMevp/lcnVCpaI59L6gZhdOpnpqK2Ir6M3MHgVr7fZ4mFZ6xkAeX3s
 SLG8heBOMD3LsXK1DNC1fpsAaYI8teT/Gos4f3hQrwkVDAserv6CekwaciB6FENn/jrWK13+h2
 WBB8ufQ/sqJgjNBK2K3D4bft5V6kX4lwtI3k6fSezLtIeMQ3zCZe7mCvuh+P9bXuBh8MLmAv6Q
 X6JaIkGugBva09bcVFh2J9xFhnrqPAQpfEjxyXTP93N2ltnAx5c9h8eVnzLDEOOlqC7NDK0BpK
 ALXsG57/wRWlvrFRUumoVstK
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:25 -0800
IronPort-SDR: dHkqvMBXqqxx5Y/UbDfm5GjSMh8nlDWjvnixhN2QS7T94ALvzIie9Rvbdc0tYFYNn3DL8CkMFR
 QDUVyyBxh+CG/iq77QXRNuXD6nFZfGJ+CuK+5J3c03abzR9juRS6jD78bO39QZIuQVm/McRPrr
 aiztDOF13jZNzEIxByfVyKXwca8FmwUD+7HpOI/E93uMbcIUaAhAvA+vEFZ6ZO82ADl6qE4njf
 tpULBK8P3PbCyr9gsIs52WbI5br4dTzLQs+AlppsGN7T82sW6ud2sIe+Ko11kb+8FUeQ6A/8Ju
 OjI=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:43 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Yash Shah <yash.shah@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v12 05/17] dt-bindings: fix sifive gpio properties
Date:   Fri, 15 Jan 2021 23:03:40 +0900
Message-Id: <20210115140352.146941-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
interrupts property description and maxItems. Also add the standard
ngpios property to describe the number of GPIOs available on the
implementation.

Also add the "canaan,k210-gpiohs" compatible string for the Canaan K210
SoC which uses the Sifive gpio IP block. For this compatible string,
do not define the clocks property as required as the K210 SoC does not
have a software controllable clock for the Sifive gpio block.

Cc: Yash Shah <yash.shah@sifive.com>
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

