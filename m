Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8B86646B8B
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 10:09:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbiLHJJn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 04:09:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230170AbiLHJIv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 04:08:51 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F361B9C6
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 01:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670490528; x=1702026528;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=h0uI75b/XLO5fwpolzeROMRFzfbiSy8hveLLAfG1BeM=;
  b=g3MaTjkvbq2Ij6uLFOKmOooYsPXtSBKhD65+3KJxVP4XFwfjMEnS8s8U
   KTURHaN/Yz1XeMLeKYQhW/fMJrWDuDFjZpFdFhLRrIOZdspQYvJEmYdk1
   LdkadDhxVbMJlmZXUNzkUjB8ZAJS8Ko0wwwNwuLyhtmxdtjqpqMSbciVX
   iOcyI/1gAdSDMNJAcMyOrRDI0eor/OQJk19uKsemmCp8OTKhryFxsniP+
   VETqSwjb2WGTIGW5MgVDMcpTtuvlybtXSpZ66tHdH7uEKGSaZGJoRMxRJ
   XXJaPIowDismR/XpY2dQiZtw5S2cjbRcgvp/0PMBFM95fMAdKgSoI3Azk
   A==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27831351"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 10:08:46 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 10:08:46 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 10:08:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670490526; x=1702026526;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=h0uI75b/XLO5fwpolzeROMRFzfbiSy8hveLLAfG1BeM=;
  b=GU9eHAseTY1I62vI6AY7mmd+1z8X+ZenI3NG0hKyLQzS/do4XmluF1zN
   A29UBICzQs5344kNUsENzbawRzCZnvP25t3Ez7Y1UsloUQfZrfQxm/6Ff
   XwzhykNo8703NwJVoL5P9kvDysbdb6jUUtQ4tK4PPfS2ugh5iFwFljmWL
   CJaCeAlO+xJE5amZ237LQPUSBvU8mf8nWV1f+QXobcwcvz49o0oex+DIS
   AwyBZqVAEPgrb3XD3ofD2NzoFxPQwOrsQ6b8sb3OG2/ulEeoB/2O6Xm5M
   ZDhN4Z45ioqvlL3rGpr2I9rT3sKLCrN+jmlVnwiM3EkwO/nfWu28Hbde5
   A==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27831350"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 10:08:46 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 752CC280071;
        Thu,  8 Dec 2022 10:08:46 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: imx8mp: Add LCDIF2 & LDB nodes
Date:   Thu,  8 Dec 2022 10:08:41 +0100
Message-Id: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
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

LCDIF2 is directly attached to the LVDS Display Bridge (LDB).
Both need the same clock source (VIDEO_PLL1).

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
I opted to add both at the same time, so the remote-endpoints are already
connected.
blk-ctrl@32ec0000 needs the 'simple-bus' compatible so that bridge@5c is
actually probed.

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 65 ++++++++++++++++++++++-
 1 file changed, 64 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 7a6e6221f4219..c1beff33c4981 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1098,10 +1098,35 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges;
 
+			lcdif2: display-controller@32e90000 {
+				compatible = "fsl,imx8mp-lcdif";
+				reg = <0x32e90000 0x238>;
+				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
+						  <&clk IMX8MP_VIDEO_PLL1>;
+				assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>,
+							 <&clk IMX8MP_VIDEO_PLL1_REF_SEL>;
+				assigned-clock-rates = <0>, <1039500000>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_LCDIF_2>;
+				status = "disabled";
+
+				port {
+					lcdif2_to_ldb: endpoint {
+						remote-endpoint = <&ldb_from_lcdif2>;
+					};
+				};
+			};
+
 			media_blk_ctrl: blk-ctrl@32ec0000 {
 				compatible = "fsl,imx8mp-media-blk-ctrl",
-					     "syscon";
+					     "simple-bus", "syscon";
 				reg = <0x32ec0000 0x10000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
 				power-domains = <&pgc_mediamix>,
 						<&pgc_mipi_phy1>,
 						<&pgc_mipi_phy1>,
@@ -1146,6 +1171,44 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
 				assigned-clock-rates = <500000000>, <200000000>;
 
 				#power-domain-cells = <1>;
+
+				lvds_bridge: bridge@5c {
+					compatible = "fsl,imx8mp-ldb";
+					clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
+					clock-names = "ldb";
+					reg = <0x5c 0x4>, <0x128 0x4>;
+					reg-names = "ldb", "lvds";
+					assigned-clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
+					assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>;
+					status = "disabled";
+
+					ports {
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						port@0 {
+							reg = <0>;
+
+							ldb_from_lcdif2: endpoint {
+								remote-endpoint = <&lcdif2_to_ldb>;
+							};
+						};
+
+						port@1 {
+							reg = <1>;
+
+							ldb_lvds_ch0: endpoint {
+							};
+						};
+
+						port@2 {
+							reg = <2>;
+
+							ldb_lvds_ch1: endpoint {
+							};
+						};
+					};
+				};
 			};
 
 			pcie_phy: pcie-phy@32f00000 {
-- 
2.34.1

