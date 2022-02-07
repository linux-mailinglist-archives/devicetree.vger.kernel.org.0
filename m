Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B926A4AC993
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:31:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235165AbiBGTav (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:30:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240031AbiBGT0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:26:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5980EC0401DA
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:25:58 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nH9e2-0001pl-Tv; Mon, 07 Feb 2022 20:25:51 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v2 3/9] soc: imx: gpcv2: add support for i.MX8MP power domains
Date:   Mon,  7 Feb 2022 20:25:41 +0100
Message-Id: <20220207192547.1997549-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207192547.1997549-1-l.stach@pengutronix.de>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds driver support for all the GPC power domains found on
the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 387 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 386 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 01f46b078df3..a7c92bdfc53b 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -21,10 +21,12 @@
 #include <dt-bindings/power/imx8mq-power.h>
 #include <dt-bindings/power/imx8mm-power.h>
 #include <dt-bindings/power/imx8mn-power.h>
+#include <dt-bindings/power/imx8mp-power.h>
 
 #define GPC_LPCR_A_CORE_BSC			0x000
 
 #define GPC_PGC_CPU_MAPPING		0x0ec
+#define IMX8MP_GPC_PGC_CPU_MAPPING	0x1cc
 
 #define IMX7_USB_HSIC_PHY_A_CORE_DOMAIN		BIT(6)
 #define IMX7_USB_OTG2_PHY_A_CORE_DOMAIN		BIT(5)
@@ -65,6 +67,29 @@
 #define IMX8MN_OTG1_A53_DOMAIN		BIT(4)
 #define IMX8MN_MIPI_A53_DOMAIN		BIT(2)
 
+#define IMX8MP_MEDIA_ISPDWP_A53_DOMAIN	BIT(20)
+#define IMX8MP_HSIOMIX_A53_DOMAIN		BIT(19)
+#define IMX8MP_MIPI_PHY2_A53_DOMAIN		BIT(18)
+#define IMX8MP_HDMI_PHY_A53_DOMAIN		BIT(17)
+#define IMX8MP_HDMIMIX_A53_DOMAIN		BIT(16)
+#define IMX8MP_VPU_VC8000E_A53_DOMAIN		BIT(15)
+#define IMX8MP_VPU_G2_A53_DOMAIN		BIT(14)
+#define IMX8MP_VPU_G1_A53_DOMAIN		BIT(13)
+#define IMX8MP_MEDIAMIX_A53_DOMAIN		BIT(12)
+#define IMX8MP_GPU3D_A53_DOMAIN			BIT(11)
+#define IMX8MP_VPUMIX_A53_DOMAIN		BIT(10)
+#define IMX8MP_GPUMIX_A53_DOMAIN		BIT(9)
+#define IMX8MP_GPU2D_A53_DOMAIN			BIT(8)
+#define IMX8MP_AUDIOMIX_A53_DOMAIN		BIT(7)
+#define IMX8MP_MLMIX_A53_DOMAIN			BIT(6)
+#define IMX8MP_USB2_PHY_A53_DOMAIN		BIT(5)
+#define IMX8MP_USB1_PHY_A53_DOMAIN		BIT(4)
+#define IMX8MP_PCIE_PHY_A53_DOMAIN		BIT(3)
+#define IMX8MP_MIPI_PHY1_A53_DOMAIN		BIT(2)
+
+#define IMX8MP_GPC_PU_PGC_SW_PUP_REQ	0x0d8
+#define IMX8MP_GPC_PU_PGC_SW_PDN_REQ	0x0e4
+
 #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
 #define GPC_PU_PGC_SW_PDN_REQ		0x104
 
@@ -107,8 +132,30 @@
 #define IMX8MN_OTG1_SW_Pxx_REQ		BIT(2)
 #define IMX8MN_MIPI_SW_Pxx_REQ		BIT(0)
 
+#define IMX8MP_DDRMIX_Pxx_REQ			BIT(19)
+#define IMX8MP_MEDIA_ISP_DWP_Pxx_REQ		BIT(18)
+#define IMX8MP_HSIOMIX_Pxx_REQ			BIT(17)
+#define IMX8MP_MIPI_PHY2_Pxx_REQ		BIT(16)
+#define IMX8MP_HDMI_PHY_Pxx_REQ			BIT(15)
+#define IMX8MP_HDMIMIX_Pxx_REQ			BIT(14)
+#define IMX8MP_VPU_VC8K_Pxx_REQ			BIT(13)
+#define IMX8MP_VPU_G2_Pxx_REQ			BIT(12)
+#define IMX8MP_VPU_G1_Pxx_REQ			BIT(11)
+#define IMX8MP_MEDIMIX_Pxx_REQ			BIT(10)
+#define IMX8MP_GPU_3D_Pxx_REQ			BIT(9)
+#define IMX8MP_VPU_MIX_SHARE_LOGIC_Pxx_REQ	BIT(8)
+#define IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ		BIT(7)
+#define IMX8MP_GPU_2D_Pxx_REQ			BIT(6)
+#define IMX8MP_AUDIOMIX_Pxx_REQ			BIT(5)
+#define IMX8MP_MLMIX_Pxx_REQ			BIT(4)
+#define IMX8MP_USB2_PHY_Pxx_REQ			BIT(3)
+#define IMX8MP_USB1_PHY_Pxx_REQ			BIT(2)
+#define IMX8MP_PCIE_PHY_SW_Pxx_REQ		BIT(1)
+#define IMX8MP_MIPI_PHY1_SW_Pxx_REQ		BIT(0)
+
 #define GPC_M4_PU_PDN_FLG		0x1bc
 
+#define IMX8MP_GPC_PU_PWRHSK		0x190
 #define GPC_PU_PWRHSK			0x1fc
 
 #define IMX8M_GPU_HSK_PWRDNACKN			BIT(26)
@@ -118,7 +165,6 @@
 #define IMX8M_VPU_HSK_PWRDNREQN			BIT(5)
 #define IMX8M_DISP_HSK_PWRDNREQN		BIT(4)
 
-
 #define IMX8MM_GPUMIX_HSK_PWRDNACKN		BIT(29)
 #define IMX8MM_GPU_HSK_PWRDNACKN		(BIT(27) | BIT(28))
 #define IMX8MM_VPUMIX_HSK_PWRDNACKN		BIT(26)
@@ -137,6 +183,21 @@
 #define IMX8MN_DISPMIX_HSK_PWRDNREQN		BIT(7)
 #define IMX8MN_HSIO_HSK_PWRDNREQN		BIT(5)
 
+#define IMX8MP_MEDIAMIX_PWRDNACKN		BIT(3)
+#define IMX8MP_HDMIMIX_PWRDNACKN		BIT(29)
+#define IMX8MP_HSIOMIX_PWRDNACKN		BIT(28)
+#define IMX8MP_VPUMIX_PWRDNACKN			BIT(26)
+#define IMX8MP_GPUMIX_PWRDNACKN			BIT(25)
+#define IMX8MP_MLMIX_PWRDNACKN			(BIT(23) | BIT(24))
+#define IMX8MP_AUDIOMIX_PWRDNACKN		(BIT(20) | BIT(31))
+#define IMX8MP_MEDIAMIX_PWRDNREQN		BIT(14)
+#define IMX8MP_HDMIMIX_PWRDNREQN		BIT(13)
+#define IMX8MP_HSIOMIX_PWRDNREQN		BIT(12)
+#define IMX8MP_VPUMIX_PWRDNREQN			BIT(10)
+#define IMX8MP_GPUMIX_PWRDNREQN			BIT(9)
+#define IMX8MP_MLMIX_PWRDNREQN			(BIT(7) | BIT(8))
+#define IMX8MP_AUDIOMIX_PWRDNREQN		(BIT(4) | BIT(15))
+
 /*
  * The PGC offset values in Reference Manual
  * (Rev. 1, 01/2018 and the older ones) GPC chapter's
@@ -179,6 +240,28 @@
 #define IMX8MN_PGC_GPUMIX		23
 #define IMX8MN_PGC_DISPMIX		26
 
+#define IMX8MP_PGC_NOC			9
+#define IMX8MP_PGC_MIPI1		12
+#define IMX8MP_PGC_PCIE			13
+#define IMX8MP_PGC_USB1			14
+#define IMX8MP_PGC_USB2			15
+#define IMX8MP_PGC_MLMIX		16
+#define IMX8MP_PGC_AUDIOMIX		17
+#define IMX8MP_PGC_GPU2D		18
+#define IMX8MP_PGC_GPUMIX		19
+#define IMX8MP_PGC_VPUMIX		20
+#define IMX8MP_PGC_GPU3D		21
+#define IMX8MP_PGC_MEDIAMIX		22
+#define IMX8MP_PGC_VPU_G1		23
+#define IMX8MP_PGC_VPU_G2		24
+#define IMX8MP_PGC_VPU_VC8000E		25
+#define IMX8MP_PGC_HDMIMIX		26
+#define IMX8MP_PGC_HDMI			27
+#define IMX8MP_PGC_MIPI2		28
+#define IMX8MP_PGC_HSIOMIX		29
+#define IMX8MP_PGC_MEDIA_ISP_DWP	30
+#define IMX8MP_PGC_DDRMIX		31
+
 #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
 #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
 
@@ -212,6 +295,9 @@ struct imx_pgc_domain {
 	const int voltage;
 	const bool keep_clocks;
 	struct device *dev;
+
+	unsigned int pgc_sw_pup_reg;
+	unsigned int pgc_sw_pdn_reg;
 };
 
 struct imx_pgc_domain_data {
@@ -824,6 +910,303 @@ static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
 	.pgc_regs = &imx7_pgc_regs,
 };
 
+static const struct imx_pgc_domain imx8mp_pgc_domains[] = {
+	[IMX8MP_POWER_DOMAIN_MIPI_PHY1] = {
+		.genpd = {
+			.name = "mipi-phy1",
+		},
+		.bits = {
+			.pxx = IMX8MP_MIPI_PHY1_SW_Pxx_REQ,
+			.map = IMX8MP_MIPI_PHY1_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MIPI1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_PCIE_PHY] = {
+		.genpd = {
+			.name = "pcie-phy1",
+		},
+		.bits = {
+			.pxx = IMX8MP_PCIE_PHY_SW_Pxx_REQ,
+			.map = IMX8MP_PCIE_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_PCIE),
+	},
+
+	[IMX8MP_POWER_DOMAIN_USB1_PHY] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits = {
+			.pxx = IMX8MP_USB1_PHY_Pxx_REQ,
+			.map = IMX8MP_USB1_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_USB1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_USB2_PHY] = {
+		.genpd = {
+			.name = "usb-otg2",
+		},
+		.bits = {
+			.pxx = IMX8MP_USB2_PHY_Pxx_REQ,
+			.map = IMX8MP_USB2_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_USB2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MLMIX] = {
+		.genpd = {
+			.name = "mlmix",
+		},
+		.bits = {
+			.pxx = IMX8MP_MLMIX_Pxx_REQ,
+			.map = IMX8MP_MLMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_MLMIX_PWRDNREQN,
+			.hskack = IMX8MP_MLMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MLMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_AUDIOMIX] = {
+		.genpd = {
+			.name = "audiomix",
+		},
+		.bits = {
+			.pxx = IMX8MP_AUDIOMIX_Pxx_REQ,
+			.map = IMX8MP_AUDIOMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_AUDIOMIX_PWRDNREQN,
+			.hskack = IMX8MP_AUDIOMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_AUDIOMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPU2D] = {
+		.genpd = {
+			.name = "gpu2d",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_2D_Pxx_REQ,
+			.map = IMX8MP_GPU2D_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPU2D),
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPUMIX] = {
+		.genpd = {
+			.name = "gpumix",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ,
+			.map = IMX8MP_GPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_GPUMIX_PWRDNREQN,
+			.hskack = IMX8MP_GPUMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPUMIX] = {
+		.genpd = {
+			.name = "vpumix",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_MIX_SHARE_LOGIC_Pxx_REQ,
+			.map = IMX8MP_VPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_VPUMIX_PWRDNREQN,
+			.hskack = IMX8MP_VPUMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_VPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPU3D] = {
+		.genpd = {
+			.name = "gpu3d",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_3D_Pxx_REQ,
+			.map = IMX8MP_GPU3D_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPU3D),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MEDIAMIX] = {
+		.genpd = {
+			.name = "mediamix",
+		},
+		.bits = {
+			.pxx = IMX8MP_MEDIMIX_Pxx_REQ,
+			.map = IMX8MP_MEDIAMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_MEDIAMIX_PWRDNREQN,
+			.hskack = IMX8MP_MEDIAMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MEDIAMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPU_G1] = {
+		.genpd = {
+			.name = "vpu-g1",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_G1_Pxx_REQ,
+			.map = IMX8MP_VPU_G1_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_VPU_G1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPU_G2] = {
+		.genpd = {
+			.name = "vpu-g2",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_G2_Pxx_REQ,
+			.map = IMX8MP_VPU_G2_A53_DOMAIN
+		},
+		.pgc = BIT(IMX8MP_PGC_VPU_G2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPU_VC8000E] = {
+		.genpd = {
+			.name = "vpu-h1",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_VC8K_Pxx_REQ,
+			.map = IMX8MP_VPU_VC8000E_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_VPU_VC8000E),
+	},
+
+	[IMX8MP_POWER_DOMAIN_HDMIMIX] = {
+		.genpd = {
+			.name = "hdmimix",
+		},
+		.bits = {
+			.pxx = IMX8MP_HDMIMIX_Pxx_REQ,
+			.map = IMX8MP_HDMIMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_HDMIMIX_PWRDNREQN,
+			.hskack = IMX8MP_HDMIMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HDMIMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_HDMI_PHY] = {
+		.genpd = {
+			.name = "hdmi-phy",
+		},
+		.bits = {
+			.pxx = IMX8MP_HDMI_PHY_Pxx_REQ,
+			.map = IMX8MP_HDMI_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HDMI),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MIPI_PHY2] = {
+		.genpd = {
+			.name = "mipi-phy2",
+		},
+		.bits = {
+			.pxx = IMX8MP_MIPI_PHY2_Pxx_REQ,
+			.map = IMX8MP_MIPI_PHY2_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MIPI2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_HSIOMIX] = {
+		.genpd = {
+			.name = "hsiomix",
+		},
+		.bits = {
+			.pxx = IMX8MP_HSIOMIX_Pxx_REQ,
+			.map = IMX8MP_HSIOMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_HSIOMIX_PWRDNREQN,
+			.hskack = IMX8MP_HSIOMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HSIOMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP] = {
+		.genpd = {
+			.name = "mediamix-isp-dwp",
+		},
+		.bits = {
+			.pxx = IMX8MP_MEDIA_ISP_DWP_Pxx_REQ,
+			.map = IMX8MP_MEDIA_ISPDWP_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MEDIA_ISP_DWP),
+	},
+};
+
+static const struct regmap_range imx8mp_yes_ranges[] = {
+		regmap_reg_range(GPC_LPCR_A_CORE_BSC,
+				 IMX8MP_GPC_PGC_CPU_MAPPING),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_NOC),
+				 GPC_PGC_SR(IMX8MP_PGC_NOC)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_MIPI1),
+				 GPC_PGC_SR(IMX8MP_PGC_MIPI1)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_PCIE),
+				 GPC_PGC_SR(IMX8MP_PGC_PCIE)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_USB1),
+				 GPC_PGC_SR(IMX8MP_PGC_USB1)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_USB2),
+				 GPC_PGC_SR(IMX8MP_PGC_USB2)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_MLMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_MLMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_AUDIOMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_AUDIOMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_GPU2D),
+				 GPC_PGC_SR(IMX8MP_PGC_GPU2D)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_GPUMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_GPUMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_VPUMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_VPUMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_GPU3D),
+				 GPC_PGC_SR(IMX8MP_PGC_GPU3D)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_MEDIAMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_MEDIAMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_VPU_G1),
+				 GPC_PGC_SR(IMX8MP_PGC_VPU_G1)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_VPU_G2),
+				 GPC_PGC_SR(IMX8MP_PGC_VPU_G2)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_VPU_VC8000E),
+				 GPC_PGC_SR(IMX8MP_PGC_VPU_VC8000E)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_HDMIMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_HDMIMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_HDMI),
+				 GPC_PGC_SR(IMX8MP_PGC_HDMI)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_MIPI2),
+				 GPC_PGC_SR(IMX8MP_PGC_MIPI2)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_HSIOMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_HSIOMIX)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_MEDIA_ISP_DWP),
+				 GPC_PGC_SR(IMX8MP_PGC_MEDIA_ISP_DWP)),
+		regmap_reg_range(GPC_PGC_CTRL(IMX8MP_PGC_DDRMIX),
+				 GPC_PGC_SR(IMX8MP_PGC_DDRMIX)),
+};
+
+static const struct regmap_access_table imx8mp_access_table = {
+	.yes_ranges	= imx8mp_yes_ranges,
+	.n_yes_ranges	= ARRAY_SIZE(imx8mp_yes_ranges),
+};
+
+static const struct imx_pgc_regs imx8mp_pgc_regs = {
+	.map = IMX8MP_GPC_PGC_CPU_MAPPING,
+	.pup = IMX8MP_GPC_PU_PGC_SW_PUP_REQ,
+	.pdn = IMX8MP_GPC_PU_PGC_SW_PDN_REQ,
+	.hsk = IMX8MP_GPC_PU_PWRHSK,
+};
+static const struct imx_pgc_domain_data imx8mp_pgc_domain_data = {
+	.domains = imx8mp_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8mp_pgc_domains),
+	.reg_access_table = &imx8mp_access_table,
+	.pgc_regs = &imx8mp_pgc_regs,
+};
+
 static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
 	[IMX8MN_POWER_DOMAIN_HSIOMIX] = {
 		.genpd = {
@@ -1119,6 +1502,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
 		domain = pd_pdev->dev.platform_data;
 		domain->regmap = regmap;
 		domain->regs = domain_data->pgc_regs;
+
 		domain->genpd.power_on  = imx_pgc_power_up;
 		domain->genpd.power_off = imx_pgc_power_down;
 
@@ -1140,6 +1524,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mn-gpc", .data = &imx8mn_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mp-gpc", .data = &imx8mp_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
 	{ }
 };
-- 
2.30.2

