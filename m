Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B640E30DA71
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:01:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbhBCNBV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:01:21 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14163 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230380AbhBCNAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:00:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357808; x=1643893808;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=jwniwUcZLE8n7k+ni5KlYqSimijQG7AIhlKC+pOoIxU=;
  b=W2Wa4zo1JspuGQQdQIiokbhz/MIZdvOMZW18BOlvVbS2Yo+Y8ZBT9p3l
   vWigCkKF11bVF+tssbnDdv3vJe8DitqZPIpPL7qS8sIhvRcFnBu52dym+
   O56Q/m8NUyMBOo/eVvLdJBmtfxfOffW9FpsGW1yjpfsEjNoFAcZV5yGor
   kiMkylMstnMV1kUoQxfV1F65k461mMsnZK4UIN4dQmarEqZ86NIeBr+9N
   jKI3uVkqfbIuvGeOFomNbXPBSLunuDimlnx3p7FcMbwKaCMw+d9id820M
   wJqTDzzGrM7peEsJmB4a7zAl69QFTj88V8QoH+n8/rHgoKDLoGpkok9ZC
   Q==;
IronPort-SDR: hW4H7eFL0bL38sHxk2j3vUch/9G6UJFc8FuD52L0Op2eNHLObZ4qTSmOo6JDuNG+yzq0G+vJxl
 JkWz2U6+BUV8gj7Wiv3DrKSeuuw8gG08Ow0L8YhwJthqlZhY9uHn1QFKVfbar17KAi8C6Dj4L/
 x1bkcegeG0huBoM6xIfWt0gJ6Jr+8QHyj589TRiTes9PVBSyCy5o8teTU/CZdobsf000ntOJp8
 FC6pqVYwh0bcXvhp3eU+XZdCCNymHqn4rFsIz0zVGASXwnu/pQzCHh7BUPaf1bGqUcK3ooy4uN
 Rw4=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106925"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:29 +0800
IronPort-SDR: 6m4DoVc2MFb5kArK5zoYaJr2Dfoewq7b0gjc//Ydbe8ckmu0fzh4F3RFEyeaQu6tTbxRuwLgLd
 eRRdGXTof/HRNpjaq1jmgQwkrUE7qM1KAmGLDfT0A0sMBvls+u1GqHrMTIeKb+oDBac6MvubcH
 PHKI2JcuzeXedaNHnL1y9+rcevTTle5xBeNlFw5agPb/cCbH4t6x2ac/tpTpBNH9yju9vEALhw
 qpZWkvl4DX1yAruedWY3xP9F2dljDoSLF/V2r6/ofNVoH8VCc3S8cMgVJR5BKbDNO9AiOphw8e
 kxR+oOLJ7fZdNAXg2mZ/k1iY
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:45 -0800
IronPort-SDR: cVKvZiiYGu6DrrDlbkhYYpuoAzeqlUBJov9yz2p+7GMmDQCgGAfn8xDRfsTNWd0U1EL6IN0YcR
 /j1ssGHoE8O1A3pJglGnhBccX32N23cyFMzS4Asn/Zr2v9Vi1o9bkLZjFWiXj9vi278NqK7cjP
 fSiXjE+yuUH+Zki3QLukcLUE//FaBPr88wJcShxJomyNa1hkfkfY/yLdfonHP5w+dpAcBNdEHT
 lubfhrOTJTAgDraQWxkmKzAXoxbu0/8h9bXxsKowoD7GY8BUEKvpcp9KcqIaBZGRC7/yxoI/Q/
 D/k=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:43 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 03/16] dt-bindings: update risc-v cpu properties
Date:   Wed,  3 Feb 2021 21:59:00 +0900
Message-Id: <20210203125913.390949-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
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

