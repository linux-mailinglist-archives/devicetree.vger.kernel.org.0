Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72FC82F9792
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:06:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730925AbhARCFT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:05:19 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:23242 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730866AbhARCFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:05:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935518; x=1642471518;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PieD+HEsZTf13C6UeofD+u83C3BRDKwXIiv/iI9JJO8=;
  b=r8l0WiYHEUFnVRnTHq6Dvl47ZFi7b444OjNMItzaSVJfVLVAs4hxz1Tb
   kkmKxFo8tgwuzGXvHi89qHFRXfiVF3o5Qc1jkSx/UMsHi9TEnLv2E/1wT
   XV4jcfjwr9Zzvxk33UcCnbBoTbaBidI8puvWzkGK0FDRKisPI9bsRbjX3
   QIYHU/QGO4VklIx9wIBEENkCgiU7ixK1zD50FbbYWdDE3EMkc+5cOFMP/
   xHO85ZmUWSplMu4HWtiVVW5jbMHf9TOa653PbvrnLcC1eTl5GUZx9xYTw
   8kf+7OW7MpzPdlt6PJP7pBn6pUjWrkIZYF3MwGpjt9Lq3ABjfCinGLsQa
   A==;
IronPort-SDR: t2FK/Tpnqd4eo1LNAY2rNynQI5FtgWZ9YpdO8yRWfUtw9o0K3cl809KYjDEEee70JcsJL5F39P
 yRPXZvlO0goZsE/y57GaB41MTSApOlHAx1R2MMLCawYOoqHoFTEYQJGfAfwAPjrf8kB7LYSOTI
 VEuTTOPHJWyP2u+5RcMRn42kXKAGcJ7nOzNGBQcKb/PgGZPmAvMxF384n2ljVpnzYVo//d/cCl
 kCXYb94kpUaK8GqhhTDhGvfPktezGulyemxrXvdyij1kK73eFCVsHrsXoXNCArXOk0C8muZeJV
 1c4=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840871"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:08 +0800
IronPort-SDR: La2YSdPjhKFZhcVtSvqHbrvL43HTLZAbkhsK+bOhx7gjAoL7J5If+xvZjNtxd5zjJSVYLUFlGE
 Ro7PcV/zJ5ZHvdqn0fPSZFgKg3Eg7tZ+xPqmgmYcsfe2hVdtCMt42EK2ciKoSAGONrVHrgJ0qH
 0RDQicNrpXOK4bei3BFlk5MW9pOO0aYWE5nTtK2v1o0o/rAy7MaoZ9Gfsqd2T0PzCYi8BrzY6P
 bZOs+coukozOTTpSOeMfIIH3hCvaug23Tf/cKBJA0iaRLLrvLF8skaeOtJnnOIdd4uGDTWaEXq
 vfwHzoJClEsaK/U3VO176CHy
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:46 -0800
IronPort-SDR: +eewbUvStbtrd8VXQzuiJPmiWKzWwEw52/p1fgyMiGX5Ftfm5zNefsSgZQd27X//NLaHmeGQ1p
 Z6410CvTIOqoKBLWCT6EvptSZw2sL8SgsuLUCfu4LdVh0kmWmn0K2h1oFnkNZpfA7wAY0/qTbt
 gXNQFu/e/t8rQ5V/pRT8VLdkdRLXiPlZ64BWLc/5gz41sTbr2A31ttb6lYd8wqKI8FdJ5DJD7r
 N0OsCBUDgqsOqkDqYQvDTNygC9a46IzIfgc4B6at90E5L9l0MwKCeeR8lj6yh6sQNntNabDJjD
 YlI=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:07 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>, Anup Patel <anup.patel@wdc.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v13 06/17] dt-bindings: update sifive clint compatible string
Date:   Mon, 18 Jan 2021 11:02:33 +0900
Message-Id: <20210118020244.103451-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

