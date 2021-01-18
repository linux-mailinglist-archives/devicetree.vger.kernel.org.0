Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA4E2F9794
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730941AbhARCFz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:05:55 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:23241 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730940AbhARCFz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:05:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935555; x=1642471555;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HnJ883zL+t4xSM63wnXK5D+H6FssPdmgykJIZOwLcLA=;
  b=GXQgNmlj01SU44vJWRI4Nw4EOr5Y2TISJ8acqd5Dg8ai4pG3zorrwp6a
   dvBThnzzY1Q8nsVQxH+eVcZ+aNXB7gebW8Kx/fkfi92QVBmzdcVBGY7O2
   dfU8S8FMKHyV5wfYwIBUb93QmPPxQhwpXmgFwpwcX9fku0DrfYZwBKlwy
   9WY42gmQJ5QyGO/h6WxiBMam4hinoDX/dqkt70tTdjMO2cT1qW/Lvy6jD
   FIVXNKxwZD94tO5I4dDo6Y45m1lCnH3BrsCS2Q8r/uDAuBsF69FVUkZQc
   7omQOimAvaUDrHx9Kxef1sKQ65QJedhi2lfgMV8nwcUqucwqKDJObJyXG
   g==;
IronPort-SDR: mgszxdzxjRRErFlnctmEP1zsOX4HItrqdUFac2uBCA8BOcW/XvkjkRPgjho1F5mAhIZAaI+S5i
 9DFvsNsiVMdxpY5/5/x+ZOWMmXN5kXA3evhKVFYK60UOyPpFS3p+Yn2dTa3Q57eiaJryYmh0m5
 ziPYWjBBE1u1OPnf8Maju5dbXMwVJ3lc6VQy0KM4wbFJQzjlUXwhkrAe12W59xfkpRGlTW7WG4
 Uy7U7FYd7M3GsgUT8RsSalXSYK2eJnSnVGyz+ZkdK/YIcqv9SAOQ1cAAmFo0qPT4Ny37oRbaOR
 ZA4=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840883"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:12 +0800
IronPort-SDR: sIyPOnuuTKOuswzhCa8C2CYx206D87peeyO+DClOdo18RIvpGl2rJb+NV+mUrY0DpWxPnjlItN
 /5otqqffM2VXcykWI01A2KZy54V+aNsNWvXeS+DXFO0SrA7W7DXToPtUhoSgTrzsxQxMHJNL26
 cMKHu7XWQ1RIzxK9Mu81isT3mqMv6ZCJzc+lLDsTMWYcwAdE1pKfkuiF8fSCdpHEMAwZZF7AcT
 dRWTFvG5Q261w5pJKUZiNqkaKS5ssDMRIDiBeFvcBYqSZF0Z7iian8lhPE+NYWnaI9j9xNSze9
 mssvA2zi08Dus/i0KQ61eVqP
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:50 -0800
IronPort-SDR: QrNUiJfzoKM6fXZiFKAMFSCSOI+R03Cb6vvw96EpFCrKreBvi0MzINZKrEb989HCZrw0hZyTwp
 d/ckJMJYQgRH/V2tYslAirAPBN9qLkVfZY3SB6RkvpTjqhn1dAW4QqXd0yLQD/xJS6ahCbsSrE
 vIRAUt76OyFonmQ05+al0xWhwwWUy2NnNDCU7WGW4O+D/cq/4x7nYwJpizm8jI5Yh0qPZpuVTm
 SHFV6sYJNSp55OaiK5WHdzuW98sfP7NC8VBIdGTqwbQBpOKeH7yWMVbmO6tchHRbjw9KY128iU
 B/k=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:11 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v13 08/17] dt-bindings: fix sifive gpio properties
Date:   Mon, 18 Jan 2021 11:02:35 +0900
Message-Id: <20210118020244.103451-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

