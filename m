Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 503912F9791
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:06:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730919AbhARCFO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:05:14 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:23241 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730866AbhARCFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:05:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935513; x=1642471513;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NrWUahIqENHSFdK2RKLLrmHQ2RErkyo5KHGTMfijdUo=;
  b=IVLEVlYQYxWHOHEY91Msl/tvXnu8/PmWnAXEtFvJO0HPqGb6H3Rc5ZKp
   Br+XwWlcHBl1UwBWXGvqkQMWhBOwRqSbXmbk9thUZhTjH3lyhCKtHyw9Q
   L5Md5UXMqsSa8VKE8x2ddEO035JndMXEBVtxm+TzFYMr05x0/MkoBLQUW
   Vsc7DvYOU3CIAsy8r5/Dudlaq5BGlCKWP36ARaXORnaOoA9XKDsWw44Iz
   nnce40qI2Wdus4NTsZBMm+GBoZUpF8PmwSHPvqDK86jYtgnQnn/HaTbGL
   A9DGYtUw0ZRgTdJdv/0KFuI6tzVweT3c7pdOde0sESdq7rMwe+K+0qiYv
   Q==;
IronPort-SDR: exIRbRHlfXtzdZ85l59Muu9CyKQ7L+q62Lfgr4Ic45Yx04rR9ckazMpInXD9h0fnsAbxf64arn
 TL525vtO0xVHhtJuQO0jixNRBELqaPv22TzAYXiJq6Mmcg8nHUawvApXcEm71IRb0oKomJUw6L
 E9L2Fk0pjcS4sqtyv4qhfDBV4SMgLu9zKzCJxadYB4A2iVGZ9QfFcyiMcLoSU3kqvFKWF4BSaT
 FQ+GkjA5XRDtq7gp87IRXsA3Tqvhy6SMgXb2pxuvXSTbLePE9EqoBpmFXyZXu1Ct10i3DJO9bp
 Rjk=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840864"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:06 +0800
IronPort-SDR: MKg1tB/tDO1no4syCU7IKqhegZp2/fbKdLNXhmwolCICMjc18XGB0yMSW9FfrLcBec23GaHW6v
 tjDvuwSLUeJlFvZzqiitqgGSG/VoYnfyJqeOUVDKJYKrznpW0OZD/ywnWejPGTSpd9ZYOdhEuJ
 Y5Qxx5dMmGl6iYOX3YccEo94HePsKsTZdkYkivgeNMJcpDNHevVL/gCeaM91/R4kSHpywK3Y4V
 X4w/j28ExLOEV6akjqrdBiMKuj1twsm/KwQReT9GMdfe3K4yHdug9Sl9M7eDAiyWdoNGeAAbgH
 XrY1Sir5fKvp8pUanE4GrHFN
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:44 -0800
IronPort-SDR: ZNZ4rHBX0qI+Fsgead47p1q+2c+soqv/N+kwIHlIPxgOl55R9tSz4jjC1OEoV4Q36B0Zw7vMKV
 5XY5En1Trl8IehEugWK88yYL0vE60pzWVZ1HWkfbQfg+F0cqqAkDtPvszTtQRNMo7lq6apl16P
 3b+dsjMytw/oC0sXZJdypq3MudMZTS6zKrppcpRH0YydKP3H3vy6w9DzKhQGFmTJso4YG59DwF
 pZ7y8+FbX3/OzuEKn3Cvrj4/nZgXnm+ayUhLCeiL/ArS9e7o/G7cnQM/PuyAEmaJ1n/GsXBodA
 lm4=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:05 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v13 05/17] dt-bindings: update sifive plic compatible string
Date:   Mon, 18 Jan 2021 11:02:32 +0900
Message-Id: <20210118020244.103451-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

