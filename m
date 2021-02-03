Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90D6630DA74
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:01:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231134AbhBCNBX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:01:23 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14165 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231264AbhBCNAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:00:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357810; x=1643893810;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UMFQIdrYtQi54YrRachcvZozXVK7+0hIHPjfiw4r9KA=;
  b=P82ViV2ZTXETQHVD4WimMeoUDbtxjXK36B8OtV8EPPwRcCvQe9I/+Xal
   1WzDz5iOB3dQSNv11UVZavPlMrNUq2kH1Qk9Tof1atmw0kBRR/4ISTjlT
   h2hMjoyhBQz73+i5RpNl45vv5+d/0ljbyYaX8DkxGPkPqVl3HhWjVcHYd
   fffn/H7icqbxtonM+clC3C1DMX/eu0A4Wfp4L+5Ccojmazq/s87fk5nBu
   4twXbEd9ln3UDeEDYlHcGxDUGaZNGzhNUFa0QKVUzmxGyEN+sDbALpNYi
   UkXNEsNilrJPNpBFnNaWHchlaHgbEIMGcsveiKXvxsd49/hypQDDhT3zY
   A==;
IronPort-SDR: f8xG8gjxbpEBnOxnP+r5GJgrczPMb57qHYTorejsuXnB0yWPMxR3nxKGkVFmj0Tv7NGIPfCO7t
 VX/Vr/ImMfiPNMz4wvtLMcSxutFZi9+P1O4WrCWEFDwBGruA+BcYYAJKv7lyaS8E4+2WFpYN96
 sBiqdrozGkyatYvGcJaDEVUjI1tIrI2RQ9G6pqXIQ8ZOBSMdnMSnR27PsszQo+QNTJigUu9Fl4
 gDSeh9oDuCRoNFgyfqgIyg2LmZed4oe7J2lHLb59FQYUeD4B7ZqHTQC0eyUCHa5DRFrp3xgD0C
 0/s=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106932"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:32 +0800
IronPort-SDR: xFJFybMduehFulM5pxc8VVZCQyTLrhJg3GsZVkADmy//4nHAAuNcLCbJoprebii6Le2Q9ItqsT
 WFl2r7fIGsnfpHHU6orqW8w9Jtc/QHOTgEo2hsaZbYO691v3zwV3dJU91mKp5WDskzJUK+CSW9
 ojBBRrORBSkmU8F7d/orN4bl10HSSSO4OpBbgR1ouwxiO2PSgoSLhFwvaHP0GnUbWrWoMWzNpg
 jHB+rWJ+CZhIC6LYVL3Xq1XRIRYmalej9gG8wrSQSkLH9Y+v//TWDGCK/4aO1rTMiH9/Q/GoCo
 mh08gDyGtUatQXoucGhJ1KZa
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:47 -0800
IronPort-SDR: uS+ApnV/oVN8lTTMdgOlZM7R+TZgaXPNPOscRJQDIQEsvj8bNQnC4ImXoAKM7iv6m1Ejc51+r+
 LEbDL2vb5aFi6Q7HzmPw+SA0NbqugG6yKNHBnoAsHFGZaqPANrj22rQTyculkJalvu+5pCOFZ5
 fKBngu4lZsbYtNkT33SW7lMCEQs9pntOqk4pE/yq5rstk33a/w2pt2G4glqFYxYDHoyqqL6srf
 6+KAoO2iG3Vb1SEHrzCYRLi+iI0/DpCuboLr8Lvw5RV7+Gpue5agd9CMTx9jYXZd0YhaFXQfJu
 6h8=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:45 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 04/16] dt-bindings: update sifive plic compatible string
Date:   Wed,  3 Feb 2021 21:59:01 +0900
Message-Id: <20210203125913.390949-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
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
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 .../sifive,plic-1.0.0.yaml                    | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index b9a61c9f7530..04ed7a03c97e 100644
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

