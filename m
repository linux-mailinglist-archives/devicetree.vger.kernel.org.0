Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95D8A314EEA
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:31:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbhBIMba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:31:30 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39021 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhBIMb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:31:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612873888; x=1644409888;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6K57gJ4d4JJEae1PJW0yBIWM0fdObKVyG7NMETneATc=;
  b=TXHwRXvpG4ltWbqHvk/Cg+BXOvUhbvZ30ThczEzqH4vDfwv4fQsKZ/Zn
   FjRWz110Pjlvzo6RSicTnKala+JvrkGVR+cexjIwXanVqM09nQ6wg/fDl
   99HLLwTEtO4j3M+g99YBqkhAb5UwQHCZiFL7jIFJMx2NJVHgO753XI0mC
   ZX3T51Vy5yTAMh2XLU2bsMv/fBIdblX7WUo7sG7aZCaQKOp+nh9l/04Pl
   oUl7Hfd1/zbRJrsX1zvfpeTpD2woyf7R0VJ4TA6rPs8c4KIzQZ4dypJpZ
   2pdzVIlsw8EKKCncNJIduQWstn9w87dIrMk2nlWy7SyqMPZO2h+xDyXn8
   A==;
IronPort-SDR: T30T2FrFDz16oJRHhH3IcY8zkH+ec9DLnFFlvHMH3bh0X3bqs01KZZtJ47vXcK/uPb5tsoVwz6
 dec+1bhNQENQix9lXCOcGVu9dkNs7EPsATUaltE14Ewff1qTlrU5mOOSyssJkfV/b/USRUT6nI
 rMoPJqCKBq/KCoX+rVsy9M21bu+AKpGH3LrTIT/LDs1xdalYmNL1+Vl+6V0WE1vKlf3VoBQ7qt
 SBs6RBSp6loi30tM5jYDwvajPgfDXYzrj1aPNg7/Eeu0dNNqbdFShvGfsWgzD5woh0Pa1B7ccj
 /fQ=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996804"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:22 +0800
IronPort-SDR: 3k/NJqspALYOOAr6GabHo3wPhvuoiFPgZP+Asr6JodvFOOr+JciFsptufE7I1D/gtwnxbqpgrb
 trLc2dyXfQOlAuhm2/fbN/SIZ1L9J94NDsIm0rD7qRrKpU1kqNgHToRqVdBjYDoyFNa5MG+WqX
 +2Z4vW826lnkq5NrsXJ6CUgJTLAPLYOiZhGUtyFUfFD5rPFFVZMmi6iUxzUFSlVjGefuEbBqAT
 L2lW15ZYx+LNlccBQL2aOoKXgbbULwPTxYv9QRPBTsgCBA0TlUH43Zb9etdhayd17AgTNggLvA
 8l1excNkDIMYRKKZc9GfIrjC
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:07 -0800
IronPort-SDR: MQyDinRdhBof0TBzSa/ZG/iJFHUtLY0doAsDije0XaGZWciMyGH5/cORW0qEvTs8L7BatoGNBV
 pQiHsSW16XKkR2EoyGXY3gp/yrAIh2Y4SMkb4rilKGmYypm2kagnbJeiIUvIqLsvHof70ZfWgR
 1Vpcch7i5LHxJXuM+8XrM74AGueKNTU2fq0OMJ455h0kPJzfQBT9KKsQUr2s4dZh6PP/UyxhX0
 R+gbna/+JuuMBH/hXg2EAF9s9AH+yqsYWe8k7R6SYS2MpBCG6cFF8G7QuJA9kn1+VOqHr6zt8H
 i3E=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:22 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 03/16] dt-bindings: update risc-v cpu properties
Date:   Tue,  9 Feb 2021 21:30:01 +0900
Message-Id: <20210209123014.165928-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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

