Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E36FD310554
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbhBEHAd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:00:33 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41743 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231284AbhBEHAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:00:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509544; x=1644045544;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=eotfzN0WvUvzgiZvKqxmdTfBb2NiGvb8zj9iv/Vd+cE=;
  b=GnzHOQaZGM2fFzgjslQtBl7nCKv/gW/9qBKtUkxUT/EoiGYxyKX1AFTN
   MOrWoH4P6dArlfxmD6vIvv56MjhNQRyW8tkYBoUNTCWaoxMWXfgMdD/3v
   I2Jbrf2gsYbneBxIKUifhoE3K/HsDyFN6c2/2t3JHHpv8WNmJkEJNsztt
   u8iN5CARhjsTeo5AGSldQIsYjpoSZKk8Y9og3UKkCT6ndWgaMpbHP0uhJ
   Qd7/cNq140zLmMUNOnKpcGNgHPnGJhXtpZW3eyJVudJiLLCccNhYTIEHa
   Tda187HNE3+/HvAenMcEMgnVGEwrkZQ7L0HdYxt2GHHBOaVepG1AJu9MW
   g==;
IronPort-SDR: VhoTrZUH/cB5Vja4nBZp4lF7WY3UE4QncPWGe3Sf2NTCMNj+UWF6Ht49WwaRZ3XEjvMktHVVVO
 z6Z/Jh3B8QupEotpYqteSo09TYnFIXqytwDjbPvgZAn8vq+Xl9YKC2GwhOjef9mXk0e2/QdOmb
 e7JJQ7Nx6fNt2VwKC1lYaInLs+QNF+4cKaxSAzgUvEPKRFpVzCyPWvpGxnIzlUS0/49FqcEBWK
 AA5xDnBxel1lCnqYvg0EIu2G4E43K5g+FWzl6Mzy9VFae7Hmbba7lnhF1HBfN9bEuqNI1BslqF
 G6A=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312049"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:26 +0800
IronPort-SDR: ERnvEL5xi2EEC2x0YSS4Lmj+yCjUKsyYXx5TtcWti/HlksGGgFkkpVgzFS5/8gZv+9aHc5e0aj
 R1lwwID4wBfqVDBHeBM8hXxJrVpYxZGu3R6VobQX/xo16tr5K+PCq76vU2QhAZLk8LM2L6T+09
 arIbSyJJElHWHRFvQ4Uok/QNygCSdG27+MPKuJF3fPC7/xJFwBeSknZDRgbvN5qjNiU+5AbSLd
 IsXMxjbhi1lF3Gp8QTKj2g/KL8qAjeF3EHwSCFzXZhkyBcqEaBihnuZVVOJWjIC3WgonCSzkmM
 xHnKkYTpWs2C0Zkl3fczdW3o
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:43 -0800
IronPort-SDR: iJ+L7v+b7LFPg0PEyuN4SUktS3jBZZhei5E+pgDp2ioB3BVLigE9WyJXbZOD6E6N6MHfapDQMh
 0mxnrZxzGpHUQHVTJLPz1X4Xcws1JBWnf5pOCaKwO7pUusjJx0ZoGj46R7V39Z9PTp7yuVMKf7
 T43x2YaDTPfWw+sHME4jo0s47pajivgnn+AZrM6ou/a7pt2EHJ3AWwj0Nf3yDCMR54q5o5uZ9f
 eUBE7nMqH6dRbqMlSZYZZbFipILcO772b3ETozLnnKk4C5+FC7wtDFPLGnGABJX8acsg3WpPqL
 5xk=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:39 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 04/16] dt-bindings: update sifive plic compatible string
Date:   Fri,  5 Feb 2021 15:58:15 +0900
Message-Id: <20210205065827.577285-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
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

