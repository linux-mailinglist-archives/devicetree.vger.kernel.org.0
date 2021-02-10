Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 507FB315E85
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:04:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbhBJFEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:04:30 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20605 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbhBJFE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:04:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933469; x=1644469469;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NGUiJ8C+bTM58/VzIl1j0v+4iWOTF+8rASnEfXwaBo0=;
  b=r4Mr6WSqjPEidafOu1xAWVxKNl+n7nFRo92Y9ay/roxXo2cZBnNmqyGH
   8bmV/XGgyNpOF507oSA+hU/qdsGpN2i2eATlzg5PFfDaO9W+kIfse19af
   96Be9DVM9NS5H0Wtvw3MZPZbs5Ws0zK3odQ3abZc46X7J5DzEYxmD5Lr6
   8Q3NjLR5xNRPH3mmSP4YnIe4GSiv8shaU8if33c/dqX/oKLN6j1mk3Xja
   dOODBTiuO1vqxXhhxu9IV9qD5m6/Ub2zZdjrm1xmn4MBoL9GhgLkpA1NR
   axfYBjDAUNEU/fee2m2umBPQJI0/dZZ28IOkZWnd8Pb8w5nqvNceo9D9D
   w==;
IronPort-SDR: V+Y0P8zv5VdPOPTSuUkUgR4OVanSmzvGI8zTVcVC3gIwezwAbtTGdTIOlYG02uXb+QU4iTHUb0
 Ve/erbj/C6RUT3eEpiw+RuhJ2hVqAIhdYLgGkuWUCLwAx57VgSzydOrsvqtohBTNgV5V+XcmIO
 41vfBAKIOUAZnSt15Q2wv0sJB99phBv+nhbDZJoa511WhbRSBRMwywJ0ZaFbGAlwGXB9xgpBLa
 FzZUAvkJZ6d9mqdsbuQ2sdx7qnf6Lqg9goJSMf3a62yV5cJJkSAI7bwyZMyQDo7C05QnhsHCDv
 gd4=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775814"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:47 +0800
IronPort-SDR: G/8kpujriXSMmYjsUAvnpZZWHSrlW9I26Q93F9Dz/Xs68YWRkqo4ory0WIBEzX336QpToYMzjr
 RPv4UkUqJDMS35vbCGfEDMW6Ye8LSrwGsAEPUfc6OpOyjK9T70vvWgaNyxUPXXG0KzDZT9LofU
 9jeKEn3Wy7QrTFmolQT+i8Xc5NEvuOch+lspt7x56kkKvDqK8Sk7W6Xd6UNNnet3BqZ2iTz8BU
 dvDiSkMbXic1sE7BU7dyfIcMG/L9+N8OmxBUCpvLuniKJZwmnLNNEH9eThgmMVLtfMy2rduYKM
 S95Z5f94nWTB5VyTefYdTt8V
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:39 -0800
IronPort-SDR: anR3aufEAOAbTopRqS0vsE0DSj/cRxzosXSIjGf2SWwziO1dhrSssRVpMQgW9cz3ZRCx+0MxJE
 5hNmcA71DfqwEKfulJqld4uluIVw0Gwa9xECCf/2iUV0zOPWJKiu/riRirKUhyYWmz2e/DsA/X
 sp67aXrQLUW5wK/dQuwJX2NUPfT2NWJYDvgrrGyYWnnFEEkC9Lm94eNTpnWF50ZJDUJsyV0LJG
 hof4827Dq6pkHx2iGRT5SjTGCJVZ0Z710jguMP4le7mWewqPg68hRPZqifHM4r9injQ9tQ9AV6
 b8o=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:46 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 05/17] dt-bindings: update sifive plic compatible string
Date:   Wed, 10 Feb 2021 14:02:18 +0900
Message-Id: <20210210050230.131281-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
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
Acked-by: Rob Herring <robh@kernel.org>
---
 .../interrupt-controller/sifive,plic-1.0.0.yaml     | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index b9a61c9f7530..08d5a57ce00f 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -8,10 +8,11 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SiFive Platform-Level Interrupt Controller (PLIC)
 
 description:
-  SiFive SOCs include an implementation of the Platform-Level Interrupt Controller
-  (PLIC) high-level specification in the RISC-V Privileged Architecture
-  specification. The PLIC connects all external interrupts in the system to all
-  hart contexts in the system, via the external interrupt source in each hart.
+  SiFive SoCs and other RISC-V SoCs include an implementation of the
+  Platform-Level Interrupt Controller (PLIC) high-level specification in
+  the RISC-V Privileged Architecture specification. The PLIC connects all
+  external interrupts in the system to all hart contexts in the system, via
+  the external interrupt source in each hart.
 
   A hart context is a privilege mode in a hardware execution thread. For example,
   in an 4 core system with 2-way SMT, you have 8 harts and probably at least two
@@ -42,7 +43,9 @@ maintainers:
 properties:
   compatible:
     items:
-      - const: sifive,fu540-c000-plic
+      - enum:
+          - sifive,fu540-c000-plic
+          - canaan,k210-plic
       - const: sifive,plic-1.0.0
 
   reg:
-- 
2.29.2

