Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27B0F2F7DA9
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731735AbhAOOFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:05:47 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1768 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731599AbhAOOFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:05:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719547; x=1642255547;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=K+bmNnrAw2Khp85jJkbS/ratLTdwTztUszUl7HF20jU=;
  b=PRefXmeN4NLtuwCCrNn3c3SdFwLy2UYGq+djrloe579u0ivyWAtoZA8A
   LOs3YMDeoLF99fvXMu1vmyOajOg/Oztnn4fbsD6BUJpxHdfb2hcOwd1AJ
   GoZFp7/0tBqrxN7r7CwOSzmipK1nEAq1HewKOudKfPDpVjSDGbBO20qfX
   BU5XYfZ2v3lfbEeLWbkH/W0QL+zNOBhf/b1xu8ZQNDBdLOU3+RlsQovWL
   Wh5qNZjuY2Cnr/v4lqO/IobSXyMoSm/Fw8Osw5390+IZCRGwTMRcZyCOv
   IhbmUepyYtG9GozUtwhQqh7mvULm/2XlKTzT8klk+oRra5lPekeFH6Wi/
   Q==;
IronPort-SDR: cafoHsC0EKz4OTw3vtOUYn9lXROkz0krQ3ePgk8YBGRDa3ZutmHK/u1JDPvP4lTYn3W0mJ/4M7
 Ul4v5jVhkTsyjLLTeUuPOFsx4Mash/ppH+MkMJYQ0gqUJP/qG1bJJllzZUvZfCz3jny+a02FJ6
 C1JuH9xWAgnErbg75YrjVsQ57x1HXhIfyp36JdM4Cx887cpiTF6EOMKS3sD0a7DQOUPGE6cd3C
 z8O7M+HnDL4U5ZUDFm30W86HKD4eE5rB+D0ahdCPmKozoCp83XI28eMmDlwwSaByzSeqXKk4Pd
 f9U=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693632"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:41 +0800
IronPort-SDR: TLJONqUGnusHRJHcbCwKrhHxbA5rzoy4B/I4dF5Ai6Po+ae6EDPu5IOiJVKKb0xvbr2SkgBjHx
 z+ta/jJd5l4v4uGybv4rDVUXgCWpAS+W82Gjum1qaeE7xhfWySsWsfwrkNl9Cr/1y2QO7zjaz5
 V5AU0uPxAQc2CBPM/0+eecHMA1PuIZjbZocjeDJHAaHF3kJVZk4RuDyUB804HHzyNpO+OlvZ31
 /K1cXpxX1TF3IDu3+m+sZ8SJuSw0obNM3Wu34WC3Up/TS30T+nPCk2gxuKJHBa50VMNJEWuyK9
 k1YmVvXMrXSM9YS8D9Qedp0l
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:22 -0800
IronPort-SDR: BBA2VcmEWsXlQGi2G4NSddqbZF5tHke3YMHFJ131VaRTqpawQJGx4pyDxMuz9Xtf1hRTijUTgI
 UmCMbZVYS7TZzeHLQjKJEXMSorfFMb3VlGDuyQUCusCChl4Fn7h+J6KxJUBLPk4GkstJSrJ2G8
 JBgyux0UveduYzMCuLHts96kSDS2A2tKo62x2XZ6EX9ZwBTjp6FLz0sw7j42puJgwF6WgVTeA9
 asBRj1yxtA7moHzc6MDrGKhkOxR03BpZTBv/lvrUpzJgJUiqyp2PgMv6QurNu5Y8RkxxKr0ioP
 yNU=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:40 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v12 03/17] dt-bindings: fix sifive plic compatible string
Date:   Fri, 15 Jan 2021 23:03:38 +0900
Message-Id: <20210115140352.146941-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow the compatible string of a Sifive plic node to specify only
"sifive,plic-1.0.0" without an additional required string specifying
the SoC implementing the IP block. With this change, the plic node of
RISC-V SoCs using a generic implementation of the plic without any SoC
specific tweak can be correctly defined.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../interrupt-controller/sifive,plic-1.0.0.yaml        | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index b9a61c9f7530..167418a0021a 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -41,9 +41,13 @@ maintainers:
 
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
+          - const: sifive,plic-1.0.0
 
   reg:
     maxItems: 1
-- 
2.29.2

