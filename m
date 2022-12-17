Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 345DC64F6A5
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 02:09:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbiLQBJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 20:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbiLQBJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 20:09:11 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C774240BD
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 17:09:10 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id D59138512B;
        Sat, 17 Dec 2022 02:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671239348;
        bh=bMUA5DiM7zhYDGuiziVUzKkdkp5JrE1gQyYIXkjZpRA=;
        h=From:To:Cc:Subject:Date:From;
        b=kkFQUASVx4RVeMZbpN77OFyUk7slT/Zjfb0xArEOnUJ/M6m0HXT3F4+rQm707mAkU
         4Ye2Dn4YX97S3O71TNLB7RayJxpJd9+1OXkSox5ZvBy6tyMd21VMUSvWF/MKShVI7V
         273OSKHSMouOpMGqNB3u5pv/+ZPsOrq68GniLuwp65+YRdVmW/4Hdg51IOnibXGJXl
         WJ9RsQKpdh89ejhUM4yHfjjAnULM7nkJTxdLLByyR9B8tSesDpu56l5A8Y1MRbJJ2z
         Bio6eVsYzb5dD/E/Ud3xXaOKnhGnPShXkWCMEhckVhr9QrWsh5+LOogCOMbF/xgTm5
         Obt6r9BE5ld8w==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/7] ARM: dts: mxs: Drop dma-apb interrupt-names
Date:   Sat, 17 Dec 2022 02:08:49 +0100
Message-Id: <20221217010855.632301-1-marex@denx.de>
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

Drop "interrupt-names" property, since it is broken. The drivers/dma/mxs-dma.c
in Linux kernel does not use it, the property contains duplicate array entries
in existing DTs, and even malformed entries (gmpi, should have been gpmi). Get
rid of that optional property altogether.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Jun <jun.li@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx23.dtsi | 2 --
 arch/arm/boot/dts/imx28.dtsi | 8 --------
 2 files changed, 10 deletions(-)

diff --git a/arch/arm/boot/dts/imx23.dtsi b/arch/arm/boot/dts/imx23.dtsi
index 7f4c602454a5f..d19508c8f9ed6 100644
--- a/arch/arm/boot/dts/imx23.dtsi
+++ b/arch/arm/boot/dts/imx23.dtsi
@@ -64,8 +64,6 @@ dma_apbh: dma-apbh@80004000 {
 				reg = <0x80004000 0x2000>;
 				interrupts = <0 14 20 0
 					      13 13 13 13>;
-				interrupt-names = "empty", "ssp0", "ssp1", "empty",
-						  "gpmi0", "gpmi1", "gpmi2", "gpmi3";
 				#dma-cells = <1>;
 				dma-channels = <8>;
 				clocks = <&clks 15>;
diff --git a/arch/arm/boot/dts/imx28.dtsi b/arch/arm/boot/dts/imx28.dtsi
index 130b4145af827..a8d3c3113e0f6 100644
--- a/arch/arm/boot/dts/imx28.dtsi
+++ b/arch/arm/boot/dts/imx28.dtsi
@@ -85,10 +85,6 @@ dma_apbh: dma-apbh@80004000 {
 					      88 88 88 88
 					      88 88 88 88
 					      87 86 0 0>;
-				interrupt-names = "ssp0", "ssp1", "ssp2", "ssp3",
-						  "gpmi0", "gmpi1", "gpmi2", "gmpi3",
-						  "gpmi4", "gmpi5", "gpmi6", "gmpi7",
-						  "hsadc", "lcdif", "empty", "empty";
 				#dma-cells = <1>;
 				dma-channels = <16>;
 				clocks = <&clks 25>;
@@ -1001,10 +997,6 @@ dma_apbx: dma-apbx@80024000 {
 					      80 81 68 69
 					      70 71 72 73
 					      74 75 76 77>;
-				interrupt-names = "auart4-rx", "auart4-tx", "spdif-tx", "empty",
-						  "saif0", "saif1", "i2c0", "i2c1",
-						  "auart0-rx", "auart0-tx", "auart1-rx", "auart1-tx",
-						  "auart2-rx", "auart2-tx", "auart3-rx", "auart3-tx";
 				#dma-cells = <1>;
 				dma-channels = <16>;
 				clocks = <&clks 26>;
-- 
2.35.1

