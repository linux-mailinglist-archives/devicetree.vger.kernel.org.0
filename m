Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69D5F40A6D2
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240136AbhINGnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:43:07 -0400
Received: from mail-vi1eur05on2050.outbound.protection.outlook.com ([40.107.21.50]:22625
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239015AbhINGnF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:43:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYV7aiFnStjOItNeLK/FOo/V391XoBhlMdikBHqApJhgvhF58lxFRjgXK4yrn24zBgOsMb/feil+MsweVNbZ0nIM1ZJDvAIRCyh0xUkideBlO1PboSLofSr8oO4eb6h8YjBGTosxj0PVBM49mKhUe62+4YfIzAIp1qW+KtvyegIImZWZ9vJfP2khqEaJ3osNnd0pmc7SiwxYIET9rsE7BegKmP6DeoQMyaE2bgI9sqveXu2NQb3Y23Y9NK6dBisqBUYtgR2qhZ+osk78xYEBzVS4wxHMtaF3cS4JSud4e910y29UKebten4btpV+U2QrC4EHR83PdcBtBqxT52xDNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=fdv8rIDEd3PXz1s1X5tqNDscqBBXgW2KfrZsS44Yegw=;
 b=eTCnYxcTdJwpTAVgKt2HQSIsw0hYIcQodY85xxo2IrYzOTZQP0PkQYCil99tXIlN7E8HQRUemFM0X1QtdnOa/TFo/n8GnySYz1T6l8z8SrkBf5wYTBVqYhkLgWrs2b60UDz9r+eCXXpyk2c0RN8wvqTsYwRfzpF26xFwMh7oD3X2/DW9ReNxrtMJ7Bi7c7veIo+DA8A9u1jyNBsSW/RpjaTTkGGeAxE0i+6gDVSr42kaOj4ZufyxoB4UTbTncH33eRKTXjligj/QOanWAj3MgTb3SiBO/bxL2Uo/HXhouJ1iF3y6MbuL0/fnqbFf9TFv4151WM/ySYhLTJucv1VtWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fdv8rIDEd3PXz1s1X5tqNDscqBBXgW2KfrZsS44Yegw=;
 b=mHkY/NjbyMfhRcUHS0J33HYr3tRBsJoiiVkAz2OxEbTDd8WQSe/07lC70TqRUV7FQbXiPiaCjtOvVWp78VFuF4Ks5SIHyn3J41+oF+szxqQ7v/g6Rz5CO2FtPiwPrvsxE6Mld7cVVzTnj1GCnchropPzH51+VFrpKYDkMCQOgz4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB3PR0402MB3658.eurprd04.prod.outlook.com (2603:10a6:8:2::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 06:41:44 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:44 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 9/9] clk: imx: Add the pcc reset controller support on imx8ulp
Date:   Tue, 14 Sep 2021 14:52:08 +0800
Message-Id: <20210914065208.3582128-10-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d9dc45bd-79c0-4a3c-3fc0-08d9774ab774
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3658:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB3658EB775CAC4E9D8BD8390387DA9@DB3PR0402MB3658.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0gFVr82+Il88uaZt0DEywhq0GozPu2tSi+KEDDfWVQQDzhcurxF3NWk7s3WfoGg6wfQKAjnpyE3lJDMjaTPAZ1q6BU1e8+lsFJe0q5L5lr0/yO9pTIR0p1ODWUZQ6tYfIzCEoHdUo6JlBXUkudEJ5jp1QqN5Fh9eSB3di6XEJQf1X5+yydQ3DuNj7g/+jdSrIp1robNSREAT/o1wO5OqsmbmFbqYj6nhqQovvz2FeFafdHPk+hwClIvxpUNKB6rdMHWJUadwCncEp5myToI8Mq+OCyT4YlmQrFQLGbeC+DeWc5DqBAvo59o8KkWeFxhcOWGwJm4uxHczQ40IhVvQoEk1r4AFuy53TDtxZR/Fz1/brab63K0gtUd+Sbm3gHVgKeI1E2jTzp1+ZH9E3elJnLt9lzlNWmIPYnjfm1ZAl8PL6wT3T0e13F+onQpFYEHt8fQJkLICC6fJdApDsJdvh6bnsYMAFJIELhsC4aATP3yXJuW2pA7q72PnIMEeay37EfASgmqQ1lUgcjwxx8lUV+LJzho8OJHYqlFTu94v1rEogRCqPW/YB8hiZ9Tcs+RzVylDUlkA5+yGGsWJgKpPumuDdp58kc5Wqxv4ENi+twsKMVrYdetr7PvQksPZR+xylySLJ3hVNLYiWFq0LkZUgVP0UTH9Mv/UQIfV02pqEadKE0JhMlQxHNoX0+WS8dgbtoNlh2pJBi/wCuG4oHLCFTGCAyz9KjRvHU24FDPg79g=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(39860400002)(376002)(366004)(316002)(4326008)(86362001)(52116002)(5660300002)(186003)(2906002)(6512007)(26005)(83380400001)(956004)(6666004)(66556008)(66946007)(66476007)(6486002)(8936002)(38350700002)(38100700002)(36756003)(8676002)(1076003)(6506007)(478600001)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D/AeAziRz7Btr4oqjPTCeYn127/7lDZK97BdQfZuPufEoUa8VEII6Yf/9w81?=
 =?us-ascii?Q?oGFttTEgxHX1L3jtIrrsI5A4piwwbghwDkNFxl8Th66krpYbaMTu7V+Zivwy?=
 =?us-ascii?Q?fCWcWFV3BfrNunwr0JT+z5rda00es5guxs7iTb7z6tSgNmVQNuaUdJ1VFWPC?=
 =?us-ascii?Q?GhpoDX1MPgdRcjJ8r5kobSrvuV6/U/4udxczZx9UsUZPECT/ZNlJo2p0M+Y7?=
 =?us-ascii?Q?iGuTqUJ+/5DQkhtEF+H8ALVB7ttU54LCTXNdVayRG4H2jU8ehd3gp9E3KEaJ?=
 =?us-ascii?Q?aXsKxQJiS4ocy3cpV+fWjWVbJ6kNkPoY+JCSoOVRL/Op8ZnM5L+VTrKflCzV?=
 =?us-ascii?Q?1xDHJrolcfWg5bipn5lcxfDBP/H0/H7w5SPuGYwJ8OVnEVdOMCa29/yG8Rdj?=
 =?us-ascii?Q?JvkCYe3RynHPjuh2oeDkFNnkEv7EqrWD3rsEpasnkbvf2WY58lqcfXbREaRt?=
 =?us-ascii?Q?HywbLaVVqF4o6u20baIDvdXmoKITqQxeQJFxIfE5wg4EpjLFf12RxRmT9Quk?=
 =?us-ascii?Q?GN8p5XgOD3U0l57MhzK9pof8gfOP3rPop3IUPxJZYCS2Pm2qN+8CsSbAWi37?=
 =?us-ascii?Q?6gP6o7YTPtMY7K5a1+3eSMxtBViAqKZLiCQT2OtJCrIjY7Oyly6/8P7IDkqR?=
 =?us-ascii?Q?ES5H0I6vgZE1vIDrkqvONVOongm0pEouTfDuODTdM6zN2JASCYBNlP6v2IjA?=
 =?us-ascii?Q?CucZbbpAjN32rewZZRU2x+iMd4Aw6la4JmRGiErrJfpmQLkH9CTuIbxItHPP?=
 =?us-ascii?Q?WcmJdjQyaJh5pQPIMHspBVv+4FqCsM3ferksv6WG8BDsUqOExGmiYNyGbW0W?=
 =?us-ascii?Q?Tv/C1fMDosVpvKt7qrOUPC8xG+sk5PEE2jFj9mttULTGAFP2Axh1NQyDzICZ?=
 =?us-ascii?Q?E+/Gh/cdIbrWhn0bUJfnKH3oVhRZ5eDUczzIe9qmw0ipo6bf+a0GDuTfQ5bT?=
 =?us-ascii?Q?Jybgh3UkWKX4iwxzL6wxN0jZLVznYV0GYT0eO5mGDjq1aLlyO8gjOi8UdbAg?=
 =?us-ascii?Q?294tf4no5ds0FakNdnTOTRkj1xwyVCb/noxQO5Pyq4PWIPevK0DaNlZxnmOg?=
 =?us-ascii?Q?qN2R1upJQY8TG+FL/RcofJmr80POSRG4oWvaAUYCHtYtR7K9d3koHAH3cGa3?=
 =?us-ascii?Q?ZsMeGmgbSVGGD8FSH5/dNucy4ULm/dHIO5sJ0HP6Kgy9XfCh4T/6jRxPui7S?=
 =?us-ascii?Q?9oKhTznGQgpWi+MbJ73ytC43o3PuMhLGcG2BeYGrshGvceEn0xL2zBiCYhCK?=
 =?us-ascii?Q?RvPal6SBaY3g/NW3hCVhjoTgNfwV53oDEpPHD04FFLJIUs96CLMjrVWlwUL1?=
 =?us-ascii?Q?/XLnNgliOfHG4D8Rogbp6ixE?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9dc45bd-79c0-4a3c-3fc0-08d9774ab774
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:44.1836
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sEg1e+fwazhSLkNFMw/81qeCxImEt6MbV0nJCEdTByaUPJIj7sjBNl0KlHej2iu6BJYM+gVMNeBAGeRelJhAsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3658
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
  v3 changes:
    - remove the explict selection of 'RESET_CONTROLLER' in kconfig
    - add some comments for the spinlock of reset driver

  v2 changes:
    - add 'Suggested-by' as suggested by Victor Liu
---
 drivers/clk/imx/clk-composite-7ulp.c |  10 +++
 drivers/clk/imx/clk-imx8ulp.c        | 116 ++++++++++++++++++++++++++-
 2 files changed, 123 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 9ce8c630ee32..89106de16a3f 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -29,6 +29,7 @@
 static int pcc_gate_enable(struct clk_hw *hw)
 {
 	struct clk_gate *gate = to_clk_gate(hw);
+	unsigned long flags;
 	u32 val;
 	int ret;
 
@@ -36,6 +37,7 @@ static int pcc_gate_enable(struct clk_hw *hw)
 	if (ret)
 		return ret;
 
+	spin_lock_irqsave(gate->lock, flags);
 	/*
 	 * release the sw reset for peripherals associated with
 	 * with this pcc clock.
@@ -44,6 +46,8 @@ static int pcc_gate_enable(struct clk_hw *hw)
 	val |= SW_RST;
 	writel(val, gate->reg);
 
+	spin_unlock_irqrestore(gate->lock, flags);
+
 	return 0;
 }
 
@@ -84,6 +88,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		mux->reg = reg;
 		mux->shift = PCG_PCS_SHIFT;
 		mux->mask = PCG_PCS_MASK;
+		if (has_swrst)
+			mux->lock = &imx_ccm_lock;
 	}
 
 	if (rate_present) {
@@ -101,6 +107,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		fd->nwidth = PCG_PCD_WIDTH;
 		fd->nmask = PCG_PCD_MASK;
 		fd->flags = CLK_FRAC_DIVIDER_ZERO_BASED;
+		if (has_swrst)
+			fd->lock = &imx_ccm_lock;
 	}
 
 	if (gate_present) {
@@ -113,6 +121,8 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		gate_hw = &gate->hw;
 		gate->reg = reg;
 		gate->bit_idx = PCG_CGC_SHIFT;
+		if (has_swrst)
+			gate->lock = &imx_ccm_lock;
 		/*
 		 * make sure clock is gated during clock tree initialization,
 		 * the HW ONLY allow clock parent/rate changed with clock gated,
diff --git a/drivers/clk/imx/clk-imx8ulp.c b/drivers/clk/imx/clk-imx8ulp.c
index 6aad04114658..6699437e17b8 100644
--- a/drivers/clk/imx/clk-imx8ulp.c
+++ b/drivers/clk/imx/clk-imx8ulp.c
@@ -9,6 +9,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/reset-controller.h>
 #include <linux/slab.h>
 
 #include "clk.h"
@@ -48,6 +49,99 @@ static const char * const nic_per_divplat[] = { "nic_per_divplat" };
 static const char * const lpav_axi_div[] = { "lpav_axi_div" };
 static const char * const lpav_bus_div[] = { "lpav_bus_div" };
 
+struct pcc_reset_dev {
+	void __iomem *base;
+	struct reset_controller_dev rcdev;
+	const u32 *resets;
+	/* Set to imx_ccm_lock to protect register access shared with clock control */
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
@@ -288,10 +382,13 @@ static int imx8ulp_clk_pcc3_init(struct platform_device *pdev)
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
@@ -300,6 +397,7 @@ static int imx8ulp_clk_pcc4_init(struct platform_device *pdev)
 	struct clk_hw_onecell_data *clk_data;
 	struct clk_hw **clks;
 	void __iomem *base;
+	int ret;
 
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, IMX8ULP_CLK_PCC4_END),
 			   GFP_KERNEL);
@@ -339,7 +437,13 @@ static int imx8ulp_clk_pcc4_init(struct platform_device *pdev)
 
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
@@ -348,6 +452,7 @@ static int imx8ulp_clk_pcc5_init(struct platform_device *pdev)
 	struct clk_hw_onecell_data *clk_data;
 	struct clk_hw **clks;
 	void __iomem *base;
+	int ret;
 
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, IMX8ULP_CLK_PCC5_END),
 			   GFP_KERNEL);
@@ -420,7 +525,12 @@ static int imx8ulp_clk_pcc5_init(struct platform_device *pdev)
 
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

