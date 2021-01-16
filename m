Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11FD62F8C51
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 09:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbhAPIqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 03:46:54 -0500
Received: from mail-vi1eur05on2058.outbound.protection.outlook.com ([40.107.21.58]:1312
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726045AbhAPIqx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 03:46:53 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Glqg9uA9uuiQGkxTXF4No2OQXGeAtX904T3UoAojdG3YSPLoqgHK0OWKMyxDmjgom1vFvjxlNTpb7vxgzT9kgVcErp6TYjynizmIV/7xFbVeyuOjPX2afmJNJ6x+7bftgd5Wf+U4/2w88IaM2dZEe+vrGsSm3I0nr2xeblmrANkyBwOthzpM1r+odOJnPX8qZsm3UIsihcHea9gpat9JR0s8mBjFKhk4capTqdT2ApMQxfH5JINRuKr79JRGo5RLC1OP+QQF7UkXPYOoQjjcgFjgXBMIEDzm/N2J9gNDx3mdVRQNrIldPgX3Xh8fa4KSaoHnhD32E3aROy5mJk+r5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A4dAXkz5j1T17qQKlfRhlaQDpcF26qmk2Gse+t5FoEI=;
 b=nglo7SWh0jNz+gzHMGX5yejGTgNJVrYjaYoQZG/kaJPO/JNVl6q6MUvcz4MPsfM64t+M4VoIlHYknqhChj22uAgtyPowUv79qjkkbg85YE4IHSSMs75M5aZAkvPcnLbfIFt+zSyGC0vZRODOKVQfpHYA2Mrhhq7p2mToc2nQX7nRjRmKjEKC2cvLJD1TUQbpBd630sRKjGbovDEZS3Y0NNkOFESoCeokrfQgETOyxigaZtI/uF82yfnnbyiJ8nnSRYeZbxwcK0UXIWHUNHCbIYMF/dr1zHraOj9amTr8KnlML4oyysH6CffB/r7vD/iTvIMKWdVbAdTb2lfFCqKbtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A4dAXkz5j1T17qQKlfRhlaQDpcF26qmk2Gse+t5FoEI=;
 b=MI0p6a5npTFP1j4m1tyUZONHMHQ+KRz1k6+5Jl7oX4t2RrmS9QKMjeg1umr3a7CRJaJDBOFFFvN/a96hNOrtwHp2mzy50/Wgbx+lLwAQLNXZ8wmJPp14wIZ8kgM+K5131CttEtdkyNW9eKlta+eJ6d9yxFWyplxhNqmPPPyEYFU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB7018.eurprd04.prod.outlook.com (2603:10a6:10:121::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Sat, 16 Jan
 2021 08:45:28 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3763.013; Sat, 16 Jan 2021
 08:45:28 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH V2 2/5] arm64: dts: imx8m: correct assigned clocks for FEC
Date:   Sat, 16 Jan 2021 16:44:28 +0800
Message-Id: <20210116084431.25851-3-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
References: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR02CA0081.apcprd02.prod.outlook.com
 (2603:1096:4:90::21) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:4:90::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Sat, 16 Jan 2021 08:45:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: eb2cdaf7-e082-4bd4-0418-08d8b9fb131d
X-MS-TrafficTypeDiagnostic: DB8PR04MB7018:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB7018C8D1CF5F750A00877838E6A60@DB8PR04MB7018.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:428;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3dqPZuh3xwkHflBJgboTpZorkvMoyEA1TUTipcwHfH6B9ftq0QiZF8stVk/rAgFqZKMxJKRsN9FtURWsgGCMGdB7XJynRpcMWJgbdLB/fHBjQEYEWpOxOmn6c2JxlIKO3xulDLVjr8aIDBCEmlGyHm5w7c4lIqqbHnjdnQ+g2PvqLIpLwnZX2CwpqTnFjnVCI9Kk+uifrd8AQxMC3WOa6u/uc034caGQmjFKTxoso5pZ7njwadAhzLHNPrNz9yg5cPZ4tXREKKeYyJhkioz5vImXZqX2V3KBQPN6vOAHhkTyZinKas6IxTPhkJKgz/RrbvtDMAGB4arZJ1/FVUNbVaah9TIEbYL3lTE6YzpXVgbpkr6zrfNiSmfso8puJaWZ69ef32yJctMiLiwpoSaQMAq4YQTEgfjbkPTFW5BNjb9hDZigGv7Pw+9qM/Uayfs2+VdGjIorHhG7gm0U+HIuzgMryrIf7uqBbAymudHzqS8fW+Ugj4rHPaYhhE0cqjBmVacanfLCY0cxp7YFe0qMwFf6Y9uqFdi+VAIYJcSVMFmTDwVkFxb8iIMiYNv8yoN3Wrl+irSaZpp5psbaDXvV965m2yDs4phLFZNaMFjj1NE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(956004)(66476007)(66946007)(6506007)(2906002)(26005)(2616005)(66556008)(316002)(6512007)(478600001)(8676002)(186003)(16526019)(36756003)(6486002)(69590400011)(5660300002)(4326008)(1076003)(52116002)(83380400001)(8936002)(86362001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?Xt6bbpToc0LqbRS0iX3qTUL5PgDKVl19+FQoTKVQH7uJQkVOsBct5InAR28f?=
 =?us-ascii?Q?dh+2ZZa5U9nuue95vPwzSWISclgfbJNCM8DD3YgjQVNrI2CoYNAGbWMrJ1Pr?=
 =?us-ascii?Q?M1WhxozZjPWXUsrdi5pelKi5viME4+C3zYnI3AkBHg617HIZEIZ5p9hx+1LP?=
 =?us-ascii?Q?0M8XZxj7Hhwt9Yeo3XNeES+ZYSM3vbCODCOFyEzc2bd0kv02Mgo5+yckCgTa?=
 =?us-ascii?Q?ZG2iC20H5hIOGhT8fHgnxKMuIegTHrim9C072OS2l7kOfRzSpz0p3rd1C4jt?=
 =?us-ascii?Q?Q9zd5jBqIkCg9arJKDR4hUjf54qiNSZ+19Kv4nFemR7LUh7iTtw7YuNSkWqa?=
 =?us-ascii?Q?bYf4nvT9rUU3q8cr9lQ+zJoZhlZMMVE1A5rbInv1rSPvM99Hi1OfeQOXxKQK?=
 =?us-ascii?Q?hNsXR0i+Digco6mDLEm2jK3bA7CM4t9pfHU6CBvTyAkg8YsNLTv6BF+ORA5D?=
 =?us-ascii?Q?rL+rU7ZyGRo9BWWdx6HAh68WnjJNscfLXc1P6Wexprhv886ScifLYlxw+2V7?=
 =?us-ascii?Q?fL5cHW2tKwjV8fBksTYiKfBo3Wu0LyCaTSPTEhjI0tRUQrAC/2emRfbxSu8G?=
 =?us-ascii?Q?aJwUvt4IHS3208zKXAXJHEHaC7y/QWrz/LHsaTx/tr/iwaNkJQ6F6PN3acbc?=
 =?us-ascii?Q?57nOkoC344X5iKWCOQJWBCHD+dXH3kk8fRGXsreBwJGPLH/AdNuvJD8cQQUh?=
 =?us-ascii?Q?KuvOMqV6SX/o9cmokeHuWWDUVBV9uOXtV3ErpBjZzyIR5eEK5BCCTdV7dKQp?=
 =?us-ascii?Q?K0nkzzC0NJXYYow6gmvhQBtEacL+NCCZj+/qb/RHpqhG6dpzRHkjOIlBYN8A?=
 =?us-ascii?Q?YZH0jHpF37No75DIEdOHK7eMnfbt8Q1sMkqVl1RqhmjK0QKjz+mChZi6qCQf?=
 =?us-ascii?Q?a7oSF86w1HCxFarPKoCUp79hwP1rpe6F1d7GFsknBt5ZWnxBUYHLrbgdGhal?=
 =?us-ascii?Q?hdK7Z7p8oVXtFM0jkJxM1ke5plCti3KCbjQb8SsgFagj/t6N2bQjr4+ABvBR?=
 =?us-ascii?Q?rHfc?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb2cdaf7-e082-4bd4-0418-08d8b9fb131d
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2021 08:45:28.3485
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d36B8ftcWB2r5Q6M1gwd2lveAEqdYeB36k8T+ibNdK2jevje9WH8wdB/o6trnRkANuq0f5UNfJGKngFzQrTSAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7018
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CLK_ENET_TIMER assigned clocks twice, should be a typo, correct to
CLK_ENET_PHY_REF clock.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 ++++---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 7 ++++---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 ++++---
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 9bee6f1889a4..5af0e63b1db1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -915,11 +915,12 @@
 				assigned-clocks = <&clk IMX8MM_CLK_ENET_AXI>,
 						  <&clk IMX8MM_CLK_ENET_TIMER>,
 						  <&clk IMX8MM_CLK_ENET_REF>,
-						  <&clk IMX8MM_CLK_ENET_TIMER>;
+						  <&clk IMX8MM_CLK_ENET_PHY_REF>;
 				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
 							 <&clk IMX8MM_SYS_PLL2_100M>,
-							 <&clk IMX8MM_SYS_PLL2_125M>;
-				assigned-clock-rates = <0>, <0>, <125000000>, <100000000>;
+							 <&clk IMX8MM_SYS_PLL2_125M>,
+							 <&clk IMX8MM_SYS_PLL2_50M>;
+				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
 				status = "disabled";
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index fcf580816320..9dc52747a142 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -913,11 +913,12 @@
 				assigned-clocks = <&clk IMX8MN_CLK_ENET_AXI>,
 						  <&clk IMX8MN_CLK_ENET_TIMER>,
 						  <&clk IMX8MN_CLK_ENET_REF>,
-						  <&clk IMX8MN_CLK_ENET_TIMER>;
+						  <&clk IMX8MN_CLK_ENET_PHY_REF>;
 				assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_266M>,
 							 <&clk IMX8MN_SYS_PLL2_100M>,
-							 <&clk IMX8MN_SYS_PLL2_125M>;
-				assigned-clock-rates = <0>, <0>, <125000000>, <100000000>;
+							 <&clk IMX8MN_SYS_PLL2_125M>,
+							 <&clk IMX8MN_SYS_PLL2_50M>;
+				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
 				status = "disabled";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9401e92f1c84..ba32725ff28c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -768,11 +768,12 @@
 				assigned-clocks = <&clk IMX8MP_CLK_ENET_AXI>,
 						  <&clk IMX8MP_CLK_ENET_TIMER>,
 						  <&clk IMX8MP_CLK_ENET_REF>,
-						  <&clk IMX8MP_CLK_ENET_TIMER>;
+						  <&clk IMX8MP_CLK_ENET_PHY_REF>;
 				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_266M>,
 							 <&clk IMX8MP_SYS_PLL2_100M>,
-							 <&clk IMX8MP_SYS_PLL2_125M>;
-				assigned-clock-rates = <0>, <0>, <125000000>, <100000000>;
+							 <&clk IMX8MP_SYS_PLL2_125M>,
+							 <&clk IMX8MP_SYS_PLL2_50M>;
+				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
 				status = "disabled";
-- 
2.17.1

