Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4377B30BC2E
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbhBBKin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:38:43 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35924 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbhBBKih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:38:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262316; x=1643798316;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PieD+HEsZTf13C6UeofD+u83C3BRDKwXIiv/iI9JJO8=;
  b=VL8uFHdZHzecUgQTR+xLxdzJennV3c1EU19Zik0FLIi55LWlAaoPYzLl
   b5yBlzgWlr5Kjvnb35i/FptpdUMWGDltVUo6XdyhWUkuuwkPUH4OAea0C
   wL0YF3SSJrKqacOfadWP/ULaBI5RA4vSibXB1dpEI+Plfq4D84UOgUSY9
   reEIWqjb1+o5VrmdJu8Up+QL2RJD5wIgd2vpYbZeo9K3YGFx2NYHWpUyQ
   dxcyeGdfDUKTqsRn5zEBqeyHv7u9T5rDjxEDGZfGN3eR4ZwElcedj0wBL
   ZAPCNHxKmjzGnuOZkKnDvJhbgROLVVUIUGBcNUE3p8ITfOuFjtpwIvMDY
   w==;
IronPort-SDR: j+aoef3IWHJv3ei7/+TNUXQR7SgI+gfv+3omp3pS6U4u96EtFA9tU7G3vcZX1C41lsM4vhcjey
 PoUwylDo8FlZASiuyJitVL5iIAPMZDxFXa02H0/0Y8NWttzvM1bfJwWySeBDEnbkD+2Ri10wMH
 FZBCsE7ViztPdHHzWq//2zANOYJ7ntrJ2hqQA0eNDd8YpUql4JGtFH5xcbKyZfcQBS27Ql/jtd
 BRVRZpoXSL6d4j+dYCD/OVccUn97p0vAfx0HAFcEqhD2Anj8LgPm/6CWVnBemz1NlYSNI6VDvy
 k7k=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092492"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:47 +0800
IronPort-SDR: NZbnT0crwZZCp/Vbu4I9Jz50+2zgn7N4Q6LlnWb0U1MJmBOjXw2N59sjs91oT2q+/QzxEy8BD4
 HEJQdpMqjY3XmMfzkWTWJimQtfOR02Vjexzwiu4s1uCQkFa51P8K02pahWlxE10MbHOgmL4CtN
 M3AHpwPj/LLtVLKefVWe5V8T+1TjO8hNrtFXFVXWAzwjX4S+siEFsRa2KQTrsbOWDBPl9KYaBy
 0cVrWUO2eDyJtsKsgL1sFgrZ2rkFQ0L6vxqwc5FR8N/qPCW41qgiS1S1T9QqwQpz5CJtPf7QXh
 jd0tm2S94zIgVhQpfwyLptqC
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:20:55 -0800
IronPort-SDR: BLkIKIC3a29Bg7sjGi6Ofmo2O1dRw04DNi504and2Jd6+zNNqzDYZXzETC4XOyaiX67yr9Oawo
 ROr7FDU7cLeE+kZcbD1x+TXF75EASAUL35eFwYgqZBAOrY588SjIAoYL2o35xnWQPRkFeHcDXG
 UvIG5MJ9+ojwbCufPhXa0opFzT9I1ns8er+FFqFb90jCzPqCAAlB5GbqCJnLzWFSyElTRHYXhs
 p+5b/8hjZXfiJ+I88lE8Jn4zKePvim0jyqFlEXqGryxAFVTBaxQC9XtzAOpJEh/m0/e4PRWM6N
 /FU=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:46 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 05/16] dt-bindings: update sifive clint compatible string
Date:   Tue,  2 Feb 2021 19:36:12 +0900
Message-Id: <20210202103623.200809-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the "canaan,k210-clint" compatible string to the Sifive clint
bindings to indicate the use of the "sifive,clint0" IP block in the
Canaan Kendryte K210 SoC. The description of the compatible string
property is also updated to reflect this addition.

Cc: Anup Patel <anup.patel@wdc.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../bindings/timer/sifive,clint.yaml          | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 2a0e9cd9fbcf..1a7d582a208f 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -22,16 +22,23 @@ description:
 
 properties:
   compatible:
-    items:
-      - const: sifive,fu540-c000-clint
-      - const: sifive,clint0
+    oneOf:
+      - items:
+          - const: sifive,fu540-c000-clint
+          - const: sifive,clint0
+
+      - items:
+          - const: canaan,k210-clint
+          - const: sifive,clint0
 
     description:
-      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
+      Should be "<vendor>,<chip>-clint" and "sifive,clint<version>".
       Supported compatible strings are -
       "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
-      onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
-      CLINT v0 IP block with no chip integration tweaks.
+      onto the SiFive FU540 chip, "canaan,k210-clint" for the SiFive
+      CLINT v0 as integrated onto the Canaan Kendryte K210 chip, and
+      "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
+      integration tweaks.
       Please refer to sifive-blocks-ip-versioning.txt for details
 
   reg:
-- 
2.29.2

