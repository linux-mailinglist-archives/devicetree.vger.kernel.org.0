Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA8A314EED
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:32:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbhBIMcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:32:36 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39118 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbhBIMcf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:32:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612873954; x=1644409954;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vo/OPIAjkDR1OdjdExr2oFWyf1l5b2KQ57/Uzl/0wR8=;
  b=gkL0W5QhWqCNbJP8BUX6WjLDHlpnXDk2m+DmsApt+Rk3oMpz8c/iOXIO
   tOdyKSg6P/g2Dd7yQ9L3QBdTxse4h4XtbC1QzFjaKPbD9QPhK8RWvpAgl
   Pqa9lPHJj0zyOE0UuBKehgO0sEOuBui1LYUhVcwXWRMl2dl5ah2pjxrkz
   0Wt84QXHxigWPTwLA4OADvBnQ4s5WQdh8MF1rTxqq7g4N349EvA6hUvQl
   i5iwCJlWb+cM/q8O35HIWzKC8/5gwnom3pAEPyR3KVRd1zhQtA//LTXVD
   Z0DmGeGLRcFmP6J+nLJtlxIjGVO5IzVTVABVA2wvNU91HVjWzJRgXrVd9
   g==;
IronPort-SDR: DknfOahNQQA+BhRuq60KlCSThPa4VAITJ2DFhj50EZEdAXn7+9FHhI/m+U+Nbeztb9mdhpaAmY
 BCoCclCKTnjLL34AZoR7pOC5XcvNlts/bmDRs7RgoJvn32y04HWZ+4KFuiXYFnCUO1HVHWHtW+
 i4s7Y4wfNc69WVEaknzmg4Xd2gkQqRE8inqj0Fy7CnslLySKwsnhg1f40BPghe1bBEs/OOm09i
 nF1oMlsl9DeXj+OA3YuBG58VE3fqyEKbBK81GNn/LQNeZfU2XVrIYsapQ273bkyJZIe/3udURX
 l7w=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996808"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:26 +0800
IronPort-SDR: WoGgQi9UcrFL9V+UT6QcdULulVO2L6ZNL4v4GI1Hk0waCNDneyMz3oqWCL3vIEmHBc2k9F7wSn
 Kvxme8Bp2zinYVBCrVrS6qJiuG5zFkr9ePl3VYQmWTVYBtEqoFUFN7aGxHkN4Q4Wd1/mBFIFku
 vRuefNWmt8D/bPYtnbjFJyOy7olbWYoTKJtjDEJfDdOZzSJFoO5dKk01/ILRxWOqm/9UI0X2L0
 ZJmX71pzntGPiidBS0dPglhmMR7B5zA5VkeBU9K3Gj6sESmcsvQCZCOoyjdtBtzpBuMXAT8uxr
 uH4HxJzNeJIOENR/zfr9IQm3
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:10 -0800
IronPort-SDR: cMmr6H2j9YehT9FwaFBGGz/CYFJi6MAaKnxJWQyGcxrq47/gMaasKj8n1RLjDQm2RllacyRmJj
 bsxl5wMPYmTXEySnWcqEBtsyqwXfpJJPBAWKS5xDc6FtGsV1JwYJbVAkPmmiw4upY6ni55bzDr
 8qjGeHTwwMNku7ePDQhoZyHzMcfd9tKgCbnAjKdqr4bth5cehStLn+i86d6ien0Bo5fj+DCIGK
 nXnZ87p1u/xF6UDRJ68LfPnf258f0D+JjzT9dlDfa75/l6o79+nbUs/VOgwhlQHXAfPSYgMWOA
 M9U=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:25 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 05/16] dt-bindings: update sifive clint compatible string
Date:   Tue,  9 Feb 2021 21:30:03 +0900
Message-Id: <20210209123014.165928-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/timer/sifive,clint.yaml      | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 2a0e9cd9fbcf..a35952f48742 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -23,15 +23,19 @@ description:
 properties:
   compatible:
     items:
-      - const: sifive,fu540-c000-clint
+      - enum:
+          - sifive,fu540-c000-clint
+          - canaan,k210-clint
       - const: sifive,clint0
 
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

