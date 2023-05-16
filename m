Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAB1370478A
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:14:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230292AbjEPIOG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:14:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231579AbjEPIOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:14:03 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91DC644B6
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:14:01 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 704F48662C;
        Tue, 16 May 2023 10:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684224839;
        bh=8RygKMYsHSQoSEojTlfwJEXOmWXW2dNWXM36Les/NxY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MRE1QKWR7tytdT0q/SoJhIgcS/RBb26lDqNVuFRoQAQ0GcX+EVSem6zVu8Vn+X+Yg
         bzXM33yAPK2coJnaEJiDgSpijdFlU8CL/uR3B3fDAnYLN3PsPoCF97heF7NhNN8Yk5
         Y8oEKjMejw0k865d1Sn6cd9j1p+/pLekNJYFz+APk1UIY+4hUrtAhz1463ESO3WVW0
         YNnJKwJwlkH6rMDHhiU+4mXAORUwaFM4dR82ffA6dYOGwJy5T2gmLz/95S40/h9cud
         GnKBSXAv7u+PzaTOafWT0EFl5ZTtV9yIMvwl5R8jctQ0Y42ZaXSVYkVaiGc2Tba44w
         waHwnwJIrbyaQ==
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
Subject: [PATCH v2 2/2] arm64: dts: imx8mp: Add DeWarp Engine DT node
Date:   Tue, 16 May 2023 10:13:54 +0200
Message-Id: <20230516081354.38868-2-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230516081354.38868-1-marex@denx.de>
References: <20230516081354.38868-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
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
V2: Update on top of 1/2
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a3ffd53a95357..cd64b39e7d4b8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1366,6 +1366,16 @@ isi_in_1: endpoint {
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

