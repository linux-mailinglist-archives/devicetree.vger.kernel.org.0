Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15E92312814
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:15:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbhBGXPT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:15:19 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:1047 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbhBGXPS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:15:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739730; x=1644275730;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6K57gJ4d4JJEae1PJW0yBIWM0fdObKVyG7NMETneATc=;
  b=oD+RIL1bfmjAwCuVWOhcb+OSUrfW5h55FMOjk1RhLFQ0bb+FnsL2yUBH
   se7WkJNA6uf+htXOVTxsFbETEWM/4sFoyZ0ti6eAlLhr4UB5ntIJO97ph
   m4uH5RT+UEIIPUqd8LBeO+71yECfP3Z1USQ//7qjcqZAwAbx733OcEJ3r
   RuaUS8L0BuYjIboLwcYvTA4VCXakwC0RTJrxF1tjYvY1UX5SyV9PG/cIt
   N/u+F0vdsxrOQTaEslKJjwKZ+z/7u1Uv+uJ0hPwJG2GEkMELkxXXOiFBR
   z1hnQlSXmHXB+GnqrVXh/6+YLhXO6lifK24sfVL5kjkmFOwNGdJ4ztec8
   Q==;
IronPort-SDR: dymqyBjr2fzJC4CsEzDagWg3mbCwZyvSmk6cvUArEvtqV845JY4F0TBaBTGfubNTE0Cd1kp1az
 f0lKk1w4RfE7no2RFOkkK4v6Lpw4e4xOu8XdDZ+LD6psShAbYKivscXMbIf2iLPMSipUr5RTTZ
 4oPd816MJB5Te7BHtgzwtf2sCBsNHQz7qO0J421sj9nvSK1sChUJ9cc+ky68AWVKSIBpdEp473
 gICHCcSRGrUsAsvWG6VqWZySSP3FSUKuuMV63HChscDD8/EG2pUSmyc0hPpc5iljj4fxZTAZUp
 nEU=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503244"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:28 +0800
IronPort-SDR: z8EUlrI99NAYdkUttR5AYXWWG3XOJjrUt77dhr28307kZ4ALaDXGecvbcRRq5Xs/gwGK/vdfMr
 6apFbbWnztFwDeQ4jlD+X+ysVZSVBwvfTQqxCOF3ARGcVbXTcWWAKAxDTcXaPNsaqMt15RdqCx
 B4+Yq1N3yExueSB9ca9/C85pkmfBhBR6A+atZcDam8G1r4Pfdgts+E/pAZ3+B2yuyHu7NyWOPC
 EMHnsw9en+tAltCo26vFBgnRwDHCllp3e67q3SKrLR7hOk39xMZQxZyVtjUscRj0WuEeq2OHaj
 EcM64+DKS8OlnutBLuEv4JqM
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:56:59 -0800
IronPort-SDR: GZpnlkHSqUSIz1nLJHVnoFn/yP2F6QQ0+fdh5vknXlqFx0EVk+X7bc+1aj6Kjv7exdCVpJK3Pc
 9jik/n472IR6V2Gru/35ssynQ9utMmEvzTCEeWayRBpEpGfOirFxEeHaaaOh8hNHbvZHF2fK01
 VZQK4+qcE1uh8SbWJHmhwgtJyHKiVuKzVBBPPD4NMMIa9KPdLLeomsJ0jj2CmaTkHlVqcLoTcv
 27hh6HrIdOs8IQ5Gw+hxHn8+1SOwjSBEycDhuxZYK13C21renIOPr0YQJIRsyiZL2MvtwHlUCJ
 CEs=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:05 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 03/16] dt-bindings: update risc-v cpu properties
Date:   Mon,  8 Feb 2021 08:12:43 +0900
Message-Id: <20210207231256.115130-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
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
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Rob Herring <robh@kernel.org>
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

