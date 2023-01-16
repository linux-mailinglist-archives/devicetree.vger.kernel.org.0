Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32BDC66BB86
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 11:17:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbjAPKRq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 05:17:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbjAPKRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 05:17:24 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29291ABE8
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 02:17:00 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7A22F82131;
        Mon, 16 Jan 2023 11:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673864219;
        bh=1hH93vh1TpN9XLwa7Cu87RTyr/hrlwiQFx7SHpp4/js=;
        h=From:To:Cc:Subject:Date:From;
        b=stTVWaKUbO7Tvy3U02t+YPh/5yO22+UXHvhVwHxHgQxx0dalW6TPmP/jJbNn0Pgvl
         aWhK3Wux4ecxKLYxsflIUOXnjPDj0n5MTR50nRjwevENlqCWRCcDvCP9MPDStymi5f
         s1H5udia2dgBy+46aDQ32ER2teeXwKy0q51+VVskHAAURAGFFQ9/5eyYGOIBn6WxjF
         WCRmZPXnsypyLc243J60eG7BKVYc9/Mgxeh97ckaMJUcrsSTzF2XCWxwjp7nvLjEQk
         WaXA32gqTjpcTvmWw4bM+vAmr7MdGZviQjiCTXi0udj3NN8gOF6ON0WR86F0xP9XFO
         s/BluNeCJEZfQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Reorder clock to match fsl,imx6q-pcie.yaml
Date:   Mon, 16 Jan 2023 11:16:49 +0100
Message-Id: <20230116101649.46459-1-marex@denx.de>
X-Mailer: git-send-email 2.39.0
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

Reorder the PCIe clock in DT to match YAML DT schema. No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Marek Vasut <marex@denx.de>
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
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 90932dac41fc1..5120c20fc601c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1213,9 +1213,9 @@ pcie: pcie@33800000 {
 			reg = <0x33800000 0x400000>, <0x1ff00000 0x80000>;
 			reg-names = "dbi", "config";
 			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-				 <&clk IMX8MP_CLK_PCIE_ROOT>,
-				 <&clk IMX8MP_CLK_HSIO_AXI>;
-			clock-names = "pcie", "pcie_aux", "pcie_bus";
+				 <&clk IMX8MP_CLK_HSIO_AXI>,
+				 <&clk IMX8MP_CLK_PCIE_ROOT>;
+			clock-names = "pcie", "pcie_bus", "pcie_aux";
 			assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
 			assigned-clock-rates = <10000000>;
 			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
-- 
2.39.0

