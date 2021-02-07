Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EED3312815
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:15:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbhBGXPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:15:36 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:64368 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbhBGXPf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:15:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739755; x=1644275755;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NGUiJ8C+bTM58/VzIl1j0v+4iWOTF+8rASnEfXwaBo0=;
  b=YXvCPtr4yMLl4xVpkh9Q6yJlWJTixIyYTLp2tBNWkOhjxrf+n8TzRk2Q
   fahNne2fqNmnfk3eGQOmUHXdIz0HtgMYGpvGUUj2A6nJLotcHVSvwtaEL
   0/P8dx6mzKUiB0Wl3DapWSUqsuj1XouChe2qtagXDgIdesg95EQWVkmyP
   j2obmG/QcyYkYWyRM4RZtfNnuLlkcSS1mAnnVCHLOjV6ifO0PzBIQvzyK
   ND/u9p7I38neAOs5Rj8NkhozQwx4qVz8sUnoAaatBnlSiEybQ7RcYnlE5
   k7JkNF5F83xU7CcbZ30FglnRtPBf3FfuqKKiBJs1c8kXapGbmCLAGoU6j
   g==;
IronPort-SDR: m1bamfDeeyZfz1nX98EimG/NpJ9lCGRT5s/hGVitfFPu8q3piArpyVtvxOiBAFMy3uLAKwzusz
 XFbkUPAmAAl9BrfphUkJOmxnH7OHyNlDIUopkqCUkpj6svYgsTKWYOaPbhUiDzc/5spI6Geq3q
 mVV3EvL5/5JV8wEHRQq2q6cJ8ylZT23spg739qmRDPv1kC8NPAbnxXC84pTZPa2Fb5MbcQ8T1L
 kIUBgxJrhUqoM3Dt7TXsjFpl3yb8y2l60k2NG0VZXAzcwMlb7IxzlAGh7BHA0bc9aBBqyC2Mm0
 LvM=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503247"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:31 +0800
IronPort-SDR: SjipItvN586ZixEOykIVmMwZjv9Aa0IgpH9Pn85hBHb1Hc7dhAGHk4E4Zj19yWBhm+s+BZG+Lv
 ag64aKx5DRTiRMce4FxexwksC+ho0BQMjKamT3gqXGHiXEOTbvcl071JwitWw2BswMP8J2hPjU
 ldzRWzNuUC1/YQPfjE1afW/0ypxaylqdtfKpU5gTHdKPArNZ5Y1XC766sbu404gzsX2n0AtvR7
 p447dKMpaG6owqu4PlYV6yYhzYBc/Tve2MHuJ1imNL9ipxumpiO4ghmIrb7amgbbETEWlBjA6s
 B7ilOAApWw6h18CuYhwoxN6w
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:57:01 -0800
IronPort-SDR: XHHY8qAqUus4XDbOInV7na7FHby51DXVeI/QQvUGbg+HiRWwmBII0WTgNv6rHy9EEV2LLkFq+1
 veFL4igoAQVkKCsGFSOkhxNdG6y8ba6knVfEtzR/DzkADOuaA1XAAhwjsGsDx77sVw7Bb7RX9p
 DjKremtY01tdHYwpKFGufJMdUBE/fu6SOaQwT1tacR2akyeBpp6RiCo+FDxWNBqsf8w/uRCItr
 y9YfeQ1Vqgxps4HimSiUk+TqV2uobwOKgk+VF32rpLnrWOcUKQJMhsZfOf1cFEg4qrUp3SHJ6o
 xNw=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:07 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 04/16] dt-bindings: update sifive plic compatible string
Date:   Mon,  8 Feb 2021 08:12:44 +0900
Message-Id: <20210207231256.115130-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
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

