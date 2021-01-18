Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C2392F978F
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:04:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730897AbhARCEw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:04:52 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:17309 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730175AbhARCEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:04:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935491; x=1642471491;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0gydr514UdHfaLZyMWZlPzEDnEe7NJxvNWRTRtcTWlQ=;
  b=NgAtTA7KdhBFgkw8y12OOmMSoknyWvNXKeBOP5IfCIq3QvJuxvJM4vz5
   ET/wdeJAm438oR8Qx3wzOQ01NZ8UmoQ5/5wZUZBDu/3YOu4nRPlIIllBp
   4P6EXaX4EBBuSyW4+SH7NoWH3P1lh6Ai1eyoqQN0jw7Xs4bUad6dMlNU4
   i0dYABdsqkgg/fvr+h/ud3swmoqKdPy3NEpFTu+FCMxuIbd1o3pp13T+q
   mHL/T+0hmRbygZKvCysChwRzHiHHp2QDBS/NGcDLWhv9eYlHC6lRLsIvM
   l8/uhbWv1hCViDizA+ZFd9/bhNGiJEN4owLfXwxlxHzw0P4XMSmy4UnCX
   g==;
IronPort-SDR: wxDeh9mva7nLToqAJJ9pMaobOPOfGQxqiY0yFAan6D9dmZ/X4Zh1S4gHXJRWGMGF3kZwXeCcad
 9xehUcgyrhaXTZYVSdBX8dtxnosIshXy04QOrSXSjPcpw3x9334sovVSbcX3LwSR/B0hCFIf7t
 KbDOyA45TGsZ/d8UQ4FoPbE+3Ldmx4YVo3l1P6Hn6Xim5SYkEsbiSuAw9F0+5wDxCgqaUETqP1
 sRMDnP+OHijBsLyCGBGEH6U6aHvopNrcgWy/0pbVOASKLwHGGDE64R1ssFUf7+9uafSw6xXUaI
 KGY=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840859"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:04 +0800
IronPort-SDR: X/rBmh52+ri+yrP7MqwZY9XRSc3QWHgWmh+7m/bM0gvOKwUB/xaw7zzc/k0QjF95ec1/Qgdya8
 zjQ6c/chCuIcs0yJ9a5T8V6yC85/9m/kPsArCNGskJXwwlciTwJW9/svyM+jReAX0/3gtRCnwH
 iz0cAjjsx9COHMt7vwnd7HYHRPcJp3oOtDlBViaVhmnFIkDGUDgaUfPGlZabVQiAaQy3v1cDqq
 NqhInma0alRpFGn9Dipa0a4mrbic/RqD8Rq0L7Z365/RH1DlmKRU31y75KsnYzhcBdj+ipqT6q
 i7T+dbfFgv+qqaibtXDHCJTK
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:42 -0800
IronPort-SDR: ppN5KI0KQdC3mGewT3XHqaxtTQ9UjFrZe3c8k4kBhLPXO2RbJ2mDjoafqK1n/Q+Jh0hNZKoei3
 z2OK+emUUm+fdHL/8pmmyKuMZTaWUGQZ8X2n/Du/dc8cI/wdshFjBtcAOMN+q9RalNMLTOmI4e
 zX8BlcPFVq4AuQuwqP4ES1i6DLIyVQE7My6B6wExOGiAp40ABrTo//q3BeKyKP/PishQKWN0oc
 iZeJcUQ1412+1C4y2AKK5WJfOvW1wSrBCuqSJZ2PoypostktPuHK5UJSjGlB9DM51oFViSscHo
 6+M=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:03 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v13 04/17] dt-bindings: update risc-v cpu properties
Date:   Mon, 18 Jan 2021 11:02:31 +0900
Message-Id: <20210118020244.103451-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

