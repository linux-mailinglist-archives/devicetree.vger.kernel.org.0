Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81349618750
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 19:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbiKCSTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 14:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231244AbiKCSTg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 14:19:36 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 212941AF3B
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 11:19:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9D37584BE3;
        Thu,  3 Nov 2022 19:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667499572;
        bh=qHxoiRYjjGE0+9fdHJw3IORE7Xgv7X/Mwffq4ISYzGk=;
        h=From:To:Cc:Subject:Date:From;
        b=ruq29GJtBEdQxaRIwGaiT8uTYQYF6Bybnf7GifEg2/IEtPhyeUPsWDTpOQ/Gb/5pe
         PgBf0hkxxMTs9Qs+k1lcD+V1hpupv2uRnzesBNvKBfH4h3SSF/VvMOGxFaisx0ISOg
         k5vSu/i6FCcNenPiwxRKpVy0yINR3x85V9fvEECeB0SzW6H3dkNZmjtKaqvZwpvsGR
         nZV93A2PTnElA2PRn20ep0yOrLB1Y4Nq37SVikMZx1bx//GgsVDIaDEKVM/c8rYihu
         f54WsJQi5DhGuc2pIFeIRXaFyF1UbFnoKf1celofn786kLO4W0AsGMS/Su21INKlu+
         t7gM5nI6WcfDA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: imx8mq: Swap SAI DMA order
Date:   Thu,  3 Nov 2022 19:19:18 +0100
Message-Id: <20221103181920.95736-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Swap the SAI dmas and dma-names to match the order documented in
Documentation/devicetree/bindings/sound/fsl-sai.txt
using the following regex:

"
s@\(dma[^=]\+= \)\([^,]\+\), \([^;]\+\);@\1\3, \2;
"

No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Joakim Zhang <qiangqing.zhang@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index c47e2d7235d3e..f00b040ca03e9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -345,8 +345,8 @@ sai1: sai@30010000 {
 				         <&clk IMX8MQ_CLK_SAI1_ROOT>,
 				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 8 24 0>, <&sdma1 9 24 0>;
-				dma-names = "rx", "tx";
+				dmas = <&sdma1 9 24 0>, <&sdma2 8 24 0>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -359,8 +359,8 @@ sai6: sai@30030000 {
 				         <&clk IMX8MQ_CLK_SAI6_ROOT>,
 				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
-				dma-names = "rx", "tx";
+				dmas = <&sdma2 5 24 0>, <&sdma2 4 24 0>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -373,8 +373,8 @@ sai5: sai@30040000 {
 				         <&clk IMX8MQ_CLK_SAI5_ROOT>,
 				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 2 24 0>, <&sdma2 3 24 0>;
-				dma-names = "rx", "tx";
+				dmas = <&sdma2 3 24 0>, <&sdma2 2 24 0>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -387,8 +387,8 @@ sai4: sai@30050000 {
 				         <&clk IMX8MQ_CLK_SAI4_ROOT>,
 				         <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 0 24 0>, <&sdma2 1 24 0>;
-				dma-names = "rx", "tx";
+				dmas = <&sdma2 1 24 0>, <&sdma2 0 24 0>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
-- 
2.35.1

