Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFC2E2F7DB0
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729384AbhAOOG2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:06:28 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1772 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbhAOOG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:06:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719589; x=1642255589;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0gydr514UdHfaLZyMWZlPzEDnEe7NJxvNWRTRtcTWlQ=;
  b=Hm67ImCNHvNLpzLlVQCWhB+6zl8rSz9WUsqP3fE38+dcLytA5pDnnZKP
   crc/j/xVHQ1T312JORhGew1Hnm8LlQqXBHUiQnWPhe/BRhpudUUbS2o6A
   PasK3VHqRHbf9IAIEP7TnmHcVcGj+TtrWECL00YY90k+Z5TS8e53HFqpN
   u4AlVSxRvvJB2GmGwg9RWIVq0XpqvFDPC2rZd86Wcn2l1/K6hAJc4sMb6
   RNS5sNfmAdmUWIC4CmF0UAJAAbMTDyy8MCdBE/OxXGCF1xcZ5N/Hy4dm9
   3DIgzu/f0MgdpuxEGYqPzPxt75fPC60ZJuNWTAMAGi4luCn4ATSrKv+Ro
   Q==;
IronPort-SDR: XJA864xaevv5tsqn1IMK7XyVQqumBSMYJFZy8zhmg4kXjZ8vbq4Pxe0eig5o1003SKwy87jXlh
 3CFlh16HRn/IYAzxOi80ZD3aRCRp4jmYsRB7O2VftQRojR6l+xAq65OedzxDy/D5hzXNEdLMPZ
 e9IDEqtY+yPt+X3WSdSEFaRyCmtVEpcBGS5I03/oUtCNgKq2JxBRM2NupcZhCfltfdvOiEJv17
 pdW8rJRlJJO3MuFVzg7NOfBo4M3jW/3YQd75gnw2J/R1H3Gow9hhF45Tw1OHeLbO/bW6tyKASu
 9xs=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693656"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:47 +0800
IronPort-SDR: tf/fZfKQQ7dDe+diNQVRthjAX2Z6XUfV/KSS+GVIp3NHfnDIKkwqO52kmkdlOT6XX5xX9zULKS
 SJYbRdf+fY5CDAhmXdLO7Qt9KezVGFb9KIwNGTZO/IR6Tu5/c4TtFaqN9idUkxPmaPDVJA7d9D
 IM/VntJGV0hsPlTWWF2VlN77dmKqjHusLP/uDWsesO0ocK3GTnlEv43Ofy/8IfGKG9LX26ozEy
 AY0k2yCmGKxfxeUr0Q11Et98QphNKRhNIdlr8Bbn5dBoPoETRCfe4URJs7AcEjKTvFI/QEt2uV
 JFnH87LWtjnatbM0EiWr6rIG
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:28 -0800
IronPort-SDR: sfbO9Hl3NbtP06FM9vFhxxWYbPbnhsLD6vbTWtQYPKLZp/V3Eg+5Ck5uQjf3w7e1MwD91XpEy2
 m6s8/sYAhKD1j74L94lYXg7z4ljN+zvNsZc3I9BSv+4V4KYFfMMgXoFkfXg7CSfZQFoqxiSQ6F
 tpIM8S5qeVrMkm/+V0PbJjyBraILXmaexm9e/XKQiuFHVQsA3WpkT0VmXFYlx1EaUAZ10bhWjx
 LDU5o7Mi/UjyOkk68tFhMf6jDS2Y7E+TxnFOfsX2ef3/HvFTyepd0z6bL4tw3rzvNfC7wivLrl
 jeY=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:46 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v12 07/17] dt-bindings: update risc-v cpu properties
Date:   Fri, 15 Jan 2021 23:03:42 +0900
Message-Id: <20210115140352.146941-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Canaan Kendryte K210 SoC CPU cores are based on a rocket chip
version using a draft verion of the RISC-V ISA specifications. To avoid
any confusion with CPU cores using stable specifications, add the
compatible string "canaan,k210" for this SoC CPU cores.

Also add the "riscv,none" value to the mmu-type property to allow a DT
to indicate that the CPU being described does not have an MMU or that
it has an MMU that is not usable (which is the case for the K210 SoC).

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index eb6843f69f7c..e534f6a7cfa1 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -39,6 +39,7 @@ properties:
               - sifive,u74
               - sifive,u5
               - sifive,u7
+              - canaan,k210
           - const: riscv
       - const: riscv    # Simulator only
     description:
@@ -56,6 +57,7 @@ properties:
       - riscv,sv32
       - riscv,sv39
       - riscv,sv48
+      - riscv,none
 
   riscv,isa:
     description:
-- 
2.29.2

