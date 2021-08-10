Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5207D3E535B
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:18:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237482AbhHJGSn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:43 -0400
Received: from mail-eopbgr150042.outbound.protection.outlook.com ([40.107.15.42]:20247
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237312AbhHJGSm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/TYF/WmGq0JHaOLtEaS1amn15QcIZUMmo+nWvx0wUjNsinzUxDnHbcu521ci1Q1ZF9uWiYlvOttq9pkGe0jvz/bXxBT0LO/tnN7aFseo/3M13fQ8Jdxl+msiJfTyVvrlYE8sIstS5MDqXFDxohMhTVvGjbTs606s7TvHvlV8zmBHGOyEJ3c6iiUGyGRonmlx6wIPbX2VDyv4Un2nE1P3EIGsEywvmt+KgokDmuAelD+6hGev+QHBw92Z3WpWUQ4QASA02x/4TuUfdz+m2pcHt73d+/tgwKfDi8JahTHDxymPs1gPsvbQxL6QC4ERvQ48rJVZ/tvbKVUEgWzIVtqrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBNKdQurufr9xa4VLxahFkY8YcYLlasU3PPYas1snZo=;
 b=flkosVVogJyfUeH8xFKscbtXOc9GkNC1JVUDn4hrcpyV/avvXxaND3xrfZLQO1QDQ/NVQKQMCC6y+Feq2X2B6jKFVtz4WxQeHzGL8ILSpeUjDtwIjEV9uppDrLLzrdj5uTTABuEzROQoZH66pgIYoT2szfxrVjq3fDK7zwWc0yJZbI3IIpOaVnom2gd442MoI0Uw7ikGejIFmwPM5HQtxpW/TFrXHHgj9Tar2/m3fO6wpRju+wJUdEb4SXPME0oZKAcKRiINN6OHLdtBaCTv2/VmDoRlNXn4kFl97bVhKvcH4NKVMtoTYO9YoQVDsGUGA/Ultwedh3pHZGmlsdhbmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBNKdQurufr9xa4VLxahFkY8YcYLlasU3PPYas1snZo=;
 b=R5VGq16CK1EbTbfCY28Fq7+GBdDeqpaau5s6gYR2FHWq4CembcXKuZulWLaJHGKcw5wS6lvXv8ZwurdAzPVHWyCpRxJnYcUtjyv2uCi2G2cpCHXBmN+ML8A4MFdxrqsKeQfHYB1UPd6J3i+NgIcO7GH2/mLaFMgLks5X4k47qRk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:18:17 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:18:17 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 9/9] clk: imx: Add the pcc reset controller support on imx8ulp
Date:   Tue, 10 Aug 2021 14:28:20 +0800
Message-Id: <20210810062820.1062884-10-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:18:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ec30579-bad2-4245-1256-08d95bc6a493
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7563693AC92EB2AAA15AECD987F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2LiV2xxUWG3B2deIrCRWCjk8tc55mc2HdZYdSmeKOf/zZW0bIsSPdInWN8nmEBMCmzite03n54yCfwFPItmg2EiZ1yYkRr5FLrXQXAKVU2+sGADhzyHYXkg/bmCMrBlOMTi3D8PuM57dF9KTcKlskJ6mvz7LT6OyquZtHbjsWB21xGT+sqW2ySP6Hg5hZ8U0D64doAQzs1WXO3nAUXrMfkpU/0h+eV7joee3Pq00/hriRlPli14syXns0dImlhABUm+HyLEtOCC2eM7TBc/+4nviRWtGoxkegf8+D+6xwcHLx6GE3eJuhEHlWHCETQIzIgldfGkKm+R9IYFvQm+O/CAXiq4I5ZEBE9Zwq4MdSGtC7KXYQBUG8kgBsMcFvAkOTyxpXZpHxBx6BvTFo4GVkG/2sowNGoEc9WVIJj9DxhguTFARTv2AxjNsWXLdnWeFjPQ2gWzxMPozRFIlJYdb1CX2CUOOPOSz3YdV8PvQClZNfx0YwysAFnIpJ+jqW+8SSbgxg+wULIcItWv2pXigdFKkhoFBO5P4B6fYI/i54nvZlXFGXuYfKQtVjZlxwHuWIgwCcfHsKEsIvg1n27y9ThUxC3Q5GNRNRPmXvRLiA0BKkQIx07qSW8g7WlToru/5xymKLfT+YN5Z1hAszagmQ1DXhvFMjirHyNuvIC+u+Hpo3baw8FRBrWTVz1mENGReppee/c+soHaI1gf7SXNTwufQ3Nkvf8m67wPspBwX300=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QGLkJ2eQjIXXacKkDRg4tqzR5AuRVBu1KWR95GicXUFlUXVdT0bqVw0sIDaw?=
 =?us-ascii?Q?JX1HUzuqNBa0KkHS/qYWq+q6tIrYILfiSSIRgCfd5YuS91JnYH1XWdReTin9?=
 =?us-ascii?Q?ZP8w0U0hxKsRu9OZZFQ45rIIRiEZ+Cxf4ux+pLErmWUzB4+TeTyDo6njqnbl?=
 =?us-ascii?Q?j25heJnBYjVWfIq1c+I2lp6fGMRCrpq2NkqQYA3Pyy7MbK17Y0QXiTf/Im9b?=
 =?us-ascii?Q?ZAIh5huXquyZsFaABgNpBfgDow/tk+AaxnhROE8YSG9cYQPw40Q1hitOQVY3?=
 =?us-ascii?Q?PUV+bDqOQDRLDQ4lZPL1SAz+YR2UWzpeSAJ/4arKSE0XMeeK8lcJhipKUZ0V?=
 =?us-ascii?Q?dH1JTO8GwMeSEEZ7sj5z2JnBHji/f49JawT45qVmxUCHVa+dbgdezTHK4pk1?=
 =?us-ascii?Q?NrOKuX2/fOA0TNRBiAn6mbf+KTu2HvK8oR0dcrNQXqDavl1NwxlT+3DnwKuz?=
 =?us-ascii?Q?yD7Kc/JxnytR4jmXuxyctGjBa+QeitLa+N0EtB/JoZtIoYQsc1UusFGP73ns?=
 =?us-ascii?Q?0H4bcCCdVawEwPWEztUsbdb3dk8YKW+UuALTLhST8jPqZLL6mBeWjSUYjmrN?=
 =?us-ascii?Q?s/vBsR1nn5+BUzS8IeXg+bFrVcHZ6sItEE8lxxsUHX2s9bu3R0s1KRI0xWhC?=
 =?us-ascii?Q?4NVC86nMircDunh2MT5FmA4dvKbex9dwFxI76iNVBTjTY8rmN5LC7/ivf56Z?=
 =?us-ascii?Q?79gCMNtjkG0qqpE9uzz6KBhVEL1oJ8kEELgtunwoVz19HnDfeIl+M3u2V/40?=
 =?us-ascii?Q?x0MvbtZpDECpWJ7C2ezGkFJG5g7ZLwb0zZlX7q88BnScfJD6o/8F2pXxknH1?=
 =?us-ascii?Q?tO8Hgzh90u4YBRsSz5jj76OguygZGUuJcbAJCbdFf7dBDJzfRcKpNLs4qWjd?=
 =?us-ascii?Q?qNTf6OiVk4HQnPogKw6AFkOpQ6TnEc1YOh1/+n0B8JBbiglO/vydvwOxTxQG?=
 =?us-ascii?Q?nYJNBnIsmtg6JFq6Y7NY0V/HSEQp7YH3jTgBpeyjwG0XRnj9Q/N3eanfjcoJ?=
 =?us-ascii?Q?FpYn7Jj+Wgj0kZsB64IjAcIm7GCM+wntQ6jBxk82CQ3ZoQdTrOjxnLuws9hX?=
 =?us-ascii?Q?VhL2Y5GwSK2AuC//ZZJWX6TYoIQ8T0vxiahLEqT/c0E6Rk4HzirUjKdB17Xh?=
 =?us-ascii?Q?07JLGMbROqe2jjcDdpmMe0etxHMAT6NnlKyp6rRRR9M53Z2hBRUENZmKVrji?=
 =?us-ascii?Q?WLGOGa5Um62S4UiZCKocaboTqnW/hJpu6dcPYjUGfSH/s9291MF3jPKVUA5g?=
 =?us-ascii?Q?fBZ1ASpRKML2AFsxRmLJt068pzljiN4NK2OcO0yhQo6279XjeEh8isB5EDyi?=
 =?us-ascii?Q?g9+6gIUMv3pc4S762UK6tJ2E?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec30579-bad2-4245-1256-08d95bc6a493
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:18:17.5277
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BX0VJS9ZvDUERdHLl11wIkqfoJSvldPP7usb2LDT0N3/Jj941Fz8ODZedEi4wQFlM7mzRHaGYSwPL9zOuTAm3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On i.MX8ULP, for some of the PCCs, it has a peripheral SW RST bit
resides in the same registers as the clock controller. So add this
SW RST controller support alongs with the pcc clock initialization.

the reset and clock shared the same register, to avoid  accessing
the same register by reset control and clock control concurrently,
locking is necessary, so reuse the imx_ccm_lock spinlock to simplify
the code.

Suggested-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v2 changes:
    - add 'Suggested-by' as suggested by Victor Liu
---
 drivers/clk/imx/Kconfig              |   1 +
 drivers/clk/imx/clk-composite-7ulp.c |  10 +++
 drivers/clk/imx/clk-imx8ulp.c        | 115 ++++++++++++++++++++++++++-
 3 files changed, 123 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig
index b81d6437ed95..0d1e3a6ac32a 100644
--- a/drivers/clk/imx/Kconfig
+++ b/drivers/clk/imx/Kconfig
@@ -102,5 +102,6 @@ config CLK_IMX8QXP
 config CLK_IMX8ULP
 	tristate "IMX8ULP CCM Clock Driver"
 	depends on ARCH_MXC || COMPILE_TEST
+	select RESET_CONTROLLER
 	help
 	    Build the driver for i.MX8ULP CCM Clock Driver
diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 99a36a73dcb5..6cc1b8bb8780 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -28,6 +28,7 @@
 static int pcc_gate_enable(struct clk_hw *hw)
 {
 	struct clk_gate *gate = to_clk_gate(hw);
+	unsigned long flags;
 	u32 val;
 	int ret;
 
@@ -35,6 +36,7 @@ static int pcc_gate_enable(struct clk_hw *hw)
 	if (ret)
 		return ret;
 
+	spin_lock_irqsave(gate->lock, flags);
 	/*
 	 * release the sw reset for peripherals associated with
 	 * with this pcc clock.
@@ -43,6 +45,8 @@ static int pcc_gate_enable(struct clk_hw *hw)
 	val |= SW_RST;
 	writel(val, gate->reg);
 
+	spin_unlock_irqrestore(gate->lock, flags);
+
 	return 0;
 }
 
@@ -83,6 +87,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		mux->reg = reg;
 		mux->shift = PCG_PCS_SHIFT;
 		mux->mask = PCG_PCS_MASK;
+		if (has_swrst)
+			mux->lock = &imx_ccm_lock;
 	}
 
 	if (rate_present) {
@@ -100,6 +106,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		fd->nwidth = PCG_PCD_WIDTH;
 		fd->nmask = PCG_PCD_MASK;
 		fd->flags = CLK_FRAC_DIVIDER_ZERO_BASED;
+		if (has_swrst)
+			fd->lock = &imx_ccm_lock;
 	}
 
 	if (gate_present) {
@@ -112,6 +120,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		gate_hw = &gate->hw;
 		gate->reg = reg;
 		gate->bit_idx = PCG_CGC_SHIFT;
+		if (has_swrst)
+			gate->lock = &imx_ccm_lock;
 		/*
 		 * make sure clock is gated during clock tree initialization,
 		 * the HW ONLY allow clock parent/rate changed with clock gated,
diff --git a/drivers/clk/imx/clk-imx8ulp.c b/drivers/clk/imx/clk-imx8ulp.c
index 6aad04114658..ea596cd6855a 100644
--- a/drivers/clk/imx/clk-imx8ulp.c
+++ b/drivers/clk/imx/clk-imx8ulp.c
@@ -9,6 +9,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/reset-controller.h>
 #include <linux/slab.h>
 
 #include "clk.h"
@@ -48,6 +49,98 @@ static const char * const nic_per_divplat[] = { "nic_per_divplat" };
 static const char * const lpav_axi_div[] = { "lpav_axi_div" };
 static const char * const lpav_bus_div[] = { "lpav_bus_div" };
 
+struct pcc_reset_dev {
+	void __iomem *base;
+	struct reset_controller_dev rcdev;
+	const u32 *resets;
+	spinlock_t *lock;
+};
+
+#define PCC_SW_RST	BIT(28)
+#define to_pcc_reset_dev(_rcdev)	container_of(_rcdev, struct pcc_reset_dev, rcdev)
+
+static const u32 pcc3_resets[] = {
+	0xa8, 0xac, 0xc8, 0xcc, 0xd0,
+	0xd4, 0xd8, 0xdc, 0xe0, 0xe4,
+	0xe8, 0xec, 0xf0
+};
+
+static const u32 pcc4_resets[] = {
+	0x4, 0x8, 0xc, 0x10, 0x14,
+	0x18, 0x1c, 0x20, 0x24, 0x34,
+	0x38, 0x3c, 0x40, 0x44, 0x48,
+	0x4c, 0x54
+};
+
+static const u32 pcc5_resets[] = {
+	0xa0, 0xa4, 0xa8, 0xac, 0xb0,
+	0xb4, 0xbc, 0xc0, 0xc8, 0xcc,
+	0xd0, 0xf0, 0xf4, 0xf8
+};
+
+static int imx8ulp_pcc_assert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	struct pcc_reset_dev *pcc_reset = to_pcc_reset_dev(rcdev);
+	u32 offset = pcc_reset->resets[id];
+	unsigned long flags;
+	u32 val;
+
+	spin_lock_irqsave(pcc_reset->lock, flags);
+
+	val = readl(pcc_reset->base + offset);
+	val &= ~PCC_SW_RST;
+	writel(val, pcc_reset->base + offset);
+
+	spin_unlock_irqrestore(pcc_reset->lock, flags);
+
+	return 0;
+}
+
+static int imx8ulp_pcc_deassert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	struct pcc_reset_dev *pcc_reset = to_pcc_reset_dev(rcdev);
+	u32 offset = pcc_reset->resets[id];
+	unsigned long flags;
+	u32 val;
+
+	spin_lock_irqsave(pcc_reset->lock, flags);
+
+	val = readl(pcc_reset->base + offset);
+	val |= PCC_SW_RST;
+	writel(val, pcc_reset->base + offset);
+
+	spin_unlock_irqrestore(pcc_reset->lock, flags);
+
+	return 0;
+}
+
+static const struct reset_control_ops imx8ulp_pcc_reset_ops = {
+	.assert = imx8ulp_pcc_assert,
+	.deassert = imx8ulp_pcc_deassert,
+};
+
+static int imx8ulp_pcc_reset_init(struct platform_device *pdev, void __iomem *base,
+	 const u32 *resets, unsigned int nr_resets)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct pcc_reset_dev *pcc_reset;
+
+	pcc_reset = devm_kzalloc(dev, sizeof(*pcc_reset), GFP_KERNEL);
+	if (!pcc_reset)
+		return -ENOMEM;
+
+	pcc_reset->base = base;
+	pcc_reset->lock = &imx_ccm_lock;
+	pcc_reset->resets = resets;
+	pcc_reset->rcdev.owner = THIS_MODULE;
+	pcc_reset->rcdev.nr_resets = nr_resets;
+	pcc_reset->rcdev.ops = &imx8ulp_pcc_reset_ops;
+	pcc_reset->rcdev.of_node = np;
+
+	return devm_reset_controller_register(dev, &pcc_reset->rcdev);
+}
+
 static int imx8ulp_clk_cgc1_init(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -288,10 +381,13 @@ static int imx8ulp_clk_pcc3_init(struct platform_device *pdev)
 	imx_check_clk_hws(clks, clk_data->num);
 
 	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	if (ret)
+		return ret;
 
 	imx_register_uart_clocks(1);
 
-	return ret;
+	/* register the pcc3 reset controller */
+	return imx8ulp_pcc_reset_init(pdev, base, pcc3_resets, ARRAY_SIZE(pcc3_resets));
 }
 
 static int imx8ulp_clk_pcc4_init(struct platform_device *pdev)
@@ -300,6 +396,7 @@ static int imx8ulp_clk_pcc4_init(struct platform_device *pdev)
 	struct clk_hw_onecell_data *clk_data;
 	struct clk_hw **clks;
 	void __iomem *base;
+	int ret;
 
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, IMX8ULP_CLK_PCC4_END),
 			   GFP_KERNEL);
@@ -339,7 +436,13 @@ static int imx8ulp_clk_pcc4_init(struct platform_device *pdev)
 
 	imx_check_clk_hws(clks, clk_data->num);
 
-	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	if (ret)
+		return ret;
+
+	/* register the pcc4 reset controller */
+	return imx8ulp_pcc_reset_init(pdev, base, pcc4_resets, ARRAY_SIZE(pcc4_resets));
+
 }
 
 static int imx8ulp_clk_pcc5_init(struct platform_device *pdev)
@@ -348,6 +451,7 @@ static int imx8ulp_clk_pcc5_init(struct platform_device *pdev)
 	struct clk_hw_onecell_data *clk_data;
 	struct clk_hw **clks;
 	void __iomem *base;
+	int ret;
 
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, IMX8ULP_CLK_PCC5_END),
 			   GFP_KERNEL);
@@ -420,7 +524,12 @@ static int imx8ulp_clk_pcc5_init(struct platform_device *pdev)
 
 	imx_check_clk_hws(clks, clk_data->num);
 
-	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	if (ret)
+		return ret;
+
+	/* register the pcc5 reset controller */
+	return imx8ulp_pcc_reset_init(pdev, base, pcc5_resets, ARRAY_SIZE(pcc5_resets));
 }
 
 static int imx8ulp_clk_probe(struct platform_device *pdev)
-- 
2.26.2

