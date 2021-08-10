Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A49B3E5355
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbhHJGSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:16 -0400
Received: from mail-eopbgr150040.outbound.protection.outlook.com ([40.107.15.40]:48612
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237022AbhHJGSP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHdLhTqG/IGJL9AsM7s+kKOC+iP0U/ezW7HR/mtksm+ptJ8QakAKrkpm6ULvY6AP19G1vB6m7Ow7QGv0JSz/Yi/c8t4K99eWIV9QkGkOhVk+EYAKH/GoBieCQe+SE6/yUM6uUPXV+IrcNgsx4d1bJaFJhMNYZKIDH7w0ZOY56kbVwVXbmWETdCRFZ9k5zAyyMs0BoG+ZaioMT70meL2f4VCFTrPZigz/bd1xr6J9dmyvDNLhtmcDxFrZWoXGpUBZEdiGLv5FSz7t0hsjO8BzSlCaG9pK8jwglyy1Y/NUM7EHp5IspF2/UjqJq1hNyaHe4pKm+GBEg6X5mMpE6f8mFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CAo6Q8O9hvRQ72ILJPGvWvQ5c1TsXGHVWiuPsYU6F8A=;
 b=DXXPMnXbekct3Xt6V6MwA+k0S26O9/245E3nZHFfM2Ir9w3r5b3bVPuPhiY8GdOOAoGbIVsBhnkXe6sYQB2Z+9IyEFInt4aHqnGVRF4ZlvKLDNltpzVAL8r58DEtN/7ZQ+z5yPlLd19jGfeAF0XjOkBCgfC2lI/Fzzo72zqOkXRd8yYXKjzTLZyMVSAQwATtX7GSaejXBaFmQl9ItSk4oa0aSE2IVRdjnLN7W2yS8o28qzA8zTcwh35EDrntZo2eXNaRA6/oaVdIQwQ/XXA9J9PpnFpvCflWFV2l/gLfJqwlNYT+eKvc+0YsqzRORLIRaVLgBTaKIIGLWGV88/LiZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CAo6Q8O9hvRQ72ILJPGvWvQ5c1TsXGHVWiuPsYU6F8A=;
 b=McMi5h7CqZUQ7bK3q+RHHPlnwPY+mxjQG3bsnxXJNXRBf8ToD1eJ1MBp77svKrVa3CYoj2xzS+17j5KJ8TYRCwCm6MKDk5qvPb0xWN4VmxO2bNw6FjBJwodfgumo5ZhijOmqQAu6ORbDKKf/vLL0bPYlnlvvVt2cuvfNk5eR+68=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:17:53 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:17:52 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/9] clk: imx: Update the compsite driver to support imx8ulp
Date:   Tue, 10 Aug 2021 14:28:14 +0800
Message-Id: <20210810062820.1062884-4-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:17:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b25a1aa-3ace-479e-1cf2-08d95bc695eb
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7563F0AB070340A9216B962487F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x2djUkgBdWyEDCRn2FZ7be0GZt7yg/wV4a7n4Wa6PiZ2TERYpwnydwWhvFNuSn9zB0+DVnV0qFgRCg/IWw8Vfygw+6eIC4U9L8dgOVZYG0nqbiTSv5GsxdPRlrXDZI/hBtVvr36i+oAzyfM6XakC3LhlbQspt0qCkALZqpPBX6C7WmgrC08aJXZejdbd8zEgPSJXepnoJ9nm8PpDqLOCs86lVzHnzBXqOG3T/fg6g9Jz4RPjuexZlNDSbYDqeoCFZxoO6bBK8O6HadxlA8K3KH5El1fNBwlRHIrUmuCClCNeROtc8k8kT/EWglmkjWK4YPF7WCYLYnq9L77Nt5LlDSk3HWsIFfGbaovml1IVTxM3OnuFSZhgSicdWnLsoI3jdOcglIghYHbkhjuTNjG80V0ut6OJCDXM3I4vfQ37iIytgsyoMKnXlNSb9N6vXqx9PBLPZdXNb2IiXy/T7VFKfaNa8lXgiRZ341vuO3OhBi6HXgGcA3e22pLB5n8zAJmmHq9q0GKG+dmxY5+CXzmEAwFw4sr18UCyTcEpW31Z8vTeph6C0Up4cm6l5UG8VKfWtIH2yh//LtnytEvMW+S89ShK6/d8GPeO2ywkmcintqf/XGu6lOPJjUf6gV9bPSpGXJ1JIzGDVpNtDDAwH4voXJ59TEkv6BnGWZNX2tkWIX9i3Rn8CHKPjaZYFQ7K+C4O9YXU2kXhpUQQS7N59c21EbTey+SOJ4vMLNwRPQDh3/8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(15650500001)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4aY05Jl2My1+5yNs1vRFHAA9BsNLgL8WueQEWi1IqEpACz9/09LXHx6ZeWRb?=
 =?us-ascii?Q?IvTb0S7ebQX54Xg0CvdBQGmqpmGM96gQ+TaY5osuJG+sYTywKN9BJf7UX0H2?=
 =?us-ascii?Q?aX//VigMnLlnq38yi9Rg0SdmXaLUKI+gqT+lylUj+kR0Nbc/vSraVkMolKCM?=
 =?us-ascii?Q?T98xoBuach5/zwvlkbyYeBqp1IT/vx1YWFVN0vhWMvm+ZLpLcI1+zbIfAgOf?=
 =?us-ascii?Q?aiRIfbZAml2EeO0rcjraiAk6+roTbiYB1HlFAQktTZcxdlzBv52m27fjjN04?=
 =?us-ascii?Q?w42f8gbiO8OPxG9Ko1De8/g2Dz4+Ey9XAl1yj4Fqz8dNx5Ypgb+1RRSPcQHx?=
 =?us-ascii?Q?pMVSdGXaH5O+5INp4YzaP5BL+hxAzl6g3vqkSkv9OQ9FO9XZhQM5ZPyMTbCy?=
 =?us-ascii?Q?TD0Z5p8h2Ga/fTuaVtgk2zS5qUbSPGzBpYpKVx1WBawb93faTGa3Fmm2MU6B?=
 =?us-ascii?Q?XxZWIrygEFVvFqfAoDKwRxbK/NomtvdYI/Lr4El65GvktTrfG2y78CcYQHtk?=
 =?us-ascii?Q?g51OW6RE9NczCec8P5u8lLfwyWAMEB9P09zUc4/RrBcYDOSi2S/dCCF7T6Zs?=
 =?us-ascii?Q?n7EK6hvB6kG1G0Y36j5NPfKpLEJ/heFupUKvYUmfbpcX1w/Rw0x2MveixpIM?=
 =?us-ascii?Q?FS5MTyTHCrEjiMx6zazAZaVx1Og0E+aRAlet4ytPCt0nJxlf7gVv13zvssZP?=
 =?us-ascii?Q?xzjE6Dv0yhCuPGKlLco6pnYxfENJbL7SJP8mfAXpfHVVst79QiF0vdzkoZzI?=
 =?us-ascii?Q?2uC8jwF6XOcSW5W7FAVpswZ+oX2nKL/T8Oez4bCN05znLvLIP+/7ZzO17aJP?=
 =?us-ascii?Q?zj/4vuAyS4gLsmfxhJxM6016Ve1EAJZHr2MmWWy0HLsVhOjSwX//L4PIfX69?=
 =?us-ascii?Q?yQkpJNPni3Dgnmi2fwluNP/xPh22P7NuKA5eDOI+LCIJjbw1PXRdkPfR0iff?=
 =?us-ascii?Q?czX46kLgWprXoMJOGQRCtK3hZ2QCuPGpyPLGlco1Oi2wdH6X9ZuNwnXjiVoK?=
 =?us-ascii?Q?JS3dhmaNVN4+nzV3L0ZLarOrUL1D+GJnaBk1zMHuMICHjLsnHDw6+1NjMRe9?=
 =?us-ascii?Q?qwKtYMDmJvrQlDlnV2IJpFAQiD6p8SQ2nol4nPsW+TVWzh5PtXs4T4QYeGbe?=
 =?us-ascii?Q?XJzWtm1bci5HXcUO71vPw0rYPrQU3eAmCaa+fPe9hH2vk1GPx+aP79M2HXM3?=
 =?us-ascii?Q?Q52VYpPh1bUc0rKn2yJHTTkhU4VxGytxAEMB6pEATt039AONP/ReRsv6qTys?=
 =?us-ascii?Q?tdClRZIx4ijJXncpyNtxMEGj5Aa44fTPj+ymXSv/bx81ij8VpZfVzZDM1nlL?=
 =?us-ascii?Q?LKvNfKPnbsnF/RY59c7jttIe?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b25a1aa-3ace-479e-1cf2-08d95bc695eb
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:17:52.8592
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zNB0QKjtVeY55uLdJkjT/rrWF2p3mBM8dgn/8L8siP/LtRrdo6WvUutoa97VYHl9RGVObwYS75qZSPO87wbBZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On i.MX8ULP, some peripherals have a sw_rst control resides
in the per device PCC clock control register, all others are
same as i.MX7ULP, so update the 7ulp clock composite driver to
support i.MX8ULP to maxmimize the code reuse.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v2 changs: no
---
 drivers/clk/imx/clk-composite-7ulp.c | 61 ++++++++++++++++++++++++++--
 drivers/clk/imx/clk.h                |  6 +++
 2 files changed, 64 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 7c4f31b31eb0..9298bca7a62a 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -22,11 +22,50 @@
 #define PCG_PCD_WIDTH	3
 #define PCG_PCD_MASK	0x7
 
-struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
+#define SW_RST		BIT(28)
+
+static int pcc_gate_enable(struct clk_hw *hw)
+{
+	struct clk_gate *gate = to_clk_gate(hw);
+	u32 val;
+	int ret;
+
+	ret = clk_gate_ops.enable(hw);
+	if (ret)
+		return ret;
+
+	/*
+	 * release the sw reset for peripherals associated with
+	 * with this pcc clock.
+	 */
+	val = readl(gate->reg);
+	val |= SW_RST;
+	writel(val, gate->reg);
+
+	return 0;
+}
+
+static void pcc_gate_disable(struct clk_hw *hw)
+{
+	clk_gate_ops.disable(hw);
+}
+
+static int pcc_gate_is_enabled(struct clk_hw *hw)
+{
+	return clk_gate_ops.is_enabled(hw);
+}
+
+static const struct clk_ops pcc_gate_ops = {
+	.enable = pcc_gate_enable,
+	.disable = pcc_gate_disable,
+	.is_enabled = pcc_gate_is_enabled,
+};
+
+static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 				     const char * const *parent_names,
 				     int num_parents, bool mux_present,
 				     bool rate_present, bool gate_present,
-				     void __iomem *reg)
+				     void __iomem *reg, bool has_swrst)
 {
 	struct clk_hw *mux_hw = NULL, *fd_hw = NULL, *gate_hw = NULL;
 	struct clk_fractional_divider *fd = NULL;
@@ -76,7 +115,7 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
 				       mux_hw, &clk_mux_ops, fd_hw,
 				       &clk_fractional_divider_ops, gate_hw,
-				       &clk_gate_ops, CLK_SET_RATE_GATE |
+				       has_swrst ? &pcc_gate_ops : &clk_gate_ops, CLK_SET_RATE_GATE |
 				       CLK_SET_PARENT_GATE);
 	if (IS_ERR(hw)) {
 		kfree(mux);
@@ -86,3 +125,19 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
 
 	return hw;
 }
+
+struct clk_hw *imx7ulp_clk_hw_composite(const char *name, const char * const *parent_names,
+				int num_parents, bool mux_present, bool rate_present,
+				bool gate_present, void __iomem *reg)
+{
+	return imx_ulp_clk_hw_composite(name, parent_names, num_parents, mux_present, rate_present,
+					gate_present, reg, false);
+}
+
+struct clk_hw *imx8ulp_clk_hw_composite(const char *name, const char * const *parent_names,
+				int num_parents, bool mux_present, bool rate_present,
+				bool gate_present, void __iomem *reg, bool has_swrst)
+{
+	return imx_ulp_clk_hw_composite(name, parent_names, num_parents, mux_present, rate_present,
+					gate_present, reg, has_swrst);
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 964f5cddc7aa..2acac152c4aa 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -237,6 +237,12 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
 				     bool rate_present, bool gate_present,
 				     void __iomem *reg);
 
+struct clk_hw *imx8ulp_clk_hw_composite(const char *name,
+				     const char * const *parent_names,
+				     int num_parents, bool mux_present,
+				     bool rate_present, bool gate_present,
+				     void __iomem *reg, bool has_swrst);
+
 struct clk_hw *imx_clk_hw_fixup_divider(const char *name, const char *parent,
 				  void __iomem *reg, u8 shift, u8 width,
 				  void (*fixup)(u32 *val));
-- 
2.26.2

