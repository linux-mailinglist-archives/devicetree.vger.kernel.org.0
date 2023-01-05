Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA5C65EEFD
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:42:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232976AbjAEOmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:42:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233408AbjAEOmG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:42:06 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C3512AC0
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:42:03 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3EC728558F;
        Thu,  5 Jan 2023 15:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672929721;
        bh=2NfDTdyL7tuqDMtAY9qdNesvPbrd0NfYG4zWugMDLC4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=YzYtQEbqZlWetYqbbXPog74ISfNJUFg0WiGTVLBwzdXagqC0FD1/QW6pHHJ24Gnvt
         7lsD6bnEWzCqJgt3CvlVMavkKhhtITLqRLrOqKq+WUWiIsAuvKV1KqITm2SwrWG1tV
         HzRjcq0QJX3Y31lsj9aJT1Og8b4BVbJQLzFHhOtEtvsS5/bGwtToitRGVKVszZVlRo
         9dj5sczIHajeT1wPdjkBcFTqE6NiKeZqgZ95fmU0/ERniXNtHASW08NfqGVF312zTH
         7dryUkNDQVHGEP6F80w98jSGTkevdoUUiJP8/aMXFd0zA+WQiM/7xoyN2cSPhnJpaD
         JW/8EPZ0CEcBQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Mark Brown <broonie@kernel.org>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: vfxxx: Swap SAI DMA order
Date:   Thu,  5 Jan 2023 15:41:45 +0100
Message-Id: <20230105144145.165010-2-marex@denx.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105144145.165010-1-marex@denx.de>
References: <20230105144145.165010-1-marex@denx.de>
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
Documentation/devicetree/bindings/sound/fsl,sai.yaml
No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Joakim Zhang <qiangqing.zhang@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: Mark Brown <broonie@kernel.org>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Tim Harvey <tharvey@gateworks.com>
Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/vfxxx.dtsi | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/vfxxx.dtsi b/arch/arm/boot/dts/vfxxx.dtsi
index d53f9c9db8bfd..ff4479994b600 100644
--- a/arch/arm/boot/dts/vfxxx.dtsi
+++ b/arch/arm/boot/dts/vfxxx.dtsi
@@ -191,9 +191,8 @@ sai0: sai@4002f000 {
 					<&clks VF610_CLK_SAI0_DIV>,
 					<&clks 0>, <&clks 0>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dma-names = "tx", "rx";
-				dmas = <&edma0 0 17>,
-					<&edma0 0 16>;
+				dma-names = "rx", "tx";
+				dmas = <&edma0 0 16>, <&edma0 0 17>;
 				status = "disabled";
 			};
 
@@ -205,9 +204,8 @@ sai1: sai@40030000 {
 					<&clks VF610_CLK_SAI1_DIV>,
 					<&clks 0>, <&clks 0>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dma-names = "tx", "rx";
-				dmas = <&edma0 0 19>,
-					<&edma0 0 18>;
+				dma-names = "rx", "tx";
+				dmas = <&edma0 0 18>, <&edma0 0 19>;
 				status = "disabled";
 			};
 
@@ -219,9 +217,8 @@ sai2: sai@40031000 {
 					<&clks VF610_CLK_SAI2_DIV>,
 					<&clks 0>, <&clks 0>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dma-names = "tx", "rx";
-				dmas = <&edma0 0 21>,
-					<&edma0 0 20>;
+				dma-names = "rx", "tx";
+				dmas = <&edma0 0 20>, <&edma0 0 21>;
 				status = "disabled";
 			};
 
@@ -233,9 +230,8 @@ sai3: sai@40032000 {
 					<&clks VF610_CLK_SAI3_DIV>,
 					<&clks 0>, <&clks 0>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dma-names = "tx", "rx";
-				dmas = <&edma0 1 9>,
-					<&edma0 1 8>;
+				dma-names = "rx", "tx";
+				dmas = <&edma0 1 8>, <&edma0 1 9>;
 				status = "disabled";
 			};
 
-- 
2.39.0

