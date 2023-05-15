Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EDFD70330C
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 18:32:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241866AbjEOQci (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 12:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242515AbjEOQcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 12:32:32 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33349199
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:32:31 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 56C2185832;
        Mon, 15 May 2023 18:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684168349;
        bh=LX2rVHEE5VpKBAPzp60pz0QQCAqA6KNxVK2Bt882SNY=;
        h=From:To:Cc:Subject:Date:From;
        b=XajVlQRpzYH5yPL/AOGDPpVPxWPTIAApq7V6ciUUI8tKqYIPUrIksgLroaaOdS7x2
         DCzm+yHFPiL8Vq/hWqdPfqvjH/tnnhHmRmPvCvPd8FAeu7FsCPIGmJnSRqj0SqzPSl
         7LIMMKbUrL7W9qceUEoVu4GQSBSqJ03GqyrPIN4xNdqhLc+3OICRs1jqS4ZeTeYwGn
         z2x4bSMabOAXSlWMA6eEpuNg1pnoUYKJL+wWTJIAcPGT6Vjcf3722EP6kdGt23Rg9P
         2zpaBw4DO/9a8ISYg6T9B/mWZ5EsszNeyz3Ilk1+ancQNdGPqqObWtMvgQuQm4WqRP
         k5qmCpQCNXBYQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Add DeWarp Engine DT node
Date:   Mon, 15 May 2023 18:32:24 +0200
Message-Id: <20230515163224.70300-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT node for the DeWarp Engine of the i.MX8MP.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 245c560674de7..b64c944eecf82 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1534,6 +1534,16 @@ isi_in_1: endpoint {
 				};
 			};
 
+			dewarp: dwe@32e30000 {
+				compatible = "nxp,imx8mp-dw100";
+				reg = <0x32e30000 0x10000>;
+				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+				clock-names = "axi", "ahb";
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_DWE>;
+			};
+
 			mipi_csi_0: csi@32e40000 {
 				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
 				reg = <0x32e40000 0x10000>;
-- 
2.39.2

