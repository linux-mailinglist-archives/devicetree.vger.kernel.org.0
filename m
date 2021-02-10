Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F758315E87
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:05:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbhBJFFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:05:12 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20605 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbhBJFFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:05:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933511; x=1644469511;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sry4Jcxj7WaCMHpIVu5N/bY5as1f1P4twJ4S9BPW/Dg=;
  b=Rm2BeB/K1kTvhMXfvSBmZjcdANz70hNGm4aJOYeOxGmy+rDQdHLXEW4y
   cQlRdRjw8uYzfmLx+Tuc/qus9gT7dgqGZeCyEcglwTI/Vr0h1Z4etRqFg
   gaQt0on5ckKtaoCA0dbrsi0gZvoLe5RWWNgwM/zjgLoYfPlAaloXahFPu
   A5TxoZLh4NYD6t2viIP4/vK7yVpNrkvNvyqF+tIAF+wLIUhWL5HPjnpgw
   7nrMXA7e/LNpLomYNpss5CoOgTf8mFXxc4lHbnD6sGv1xbKTQ7UicKmKT
   SHvNg1XhXNIOdToGZxRQpZa9sg0sjmN7g4ozujRR/DVoJfJNf8R/tc/+M
   g==;
IronPort-SDR: /Yb7YuZ34pfETewU7NB/tQ7l1QxO5JYCgcoxLSYYjPO51xiZ8HqVAlHVlSD9NH7IW9tsIa7FXE
 WSOdf2b0zhli5tp0jrkKoIz9R/90C8VQLDiXWZ+hpUVCnsPARnfysoLFzXrlEICSdecRVkGHNg
 BRIezGY3ZwSNCm6S6ciRDw+xQ2vrhYlHHldVPnjbY8qTrtd/R2NSkmgDiHQ9r5yj4UTW+S6v6p
 5U+uYdruOsP+WvkUNDxJxLHkLl/qK/RRliiUbmEuV1s98HC5Ze+LYx0btaxoQ9w1NCDDj8qa6K
 Mbk=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775821"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:52 +0800
IronPort-SDR: p/XTGioaVDAqf4dxqymuPySOf3BEWEL+mcZ9vh4lZcVwOS5jFizD2EqFqFtZwkjJrOpcRxNYPV
 ZGJsNFoVXoQmFRxbCu68raNG15CB1BgCW1wr0dYmrgt86lSIMvlG1sHrN8660W9ztYkRTE6z5+
 STq0kYd/HuLethVrB1fwJ+CsxO2FApmF9SPmz6uFl7ARDXUBKyt0RqABINb/JvDRic0bpxR56x
 Lk4MJpyz9CXrwDFMlB4H6hFKPf1LDwJHODk1w6eY54UQ/4/GZfTT/asImnPcaI7Fqt6DzkJ6gD
 mzbzR37u3x7ab45doF+cewCN
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:44 -0800
IronPort-SDR: ZkWhq7eyBqH0CiFyvfcATyAvi5PsytPdB4Q14RIyK7YKQ9gaNke0EuchVMUClQmRP0qpLq/Ouz
 Bhp+AQPY64nfqLiuceuRwg0RY5/iDapD3brwI8YeEL5rtX5SekRylxuIWGXU0+psGexZBHSQTH
 ZFn2TLcdLXgBiaB8y/NCwkSeUrH+/4xiv8ztQOw+zT4DWvn33xZwx4P2OTjvB2kZ2YgWahQXzE
 4lGUCUGO0NbRykNeYXtfYBEXIqZC/m1sJauN/Z+n4PNbcrsKI5UB9PpL/2xkEuqEIh2TbFkvlO
 hp4=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:51 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 08/17] dt-bindings: fix sifive gpio properties
Date:   Wed, 10 Feb 2021 14:02:21 +0900
Message-Id: <20210210050230.131281-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
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
 .../devicetree/bindings/gpio/sifive,gpio.yaml | 25 ++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
index ab22056f8b44..c2902aac2514 100644
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
+      Interrupt mapping, one per GPIO. Maximum 32 GPIOs.
     minItems: 1
-    maxItems: 16
+    maxItems: 32
 
   interrupt-controller: true
 
@@ -38,6 +39,14 @@ properties:
   "#gpio-cells":
     const: 2
 
+  ngpios:
+    description:
+      The number of GPIOs available on the controller implementation.
+      It is 16 for the SiFive SoCs and 32 for the Canaan K210.
+    minimum: 1
+    maximum: 32
+    default: 16
+
   gpio-controller: true
 
 required:
@@ -46,10 +55,20 @@ required:
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

