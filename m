Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C10D618752
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 19:19:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbiKCSTi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 14:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230423AbiKCSTg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 14:19:36 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBFBD13D53
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 11:19:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C431685076;
        Thu,  3 Nov 2022 19:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667499573;
        bh=0taUmY72/R5c8QMl4HIAlEn4dIqhJeXD4IqGNt5Uydc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ETPD9uQXFh4P0gzRAkDHZ+ZrNw5kagV1TECT8X1yj6rZraB2Pt8ufmeV2bC4qoH4C
         YEBButbG2gRB3g+Opxq4kjK7hXD0cTYFz16ZbjZ0n9WWKk6OzoF8Uy3yk1UdnartXN
         ZYwo+BxvoN1J8thmwDidzSqBWx4U7gs5PaLx7MOcv569SLzwkuYZSrnUg8nngFYggH
         fM8hvP3KUQGvPFZ+aZeORgZejnFdxlUEk74pJGF+d7PrF3D2PghWeqKRXUKILXnKZs
         QDpd75vbUaPEyXHAiXIk5y/GyUChqXqKQOTVI2QGrpZ7E6epZ7YCtUWoVAq57pBlM7
         GVJPVT2tSVmjA==
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
Subject: [PATCH 3/3] arm64: dts: imx8mn: Swap SAI DMA order
Date:   Thu,  3 Nov 2022 19:19:20 +0100
Message-Id: <20221103181920.95736-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221103181920.95736-1-marex@denx.de>
References: <20221103181920.95736-1-marex@denx.de>
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
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 607c97009399e..fba9f5519daa7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -301,8 +301,8 @@ sai2: sai@30020000 {
 						<&clk IMX8MN_CLK_SAI2_ROOT>,
 						<&clk IMX8MN_CLK_DUMMY>, <&clk IMX8MN_CLK_DUMMY>;
 					clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
-					dmas = <&sdma2 2 2 0>, <&sdma2 3 2 0>;
-					dma-names = "rx", "tx";
+					dmas = <&sdma2 3 2 0>, <&sdma2 2 2 0>;
+					dma-names = "tx", "rx";
 					status = "disabled";
 				};
 
@@ -315,8 +315,8 @@ sai3: sai@30030000 {
 						 <&clk IMX8MN_CLK_SAI3_ROOT>,
 						 <&clk IMX8MN_CLK_DUMMY>, <&clk IMX8MN_CLK_DUMMY>;
 					clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
-					dmas = <&sdma2 4 2 0>, <&sdma2 5 2 0>;
-					dma-names = "rx", "tx";
+					dmas = <&sdma2 5 2 0>, <&sdma2 4 2 0>;
+					dma-names = "tx", "rx";
 					status = "disabled";
 				};
 
@@ -329,8 +329,8 @@ sai5: sai@30050000 {
 						 <&clk IMX8MN_CLK_SAI5_ROOT>,
 						 <&clk IMX8MN_CLK_DUMMY>, <&clk IMX8MN_CLK_DUMMY>;
 					clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
-					dmas = <&sdma2 8 2 0>, <&sdma2 9 2 0>;
-					dma-names = "rx", "tx";
+					dmas = <&sdma2 9 2 0>, <&sdma2 8 2 0>;
+					dma-names = "tx", "rx";
 					fsl,shared-interrupt;
 					fsl,dataline = <0 0xf 0xf>;
 					status = "disabled";
@@ -345,8 +345,8 @@ sai6: sai@30060000 {
 						 <&clk IMX8MN_CLK_SAI6_ROOT>,
 						 <&clk IMX8MN_CLK_DUMMY>, <&clk IMX8MN_CLK_DUMMY>;
 					clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
-					dmas = <&sdma2 10 2 0>, <&sdma2 11 2 0>;
-					dma-names = "rx", "tx";
+					dmas = <&sdma2 11 2 0>, <&sdma2 10 2 0>;
+					dma-names = "tx", "rx";
 					status = "disabled";
 				};
 
@@ -402,8 +402,8 @@ sai7: sai@300b0000 {
 						 <&clk IMX8MN_CLK_SAI7_ROOT>,
 						 <&clk IMX8MN_CLK_DUMMY>, <&clk IMX8MN_CLK_DUMMY>;
 					clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
-					dmas = <&sdma2 12 2 0>, <&sdma2 13 2 0>;
-					dma-names = "rx", "tx";
+					dmas = <&sdma2 13 2 0>, <&sdma2 12 2 0>;
+					dma-names = "tx", "rx";
 					status = "disabled";
 				};
 
-- 
2.35.1

