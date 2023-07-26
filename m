Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF08C763490
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 13:11:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbjGZLLK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 07:11:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231778AbjGZLLJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 07:11:09 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE639B
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 04:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690369867; x=1721905867;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=M53AFQDSQFZef/yuEHh1ksXtyIs4LSAZ7lcJMNw4uas=;
  b=dczffcsoAx+ysIvGw47YpuPuD0HpnTViwMbj9jHK4jbi71pOIH9xUnWr
   bsI5Qptz+77yIUj2LLRKrkQS5aaJp1Vym14B5ntbaPfAW4jZCWDA5m4bm
   CN4HssuLpUAZRx3ekT4+HuS83pyiqpz8eWymyIfyfkTkIH24GkQWIbRfJ
   Rc2BWkgZMytESFHuM/bX7yFROsPc9XDqCfGkMPPU6qutJngeyWX/4UptS
   bcuAbzMtRwH2iZCO75ftzKiAEcUhqddoaTxe4KxM4hrBKbhFudpkLoJQn
   3Tbhf9ABv2MO6rCmh/QLTq4Xx6EsVz1AqdX4cWAS58bc6zXNfC8SAshCc
   g==;
X-IronPort-AV: E=Sophos;i="6.01,231,1684792800"; 
   d="scan'208";a="32128491"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Jul 2023 13:11:05 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E0DB6280075;
        Wed, 26 Jul 2023 13:11:04 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx93: Fix LPUART compatible list
Date:   Wed, 26 Jul 2023 13:11:01 +0200
Message-Id: <20230726111101.4169847-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible list for imx93 LPUART does not include imx8ulp-lpuart
variant. Drop it according to bindings.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This fixes warnings like:
arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dtb: serial@44390000: compatible: 'oneOf' conditional failed, one must be fixed:
        ['fsl,imx93-lpuart', 'fsl,imx8ulp-lpuart', 'fsl,imx7ulp-lpuart'] is too long
        'fsl,imx93-lpuart' is not one of ['fsl,vf610-lpuart', 'fsl,ls1021a-lpuart', 'fsl,ls1028a-lpuart', 'fsl,imx7ulp-lpuart', 'fsl,imx8qxp-lpuart', 'fsl,imxrt1050-lpuart']
        'fsl,imx93-lpuart' is not one of ['fsl,imx8qm-lpuart', 'fsl,imx8dxl-lpuart']
        'fsl,imxrt1050-lpuart' was expected
        'fsl,imx7ulp-lpuart' was expected
        'fsl,imx8qxp-lpuart' was expected
        'fsl,imxrt1170-lpuart' was expected
        from schema $id: http://devicetree.org/schemas/serial/fsl-lpuart.yaml#
arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dtb: serial@44390000: Unevaluated properties are not allowed ('compatible' was unexpected)
        from schema $id: http://devicetree.org/schemas/serial/fsl-lpuart.yaml#

 arch/arm64/boot/dts/freescale/imx93.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 4ec9df78f2050..5ba92c9be78ba 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -291,7 +291,7 @@ lpspi2: spi@44370000 {
 			};
 
 			lpuart1: serial@44380000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x44380000 0x1000>;
 				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART1_GATE>;
@@ -300,7 +300,7 @@ lpuart1: serial@44380000 {
 			};
 
 			lpuart2: serial@44390000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x44390000 0x1000>;
 				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART2_GATE>;
@@ -545,7 +545,7 @@ lpspi4: spi@42560000 {
 			};
 
 			lpuart3: serial@42570000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x42570000 0x1000>;
 				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART3_GATE>;
@@ -554,7 +554,7 @@ lpuart3: serial@42570000 {
 			};
 
 			lpuart4: serial@42580000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x42580000 0x1000>;
 				interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART4_GATE>;
@@ -563,7 +563,7 @@ lpuart4: serial@42580000 {
 			};
 
 			lpuart5: serial@42590000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x42590000 0x1000>;
 				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART5_GATE>;
@@ -572,7 +572,7 @@ lpuart5: serial@42590000 {
 			};
 
 			lpuart6: serial@425a0000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x425a0000 0x1000>;
 				interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART6_GATE>;
@@ -610,7 +610,7 @@ flexspi1: spi@425e0000 {
 			};
 
 			lpuart7: serial@42690000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x42690000 0x1000>;
 				interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART7_GATE>;
@@ -619,7 +619,7 @@ lpuart7: serial@42690000 {
 			};
 
 			lpuart8: serial@426a0000 {
-				compatible = "fsl,imx93-lpuart", "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
+				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x426a0000 0x1000>;
 				interrupts = <GIC_SPI 211 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART8_GATE>;
-- 
2.34.1

