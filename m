Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99A886A02AA
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 07:05:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232935AbjBWGFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 01:05:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232846AbjBWGFw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 01:05:52 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD682E814
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 22:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677132350; x=1708668350;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=BWDn73LeQSd/KGYeXOTGPJXFcawDk2AGII4hVnWtcM8=;
  b=qNJxrj0w9IkMsnWRmw3aX6aH9BmngOt6hQC5DX2F9mSQGfgNDIiT0K5V
   py0yWbfIZz0ukA9Q0dx9vexajCynUPrG7UhM3nZ/jm76+WGvyj2RBYIre
   0msOSiSHomWS6Rl/HThpFPsbcO+KuisSJ3h9I9d8q5HAX/xV59HhJZbox
   hsRJ72R4pA3A5JT+d+6w9KGp1WbmZREiPkyYhZqbh+rfQLb7g/DxnS+GU
   MN44P6znAy1HxIBn/SqQgktMtx+n/8MfqMxZuQintS+OAYCHQ4Q7mV9wU
   DsHux7FGPykGQTjdQd+Pt1uHJ5PSKfebXG3AvMU4cEOk1WJ3eYdIXc+N3
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,320,1669071600"; 
   d="scan'208";a="29259872"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 23 Feb 2023 07:05:48 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 23 Feb 2023 07:05:48 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 23 Feb 2023 07:05:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677132348; x=1708668348;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=BWDn73LeQSd/KGYeXOTGPJXFcawDk2AGII4hVnWtcM8=;
  b=Gvfh0IYGgKIGXFlIovlfzThiQyeE3GD9Ag6pgQi81Vsn4tgrdOc0b/9m
   aHvHaXNM+GYGnoePaZWi7XLNc56NeQfzRlhIHZ6sUQnoeNBLp+K0G6UjT
   jBimhin5S768tDn7ABa5WeDo5ZeTHqN2L8dU4HAME/sN4NHpHEQgoCkFw
   DRtSxcFClp+Nsr1tzwIcuQHZs10l3Ph+scQ7XQ2dT9jVuczlO7a9qQnwP
   Mf30tm4iwalOI5f22S/HjF1OklZv96el2r2/xaZ/67j/RSQASiPZaOrO2
   h9RyLUI56So+OGt0lFt+xg50/AXLGZuZPPIEkTFJWRaDcJYUs6zCbgoqZ
   A==;
X-IronPort-AV: E=Sophos;i="5.97,320,1669071600"; 
   d="scan'208";a="29259871"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 23 Feb 2023 07:05:48 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0B3D8280056;
        Thu, 23 Feb 2023 07:05:48 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Clark Wang <xiaoning.wang@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        "David S . Miller" <davem@davemloft.net>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx93: Fix eqos properties
Date:   Thu, 23 Feb 2023 07:05:43 +0100
Message-Id: <20230223060543.2862661-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'macirq' is supposed to be listed first. Also only 'snps,clk-csr' is
listed in the bindings while 'clk_csr' is only supported for legacy
reasons. See commit 83936ea8d8ad2 ("net: stmmac: add a parse for new
property 'snps,clk-csr'")

Fixes: 1f4263ea6a4b ("arm64: dts: imx93: add eqos support")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 4c70089d419f2..13ea4bfb97c68 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -666,9 +666,9 @@ usdhc2: mmc@42860000 {
 			eqos: ethernet@428a0000 {
 				compatible = "nxp,imx93-dwmac-eqos", "snps,dwmac-5.10a";
 				reg = <0x428a0000 0x10000>;
-				interrupts = <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
-					     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "eth_wake_irq", "macirq";
+				interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "macirq", "eth_wake_irq";
 				clocks = <&clk IMX93_CLK_ENET_QOS_GATE>,
 					 <&clk IMX93_CLK_ENET_QOS_GATE>,
 					 <&clk IMX93_CLK_ENET_TIMER2>,
@@ -681,7 +681,7 @@ eqos: ethernet@428a0000 {
 							 <&clk IMX93_CLK_SYS_PLL_PFD0_DIV2>;
 				assigned-clock-rates = <100000000>, <250000000>;
 				intf_mode = <&wakeupmix_gpr 0x28>;
-				clk_csr = <0>;
+				snps,clk-csr = <0>;
 				status = "disabled";
 			};
 
-- 
2.34.1

