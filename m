Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26A1930DA7A
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:03:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbhBCNCD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:02:03 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14157 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231449AbhBCNB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:01:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357908; x=1643893908;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PM7gAVPPOPJE8psIKumgDdsYrcLYZwGhuiJjB6JnJKs=;
  b=LpTGzpx+DT8qUBaFE34QjYC0ydQcmpMalCwBtjg/Mnr0BR9HvCrTI9fn
   v3a6JvK3ItA5J01KSPySIEqE0iHYzSFNv2wjcdsAbliKeLjDRv4zKerwA
   F8A/73dHNTLzgpZ3ZjFvMoQTZJrWkVoj986rF03v8adtZZzfRoDmiF8zn
   rXXq0ArIt1AO74iTEhQyDgOzu+hhgTCTJTXZ9xIFrJzel1kE9RX13eIPr
   o4poHB7yNrR0SVXyCKqJ1pby+S+wC1Cf5EuTb4+dX3uUf+WlYGrcz0H3r
   Xh+z6coI5kfZ+ZouQYCu2xxOLdBry76ZP1GNPD+ODq90V36OdEP4Z7qCU
   Q==;
IronPort-SDR: 0z5VNDzKiyb9UWWbdsupvlmobIP8IvFfCLU91JlhV0PpSthKy9qK7LEKpZFL6/QOsoiPTms6TY
 l5vbLgniMQczbuH4ZUoWWXH6WeDlvZ9uKCKJnt4haFk7WVaJVpuiXfdcb4xITK+PjqU07qVD6+
 rP1eT4NQAP/nfbPJEZ+ZDekXqBFOUvaLW9KiSvB2TBwe/EyjNzP5adtpv7Ho42UMUtML5TOmdX
 ptQItBKR6rRLjJHS/N1GXRw5+Yh+MjFgTWcSRFQuIRTSZXcfISqVZKrUZwRZzY6Tyfoom213DN
 AQA=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106934"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:34 +0800
IronPort-SDR: ZVB4Oc78h9K0OC07ZUnI25YdoPjUdfugX8wHqe8B25h9PQhYR2/BXhMIdYd7g4UKNYJHd2M+9/
 s51NiVCiOYxeFWa+VPfuhdCuKK1NxdFW/mPKy258qLNPRTta7zZHXVuv4ijAcDiTI8T2BoXSFM
 Uu95iJzaFtmgpQvhOwrOx2IHYSboouaWqm1Rc8bbuYp9YAM9sC5BKd1nwZhxTwFChEZaVhlORH
 gm+gRlL/Hv3C7V2isl20weFIRkxR4oi/EeVZtXlolk+cxaRD3vn70UmB9EwW99bkuoSy4N4lfE
 YeNpBgx16LJSdAM9Pa4DS9RI
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:48 -0800
IronPort-SDR: biTLdoxmtiV/VDj4H0HxNOSpdbTrE8AocVsKBQRR0nJQNMpjFP3XU0YO7qusZCwk1wGALDTLi9
 BhEd6OPJkngaxKMcpZ5XXSZJ44Q3CX2B7vzNW8DuVn7g3tpFl5aGr3ezAtag004yI0IuDnv7tu
 G8aaOhR+Hlp1+VBJri/Hff2sDrK9pWq1PmthZYwenJTck+6ka0toujuQDmWnNiT7VvRtqQS02T
 /dwGgO+gwnCir66Vw2+KAHsmr4XbJljiWeVmSreG1wFg1Iuw1uzQuffg99t/oWkVNGR9YV/wbd
 nAk=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:46 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 05/16] dt-bindings: update sifive clint compatible string
Date:   Wed,  3 Feb 2021 21:59:02 +0900
Message-Id: <20210203125913.390949-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
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
Reviewed-by: Atish Patra <atish.patra@wdc.com>
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

