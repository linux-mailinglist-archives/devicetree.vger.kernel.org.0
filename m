Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A0AA64F6A6
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 02:09:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbiLQBJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 20:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiLQBJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 20:09:11 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F47C24957
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 17:09:10 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 825E28533D;
        Sat, 17 Dec 2022 02:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671239349;
        bh=JjqJODd8UEVPC7N0c82QMvaDtu30WjycSA6dlbYVpE0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=rPFxBX7yVDg4PqnRT0otCs09FM92tG3ZBO2qTT2UtsxgY3tZBhjvtT/XhVJMixBsk
         gJKhcBzIrnxXE5dA30wIpCcIVLHubbtzpepOBu2Ur6qMqPyJ193tDt79AZwfxdyElh
         KxWRJNI3TbeFuQoyfXbWxHd34bbjXEw1vDX03mvvmJWbxLKuL+FVwsHm4n+2EbVw3R
         qYBazZNE4ytHDhCchRWAqKdLviUKX6SXCpBvgzP0iobenvCdPTZ26sYajBWgrOR/E6
         c1unuIC9h1nVQOUsA0C6svmtkR2JmDRJHX3GEbDwt6jzvI9YP0TNHs4KwHoH1ta1WJ
         GgJIPm7khdbMg==
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
Subject: [PATCH 2/7] ARM: dts: imx6qdl: Drop dma-apb interrupt-names
Date:   Sat, 17 Dec 2022 02:08:50 +0100
Message-Id: <20221217010855.632301-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221217010855.632301-1-marex@denx.de>
References: <20221217010855.632301-1-marex@denx.de>
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
 arch/arm/boot/dts/imx6qdl.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index ff1e0173b39be..6d4ac4702a6ea 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -157,7 +157,6 @@ dma_apbh: dma-apbh@110000 {
 				     <0 13 IRQ_TYPE_LEVEL_HIGH>,
 				     <0 13 IRQ_TYPE_LEVEL_HIGH>,
 				     <0 13 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "gpmi0", "gpmi1", "gpmi2", "gpmi3";
 			#dma-cells = <1>;
 			dma-channels = <4>;
 			clocks = <&clks IMX6QDL_CLK_APBH_DMA>;
-- 
2.35.1

