Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE605314EEC
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:32:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbhBIMcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:32:12 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39021 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbhBIMcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:32:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612873929; x=1644409929;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NGUiJ8C+bTM58/VzIl1j0v+4iWOTF+8rASnEfXwaBo0=;
  b=Xcl2MBHuEQSkyGIOvGxi26xI5NmhbgR2b0+thcB48eBABzgEe82tKAqE
   /YMplhTM0qhu5+TlLXzQemUlLoOsLMqjQwMXH3lXG6Aw44wiiQeAyWp9o
   WRSDdMq15MOqXc8BYe4/u1tWhcMiaDb3B5R8yzZ2fegWIZfYKFLHhBjm+
   y2bLxyhrsVa9Pd72s1l9/OMNuLzqal9T3ZurhYIS1ZFernt6zywtaMRIw
   vCVnwgQnu/kMh0xFtis8dNucXOAui8MlIfQcgp7LDFoUW215d2Bae5Tan
   aRks21Va2GmctUMyiNcfpWvPU3J81AWHCY2XjEoeU7FhuuoknRust2sHN
   w==;
IronPort-SDR: uPU4cSPHC7Ibot9EVNAgFMEP3zU9RaTYWcsSJ7+JXxRZOXiLEkV1KIHAe8qNkZqUqmqAhUXmla
 T9v3uNWCxSY+g6gQcMeQmYo4Q3kYbRTpYrwp1q98YdRsjpf1HudxlawbRtmboUHyPLV6L98dUB
 gsJ/834SaMJMXks4L3JHXiCRIrZDl9QSYpGneo8Xsv5puZ7KB2peo6L3w4ERDmdTZViZHEzgEN
 /PmQrdgXdnXg/B1OJ9xC1h2hOdHqUJebojmkfpkGZzN3AyOs6QfyhUhtQ22/IrRtBtkmT7pKkE
 LK0=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996806"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:24 +0800
IronPort-SDR: otd083aP3ggRY+oGKsNl06I4Craitd09bVowz3srgoT/oyFuMnU1goM68XXO7E/KjoG29f1n3s
 rpOgGG0GC9oKrUCeu0NkyUApAWmm4IHKwlgxlKz22Kl62TurQipVUnG3yU2SPmqx+DiesoSP+e
 rDru/hPz0D62Hitc2YSD9KXRo1k7RivnBDbvu5BIE8LmEz/Iib2m5N0gTAMtUHXoRxUlEprYTL
 XgbjZM/5DKDQVAgRVR2wZNvy7uVdtqK9p42krgpRFHuRCXtU54SkZlOFTF3SCJ+sPFpNonV66L
 KGRnLUxX+UxRam5ydXj/nUoj
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:09 -0800
IronPort-SDR: tVpNS3b5HttM+gO4JgIkVgnoba0hYx90quy4/NNyq9c/v+AM+MNv8pvaTqGs4Ddevvit0ObYvx
 DQiJF+KtJgZRy4tLAh+zF3M7YzziIMADUcu/nZ6fZy5lXYjG2qWqcmjPETvAv6ASQce2tHI2JQ
 gOx5k/tfTcuCcTjVGdHu0+KEkx1SqegXfmidkPrwHvBlJg+B7SW+R2FcquYC+kqomSdOQBLfL0
 FhKqBy0EQu9wH91VcsEZ9WMHF6zAZBh2E3ef2gVAPsOyzWVVnsHBjshLhPcGp9UFoPHekqV8sn
 +is=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:24 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 04/16] dt-bindings: update sifive plic compatible string
Date:   Tue,  9 Feb 2021 21:30:02 +0900
Message-Id: <20210209123014.165928-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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

