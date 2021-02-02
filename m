Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D17A730BC2D
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbhBBKig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:38:36 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35920 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbhBBKic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:38:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262312; x=1643798312;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NrWUahIqENHSFdK2RKLLrmHQ2RErkyo5KHGTMfijdUo=;
  b=g4kkcwjuonMOX9qAQfc+E1MXtnSzrnB9VUdD0CFVtOqpeHgR84adEZwh
   kyy9zcZeebpoPFyA8rym+7UjQ9dhdLnHzwLGDnJYW+Lgyfc9sAmyFDFvM
   9ZTSG2SD1wxNZaLl5Zveny8aVVFVtzC9bTK5H+DH38IAh/fwX7NV1xV42
   IU5Lf1u841imXpVuAXxxidZzqGU5EWMpf84XB+M0w7nm3+zS1ZHyz5vZu
   PC0ONFy9av7xSwUDiDF/Y1ZKL+NlXtW93KcXjEF2ATRRsFHV35vmFEKyg
   YGP+mTtsjZkciE/W9I8Ldj06zMqFKIx+gjY4lmn5XSFroc0qI/WegL75M
   w==;
IronPort-SDR: grv8gRRVXVXc0MCvSZ+gQCZbtrD6nRoNEKe38KJ/LCF4WAe1SCDNS+Ou5sRrufwOyV2dOy84G5
 bK6d4QEyA9UeF9WoB+nGcwZYhxT2k4BmGs5blWFI+ULrPXGPYqjG7lW1fIzuzn/BicR8DcWhaq
 8cwX4dDIO7LSkUFjL+M4CzRfp1yYWMlpSrzouK2hSFlZp1GWD2DADqHrYCFTHhCpZxroga58rk
 6itAC9qocxgQF6Zh7zA6noAnRHV3qU1qf3pAlow3hHfrkVRapDyjUEjStBMjmG/wzIC1wlx6zF
 S4M=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092490"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:44 +0800
IronPort-SDR: GoqEe/m4vib5n4MRYaDyQSiJR/GomWIP5F3Lf3QxHNRn4kN8/Cs+CaF0wLb1dFIEwdFmjF1jkI
 HHrbmvyKJ3rJ5bHySP6x65Q7HnZYGNAnc6xKieMwZwFWSfU6QwXDXDLCGedYHmRgWCF7CRF1Qb
 IZoQ3BV2qu8K5QJzGzWSteWgMjT2NQK1R2pMZh2Zghgsb7Ol9av27p735H2JfIc+ZH4wbROHiu
 iIq1IcdWfLTkoqFVggk8lGPWr73Ssv0hw4B8dfbd/++wJ1CZCgRKX67dbwJAK1EJYnZPfu9d3o
 cyJqS5aSB/1JfeEmNSujIy75
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:20:52 -0800
IronPort-SDR: QfTgXTqTQ/iPcqf5lpORgWKzfaszxtYdHAcCr7OhKg6idQheXpwGheOpPZV2oN1umalBTF+sRU
 5uMS8f6zi6Taf3ZAwwBVlEyOoj287wEWHTeI/OjWtPHcDJgpnUBmLvHs9a8hr6l+VfOBdAoVvZ
 h5ZUlU07zGJckfTSIg+IEoAMQpGUZA74cviKobxbz6aa/A5Bi4btPljQO0fS3CU427xpo7YYJm
 wEsynyoTDH/17+Z3x6rPMnGkj2lJFer7U1QQH7BXbJSEQqjKUgpfi3TpVga3ddNnTdO/ncLLRr
 XSs=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:43 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 04/16] dt-bindings: update sifive plic compatible string
Date:   Tue,  2 Feb 2021 19:36:11 +0900
Message-Id: <20210202103623.200809-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string "canaan,k210-plic" to the Sifive plic bindings
to indicate the use of the "sifive,plic-1.0.0" IP block in the Canaan
Kendryte K210 SoC. The description is also updated to reflect this
change, that is, that SoCs from other vendors may also use this plic
implementation.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../sifive,plic-1.0.0.yaml                    | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index b9a61c9f7530..3db86d329e1e 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -8,10 +8,11 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SiFive Platform-Level Interrupt Controller (PLIC)
 
 description:
-  SiFive SOCs include an implementation of the Platform-Level Interrupt Controller
-  (PLIC) high-level specification in the RISC-V Privileged Architecture
-  specification. The PLIC connects all external interrupts in the system to all
-  hart contexts in the system, via the external interrupt source in each hart.
+  SiFive other RISC-V and other SoCs include an implementation of the
+  Platform-Level Interrupt Controller (PLIC) high-level specification in
+  the RISC-V Privileged Architecture specification. The PLIC connects all
+  external interrupts in the system to all hart contexts in the system, via
+  the external interrupt source in each hart.
 
   A hart context is a privilege mode in a hardware execution thread. For example,
   in an 4 core system with 2-way SMT, you have 8 harts and probably at least two
@@ -41,9 +42,14 @@ maintainers:
 
 properties:
   compatible:
-    items:
-      - const: sifive,fu540-c000-plic
-      - const: sifive,plic-1.0.0
+    oneOf:
+      - items:
+          - const: sifive,fu540-c000-plic
+          - const: sifive,plic-1.0.0
+
+      - items:
+          - const: canaan,k210-plic
+          - const: sifive,plic-1.0.0
 
   reg:
     maxItems: 1
-- 
2.29.2

