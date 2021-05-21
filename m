Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC53438BCE3
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 05:13:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238842AbhEUDPU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 23:15:20 -0400
Received: from mail-eopbgr10042.outbound.protection.outlook.com ([40.107.1.42]:11907
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233224AbhEUDPT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 May 2021 23:15:19 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gT4QOVaxqNKEau0yxOsNtg8TjLOjNM0+fplSQOA2FvICMvP1M6xWdmf8k9ApnEQC9Ma5yRbHnvemq9Ow13RQuEGR3oEWIU2ViNNjNKwOctMpP1lwQxaeFRv6iOs2E04pywL1lfYbrqGItf0jvK/Rim+TdfrpzMGmRtfpGf0jfv6tTK3Y9nAcofTSiqR6KtaUWihwoui1TsgkmYqOYMQUFvkx/W4KnwikZsOiV1294ct4Yx2CSTIKc7tAkowNAIcj1w0xrIppDUt8IrRzfwMUSuybA1HRIb4d6XYQBaYMAvjGe+d2lWfJjuZqxpWSz+/IevgITSG2wMVF/8HVkefFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1Hq1EmwIE255b0tJQAnaH9jqgm2rm5Rj7VDa7pnv0Q=;
 b=b0MVSa3dz3Wnzc6zXaNghWaOKxUDWJO7tf2sYn9ULyD/twQxGmi+FSuq1qnHEPkaIrBEueFE5t7PKpkzNxd4mrOCNLHoGzKKmE6ElXwOgTCAtrhBdEVZPygr4CaWu/8TNgly62UObVzyccu74ufkAZOYfM1nENgaC+sogs5GESpfvWs599wfpRWILYf3BSKwg37+rY9/OzZbGOw6HLWiPmyA2lVXVWDeNB2B7TYPdKm17QwzY2Hx+Yp8yw2Ps9Gp3Y1/Fau/kir53xiIoc/dF8kY/rn91esufpUc5X/4/F9Ze+iw091lqj/2jk8BPlNwvDl33R/V3NwyMkOJpk01gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1Hq1EmwIE255b0tJQAnaH9jqgm2rm5Rj7VDa7pnv0Q=;
 b=F6tf23HCjArVJ2vDRg3p4LFzxVpAdUnReTRu8UPuidUCtJOOJ9slezq68McAwFdgcviXIAfikZKt3UDYdiydIufJfy+PA/S/WSAYJxuBQYBT7WvTc6igelIJgNaVJGdsfvMszRZ0Wr49dcDwsar+NhNQmm4kY2Libxpbl+vuXHM=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4326.eurprd04.prod.outlook.com (2603:10a6:209:4d::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 21 May
 2021 03:13:55 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::b10a:ad0:a6f5:db9b]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::b10a:ad0:a6f5:db9b%2]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 03:13:55 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, linux-imx@nxp.com, shawnguo@kernel.org,
        kernel@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, Dong Aisheng <aisheng.dong@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 1/2] clk: imx: scu: add enet rgmii gpr clocks
Date:   Fri, 21 May 2021 11:12:47 +0800
Message-Id: <20210521031248.2763667-2-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210521031248.2763667-1-aisheng.dong@nxp.com>
References: <20210521031248.2763667-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 03:13:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b9bc8d5-28e6-4195-6ae6-08d91c067760
X-MS-TrafficTypeDiagnostic: AM6PR04MB4326:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB43266746A9AB8084BDCE410280299@AM6PR04MB4326.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: six4M8UvMVP8tYK9OKoDqFIwb81JZy6CZILWDgWzYQUT7F1Dj9UyoQi3tlDxaudanHoOYz+psbB5ylt2uCagirt9Nt7LLvFrSoZSVUSOJjWEgR95bPg6T3PALkvGXs2249imYVHLrUMVB531Dt+z/osOIc4tBnbXcP6OIO0yACoBPTMN4HIszRKYUupNxmapZuo4vxBrQQCKEC2ngKQ+K2DNqYTnbzz61UCXmFKf6YXXq8Y0+r9kwryaeNCsHfzBl2Zxv9kOnRaqtgJ3o5bJOHZcA1ivSAHYc5cqGM8LF+XTA9v1zA+0Xo57jb29XRzT+r9DRSVTtR1EFVXYHF0e8T9DpnBtZjSbjDpYR4EUyj2ira0jec/l/tSE6GuWicJe3LTJSLDxqMLQhgfoZirLAlXcZnoFQw6ZKVEk1iSlbJWnyRh1hO54ZX4S8fJNpuPYMRvIlCnN0c3TX3H79M37uTsF0UoaiQLVUkXYpkclRtrQYyUmlnslZdEIjT/w3RAwF3DJLy6UNUzBAHUpf0od47m3M2RihQKjTdmaAoGZRcMr2hao68hN5ydYa+YexdYV7cyTJ3RNHo5gT8O7dTJsKcDwRYrOHK3BzV+ShlXAC6yDSd2X36IyfchUzU0R1VJN0Msd0QjVVMBYbN+E8WXp2ajh4g0maVdBbZ9PVZA7aS67wzvjOY6Cl8HMGRPMLyga
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(396003)(346002)(136003)(366004)(186003)(16526019)(1076003)(5660300002)(2906002)(956004)(6486002)(6666004)(6512007)(38100700002)(6506007)(316002)(54906003)(86362001)(52116002)(4326008)(66476007)(6916009)(83380400001)(36756003)(8936002)(66556008)(66946007)(478600001)(2616005)(8676002)(38350700002)(26005)(69590400013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?16lDwgsIxfIL+QyoNCXvcyFCfcySIzU9Bw/8b/F1euZemS4qBBvLCsaAV78a?=
 =?us-ascii?Q?RH+mcXcvPhIIhi9vphKCgbOy3ir+ZCUTZ8jMvG4Ma1zWCJ+2ZZedUajBpR8I?=
 =?us-ascii?Q?mlmp4QAbY5apX5f9DGTR+lXohNJ89PbgQ3TLGtG0yj95mdkeYxP/ECTlteh4?=
 =?us-ascii?Q?1QNpb2br0ml7HX+68witf3tQmv3nfbUlg8LQbb64VqKYCIfTd4OZjgAWxszj?=
 =?us-ascii?Q?PaGorLTbNBwYyDRQO+gBPDKSNtY8VHI1h98LNu02+z9uH3855tOnnYnf7ri/?=
 =?us-ascii?Q?oAt6i9ISGfCLUeGxhoHOzRz/Dx2BVrgcON3FDujfFGfQwfNLd/MQ0UrCtpXD?=
 =?us-ascii?Q?g4YimWlhK6Qrkm0OyQ3kFMXQgPKGvobkuIwWENxkDAmqceF/2Vbym09yuSoJ?=
 =?us-ascii?Q?Dq6munzc3+raOh54+HRaSMrPmQ1ezxfl3uzWrNRYbIm/PJWpZGRvJdirGkb7?=
 =?us-ascii?Q?fulHZtlsPuRw5xWcKKmAzxngPmsvTdCz5vX98i6Ro6YAMmbywNdluj3cJBby?=
 =?us-ascii?Q?KfQw+0irV1hGKWMkVQzdO+/E6vU8yovnoGZM+Yb5m60+grvqELbGQuvMjHnN?=
 =?us-ascii?Q?3gizndK2xCeCRPzSIk4OecXme8JrMwE1R79Z15LfNwqvi/vyuT0dYzUbdZjq?=
 =?us-ascii?Q?lbsKpIKuMbcCGP7QJpz4xovY7XAD7w3TWY8aBvg0Byh5XzmQvahroBsGpd3s?=
 =?us-ascii?Q?73nQnL7l4HMZ+J9DnKvJ/WkVc3OuIE+Z1/Ktlh6geJ8VgEhZaC7epW2yF6u5?=
 =?us-ascii?Q?UtSZJ5B2J6KlIigrglAOQmdifUTNtRZ70FjWmYMWEw9wqpYkuMWSFIaJVO/F?=
 =?us-ascii?Q?EswyAYXwq6mr/4gKFxG59I7y+3oL2tXiTprybp6pVzpjPlhVl1mg92MgXLHg?=
 =?us-ascii?Q?nokssRLS4hV5rZMK72J0DI07tIU7iCR7oacJDHRzKW/wnRcJ2U6R+dK7sRc3?=
 =?us-ascii?Q?RwWe7+b5KDvK0MQL6vjYkDYNUQdXP6VPzM1G1ZsGRhn7SaoCoBrJslJ6TZ2b?=
 =?us-ascii?Q?07zbW6eyord53IFBLcEmL+jYogpMz21jBl3ymQmvk0e6bl41Pz0929W0XiUq?=
 =?us-ascii?Q?Lt7z9Hd9ALVMa08+i9OyDeOvLa9mNZOISSFLhlJQ91BlAsAiGZe2TptaqtyM?=
 =?us-ascii?Q?A1gnjq+dRFB32rBVf5EakRIow6l8JNvIC7jfeT3UC8Y87Mtodx58Ve4f7LBK?=
 =?us-ascii?Q?vDUO5KRoCrFlB6G36eg6d6HMfhqf5kchIr1FDNqumH7l6+1RPUKClE5Hco/5?=
 =?us-ascii?Q?RF5y6HUlVQRlxBxqdVTDCvh+MjtmMaDUnQ+yM3v2HKUIKia1e0AULNUkIlW4?=
 =?us-ascii?Q?ZkMrrj1oa75+30OPIEf3NKTS?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b9bc8d5-28e6-4195-6ae6-08d91c067760
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 03:13:54.9513
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ia5mmnvLWO73hJdssDSAiGyPoaKJ/Vb9IC8APICGxspLdPzUxY5iCDL/M4GqkG7zUmxyOaIxNls6S3WoS0bOiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4326
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

enet tx clk actually is sourced from a gpr divider, not default enet
clk. Add enet grp clocks for user to use correctly.

Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/clk/imx/clk-imx8qxp.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
index 88cc737ee125..f3cdd6449212 100644
--- a/drivers/clk/imx/clk-imx8qxp.c
+++ b/drivers/clk/imx/clk-imx8qxp.c
@@ -25,6 +25,16 @@ static const char *dc0_sels[] = {
 	"dc0_bypass0_clk",
 };
 
+static const char *enet0_rgmii_txc_sels[] = {
+	"enet0_ref_div",
+	"dummy",
+};
+
+static const char *enet1_rgmii_txc_sels[] = {
+	"enet1_ref_div",
+	"dummy",
+};
+
 static int imx8qxp_clk_probe(struct platform_device *pdev)
 {
 	struct device_node *ccm_node = pdev->dev.of_node;
@@ -80,12 +90,16 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
 	imx_clk_scu("sdhc0_clk", IMX_SC_R_SDHC_0, IMX_SC_PM_CLK_PER);
 	imx_clk_scu("sdhc1_clk", IMX_SC_R_SDHC_1, IMX_SC_PM_CLK_PER);
 	imx_clk_scu("sdhc2_clk", IMX_SC_R_SDHC_2, IMX_SC_PM_CLK_PER);
-	imx_clk_scu("enet0_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
+	imx_clk_scu("enet0_root_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
+	imx_clk_divider_gpr_scu("enet0_ref_div", "enet0_root_clk", IMX_SC_R_ENET_0, IMX_SC_C_CLKDIV);
+	imx_clk_mux_gpr_scu("enet0_rgmii_txc_sel", enet0_rgmii_txc_sels, ARRAY_SIZE(enet0_rgmii_txc_sels), IMX_SC_R_ENET_0, IMX_SC_C_TXCLK);
 	imx_clk_scu("enet0_bypass_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_BYPASS);
-	imx_clk_scu("enet0_rgmii_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
-	imx_clk_scu("enet1_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
+	imx_clk_scu("enet0_rgmii_rx_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
+	imx_clk_scu("enet1_root_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
+	imx_clk_divider_gpr_scu("enet1_ref_div", "enet1_root_clk", IMX_SC_R_ENET_1, IMX_SC_C_CLKDIV);
+	imx_clk_mux_gpr_scu("enet1_rgmii_txc_sel", enet1_rgmii_txc_sels, ARRAY_SIZE(enet1_rgmii_txc_sels), IMX_SC_R_ENET_1, IMX_SC_C_TXCLK);
 	imx_clk_scu("enet1_bypass_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_BYPASS);
-	imx_clk_scu("enet1_rgmii_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
+	imx_clk_scu("enet1_rgmii_rx_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
 	imx_clk_scu("gpmi_io_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_MST_BUS);
 	imx_clk_scu("gpmi_bch_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_PER);
 	imx_clk_scu("usb3_aclk_div", IMX_SC_R_USB_2, IMX_SC_PM_CLK_PER);
-- 
2.25.1

