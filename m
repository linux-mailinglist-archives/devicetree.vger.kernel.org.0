Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB212314EF2
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:33:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbhBIMdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:33:20 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39118 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhBIMdQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:33:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612873996; x=1644409996;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sry4Jcxj7WaCMHpIVu5N/bY5as1f1P4twJ4S9BPW/Dg=;
  b=dqeuns5MSexTuf3ZKQQWrcEvEOFNXNYYcgcIdst2akuK4XUs3RzofrR0
   TR+unJYwlf+cKEeaBfEa0Z9w0gJqAobklshLKy448nDRWeNiUlVnZ8sIq
   JUjcAX0WgZGiACrqhTDbjmgV8XE08CkV6vD5SGG16m6nXPByoLVIux8nz
   5ORh62JDH8ST0khcQqn9R1cupkY1KCvqVa441IhC6CqSSiycfzr+JVo6S
   6VUFfUyogZQ3mmY2fFMPrff8oeXrCf8g7M2R5HWe7XdiPh1cA8aPhqyar
   VZjkLx3VjwJaImTZRtY+1eyFfZ2thyyCMsYAuztwtBpbmAHvubGVs/fCy
   g==;
IronPort-SDR: MRMDop1W6p03K1f+kf/atzkMgkk+NH5OsKEDlB0p2afSWsgfqkiJ+Als2TYOtJxuK6Ad0G5lON
 xVSx5b3tBxWdJmGCHVe5T+1qRwo9m8xTijS7CcdEri9UBUxAX6B9aF1ofMDleQZBAsDvjgUjj1
 HvLZSavsDpHCbSzL2k+KCrpGDl94bek2dh2M2rbtP4vb4VOHa3OGQNo2r3fbMikTdraSvvyPLi
 dwbVKbRXSEzfmj6nj86n1jybuD2skjhWP6AUz/0zDkeVOj17/C1ov+lwCLm3/TQiunVwFKtyuh
 l8Q=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996813"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:29 +0800
IronPort-SDR: hmLq+MF0qh3LWxoM6hvAzGmtggzQX2F+pAcyS9sPfIboGFeV9RBRjWCTgUk2/8vFd2g2Irf9AV
 C+J9el6GOEWlSrhO/9FamNrgds7jyVJe7vXM9AkFM8u1F/HeYDMS++PZLNB7oQdne38JYPhtWi
 PrvC/9li9O8qqkSAsUGaEaznVl5fTBAp+51lgMIhV5IAMdY5l039RLNLV9UTtzdL0CKplOfg1v
 wlBbPLhTfAxYiW3HdqlG4IlQUNj6pfvPx1sZCLmbrqVTddl8+lHZjf49g+2UP/XIoVA0NcLG56
 +x9J5WBFySDlsIw3PhdQtVp3
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:14 -0800
IronPort-SDR: RBC6pRxpUgQBA2M/aLZRapfqYs1SiBE81mk1IX9qpQgLWz33b9JjzwbMomYFijp52OKCvywyZh
 TAI4Ne2bb8gGyvCLsAUiw/Kd57+kQo4aHhTmNEjGoCcVCDRZT2K+KE+0qDCiGKKB+4NyztfQpa
 zns8KRx3z7ao9gpvP/TsgYebIJSiuQMR1eb1OUmPy1F+E30uy3hFD3CiVZv/9tWy6a2uqwbn0f
 aLb/qB1hBu7z9gJVuXqWsJkyfWMGhoqEs2wbLR07fzqn5Nqm3U7M4jnIHRtqtjtcGP7NM0kQpp
 lBU=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:29 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 07/16] dt-bindings: fix sifive gpio properties
Date:   Tue,  9 Feb 2021 21:30:05 +0900
Message-Id: <20210209123014.165928-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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

