Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A7C35BE22F
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 11:38:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbiITJiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 05:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbiITJiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 05:38:10 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3CFA6A4A8
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 02:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1663666688; x=1695202688;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=0eMZLKNdqVAlK3K8F04y5fR6MSFQdN2D0EBwXRCwQ9A=;
  b=oU1rwtxpV4UmCMSRl0TSkAoGDyM5EkB21mPoMUehffY1Kp51HpLbGORe
   9K5cw9BhyoV4TvFcs0bNB/9x5LQvB2mIRJ6+hhWphtkZwmK/N54fXw7Bl
   0Ra889OY8Nf+ysSVopiETivL67Tc44Qnj8jYm3cokRKj+vQEBTEnk0l8N
   FjLXF9WQldghX9rIjq4hLNUUbD59DGnqNwh65UH2a5OjKyG2nDuj8TxQZ
   iOAzjQyELFR4vtsEmH8GWnpqe63ZqLwl3CqwjzkSO6unBUwf5LFoQZWt1
   9JYMflJf43IR/CN6OAXno5wcYIHd+8vRJ+gLhHkoqP5sMfyfTawsYAOoo
   g==;
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; 
   d="scan'208";a="114516346"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 20 Sep 2022 02:38:07 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Tue, 20 Sep 2022 02:38:06 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.12 via Frontend
 Transport; Tue, 20 Sep 2022 02:38:05 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
CC:     Hugh Breslin <hugh.breslin@microchip.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH] riscv: dts: microchip: fix fabric i2c reg size
Date:   Tue, 20 Sep 2022 10:37:35 +0100
Message-ID: <20220920093734.29287-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The size of the reg should've been changed when the address was changed,
but obviously I forgot to do so.

Fixes: 7f3be227e818 ("riscv: dts: microchip: icicle: re-jig fabric peripheral addresses")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
index c196bbfc0c24..917ed4c7b18f 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
@@ -17,7 +17,7 @@ core_pwm0: pwm@40000000 {
 
 	i2c2: i2c@40000200 {
 		compatible = "microchip,corei2c-rtl-v7";
-		reg = <0x0 0x40000200 0x0 0x1000>;
+		reg = <0x0 0x40000200 0x0 0x100>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		clocks = <&ccc_nw CLK_CCC_PLL0_OUT3>;
-- 
2.37.3

