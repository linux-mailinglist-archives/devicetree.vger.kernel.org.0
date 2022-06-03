Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3FC553C706
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 10:40:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbiFCIkj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 04:40:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242760AbiFCIki (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 04:40:38 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4081A36E0E
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 01:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1654245635; x=1685781635;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=sO/+JqlL4xQIR0mRfbczInWsTC6NEFnc/DwOWJ7X2W8=;
  b=SDZTCC0b2WKMYWgxmJY/hC1JbIlSN/Tqd0yo0OmqbxGTomJZYr/v/A8H
   60f2X6WTftRUXkq3F/Z6jVNmy/3x/AWtoqAAUk1FRkCKsyj+gXc4gjQsa
   0c8UeRXlyMslCPRBz6GccEs7dyB7CgL2iYm5HxJVlebZ9xURTYvpiym/N
   xc1ks8biRqpHbA3257W5tKrToan4/AczMbmH389q9rb0BCsAgEAykXEjo
   q2ZqcrybLDqJ7r/u1gnFpHLe0i4USj+/rlOLaBaW6GGXcDycyCtefXdk4
   Nq6hK5svfFSwdx2n8c8YnjbDMKUmX5QD9GKk0aJ3Wb0Fjj/9CDlP4Y/dC
   w==;
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; 
   d="scan'208";a="98435059"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 03 Jun 2022 01:40:34 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 3 Jun 2022 01:40:34 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Fri, 3 Jun 2022 01:40:31 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        <zong.li@sifive.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
Subject: [PATCH] riscv: dts: microchip: re-add pdma to mpfs device tree
Date:   Fri, 3 Jun 2022 09:38:26 +0100
Message-ID: <20220603083825.1910300-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PolarFire SoC /does/ have a SiFive pdma, despite what I suggested as a
conflict resolution to Zong. Somehow the entry fell through the cracks
between versions of my dt patches, so re-add it with Zong's updated
compatible & dma-channels property.

Fixes: c5094f371008 ("riscv: dts: microchip: refactor icicle kit device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 8c3259134194..3095d08453a1 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -192,6 +192,15 @@ plic: interrupt-controller@c000000 {
 			riscv,ndev = <186>;
 		};
 
+		pdma: dma-controller@3000000 {
+			compatible = "sifive,fu540-c000-pdma", "sifive,pdma0";
+			reg = <0x0 0x3000000 0x0 0x8000>;
+			interrupt-parent = <&plic>;
+			interrupts = <5 6>, <7 8>, <9 10>, <11 12>;
+			dma-channels = <4>;
+			#dma-cells = <1>;
+		};
+
 		clkcfg: clkcfg@20002000 {
 			compatible = "microchip,mpfs-clkcfg";
 			reg = <0x0 0x20002000 0x0 0x1000>, <0x0 0x3E001000 0x0 0x1000>;
-- 
2.36.1

