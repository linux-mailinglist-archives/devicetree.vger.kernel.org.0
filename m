Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58A6F2F7DB1
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731075AbhAOOGb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:06:31 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1776 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbhAOOGb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:06:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719591; x=1642255591;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=EtL2qzwmDcnW1fQU2frLeb46tiz62PjL2rf0Kz9/lC8=;
  b=Q/7wj1Dukp80GDH2jM2fsQ4ldBAj15h/Aamm0BZvnrfWGh/AdpcoO4yl
   Qe0lsm4LkZ+nYFuwa0wzJV5slp91Ctynf55BwfQNqT2I0yeOdSgz8o1Vp
   xLtQdziF18Uxv6GxtHwshU/TSKZ/q6N5+3CwP+zmGWlf1yA4e+mmQzrxl
   P5xxrlpCgqQdMlW9qDGVMvjSarYkphZN1VFtM4H0KfenCFdSDwTm9aUVy
   c0h227LgHvgz2+WlQRKnhkHlxjySlui2nXI1WIsme02cmWfMt91ELkq8q
   IgfDzM4vEskSq81frPxrmVVu8vNGeDiQ63s+NL3zlmjwC8pH/VlrwhixR
   g==;
IronPort-SDR: 3jG/0FOz+BwnLbr6PqB7QxnGBACdfBPvORpVnCMZ/ZbLaFPgHTsfcOnOQ4aI9HOFR5U/kCy/N1
 k1l3hm5iUsPkT0yymoHzUVZVKLbfoi+3yItCi1J9m/y4q54Ue6mUcpF/5gegZ4nlRV9/QsdYJE
 2Zhxx1q2ZB0LakusTRzJFiQ3jCblbce8zloETRN1VKDJX3HuB91olTZaSAZcNfCFFpPU9VpKY6
 TpR2ygF7CdT95QB7TroURPVQR6KLT6pTUc4JTQat801QNq9FWAG5BVgGnSNjdxbmW19VbgRj2X
 TBE=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693661"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:49 +0800
IronPort-SDR: DbsO85ryw+4pMeRVm0rbjm81SrJsAFsK/OTydcUzQTbw1DrAGuBByKNKtMrpSAiEr32OZ5Tmu9
 722CB6gVNPGlpdecoC8IYFTWXBvfEX4L9raw9fpaeLgHHVq9elEq5nArnE9XAMXbcTNGWmYoo3
 pKDQAgsT+F4n8ibUPW3tVyyO8Modb/02xhe6iaMBKBTHaZw5SlrdaV4vQER/u+5/2kT4WXKE0M
 6+LfIkWyaOavZ/oVRWkiwc5ml12Uk3Hl2H9ThaKTIXPB17weZfGVpHxuaY+9L8WlxBkNMLzPI+
 9h/Quw+uMLH4YgvH1Odyb+5n
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:30 -0800
IronPort-SDR: JC5ud1Aie5s5GBUGPKB/4k1MQtXjjQf7M952OQjx03uRNLt+E5iO5tqDsoCi7OCT87qba+eyUp
 Cfug/866HQFAlEFwNvHGaGgU1ZIcile0z9jt/VzR0MujlG1hELIuLPzCZ9C27pjx/CTf/iNcoE
 EBHQCeWBN3AxnKpi27AP58PzwoOHF0Etb4WzWJ7yhxcPCQMRXhkxaOq7ZYxmRGtgG9iVJplplC
 DeridHx9Jfbwq3u/liz3g2bBJO416LxNUbpf7605bGf7PJN/FWReeJ3ld3K2c4J+DZzhXJ5C5f
 PtY=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:47 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>, Anup Patel <anup.patel@wdc.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v12 08/17] dt-bindings: fix sifive clint compatible string
Date:   Fri, 15 Jan 2021 23:03:43 +0900
Message-Id: <20210115140352.146941-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the Sifive clint compatible string definition to make the value
"sifive,fu540-c000-clint" optional, allowing a DT to specify only
"sifive,clint0" for its generic implementation without any tweak.
With this change, a Sifive clint node can now be defined as explained
in the compatible string description.

Cc: Anup Patel <anup.patel@wdc.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../devicetree/bindings/timer/sifive,clint.yaml          | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 2a0e9cd9fbcf..c6b1f37a2949 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -22,12 +22,13 @@ description:
 
 properties:
   compatible:
-    items:
-      - const: sifive,fu540-c000-clint
-      - const: sifive,clint0
+    oneOf:
+      - items:
+          - enum:
+              - sifive,fu540-c000-clint
+              - sifive,clint0
 
     description:
-      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
       Supported compatible strings are -
       "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
       onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
-- 
2.29.2

