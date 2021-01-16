Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E87BA2F8C4F
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 09:46:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725928AbhAPIqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 03:46:37 -0500
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com ([40.107.21.73]:46624
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725767AbhAPIqg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 03:46:36 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVqvvRkxv/cQTw2dr97XnmdWW6cNq+mfYPUdS1xJCiRmeyk6ztyMEjYLzchSH8NA7/WE93GYm1sQn+SnvCUyMH+7S/02JAlp3nzvq5f/8pAUt3MlT+OnOaoYtJt5xypn0Ejj+lW9echDjw4wc2zQfDplk8byJJ21wrvEWaTcpL4dlRUNlE/pa3kOtU0SBreZd5T8gdepC7LJjr5bH9ZOHaign5rgHK20gJFVt7AT5Fr1G1Bi8OZCfA2wPoiX9eL94wAW7fU739ghwkOney6J2Sp7eo2CxIiUVDicfazdxEPUtpc1Gr/azUhmjEMNaEpxVuYRhZ89xegT8xXosUu6yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4YouxlIks7Col7vqe56H17hoLq75DWAw5TXKukPEinU=;
 b=iQOTcTsnvJXGuopI54RI7wkqor6d7X+CF4UHqeQ0YR3HL9H0Yr19tB7NS2gOXTsdIKKloPASexEqw6IBxe1AnSjd/tGSHrkKDnzN755O5N9cUPJTJSmAJHCkhW3LcIkLx3BRXM02tVclbldkv2msVJBAfS6u19oK1d3JmAkjgk01KzAvDC1nIA7v+K705RKa/jJzOqMhyBBk6dK6su4pfEQa+yafBoBLENpgjGyTpE6hdwhbbZOeLTbnnTcDeNOLvjfBDjkDNzOaV6y843n+BHTH2sT1VjVkG6kvUwA2wrOl0DhIEiB7T0A5UgT/E2z5/REMG4G6GSBF2ZR0+mRpEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4YouxlIks7Col7vqe56H17hoLq75DWAw5TXKukPEinU=;
 b=d1VcnRrD3z6Ol1L/lBcX9Z8P0YItJpLoQuB0Wk6vIJorqCZh3/jF7AxArq7+mJ3mEwcgJE5f782SC8llwsvJKF09ymkinqDkjOUgBUAEMFZ+n0s7lRgYEeHhL6G25IpsQt+ZeotT2oxW41fxxH6RQfS7t/854egan9Z/yHq9B+A=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB7018.eurprd04.prod.outlook.com (2603:10a6:10:121::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Sat, 16 Jan
 2021 08:45:30 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3763.013; Sat, 16 Jan 2021
 08:45:30 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH V2 3/5] arm64: dts: imx8mq: assign clock parents for FEC
Date:   Sat, 16 Jan 2021 16:44:29 +0800
Message-Id: <20210116084431.25851-4-qiangqing.zhang@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:4:90::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Sat, 16 Jan 2021 08:45:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3e6103e4-e3ac-45bd-4a92-08d8b9fb1473
X-MS-TrafficTypeDiagnostic: DB8PR04MB7018:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB7018D1B9738F1DA06B755E5BE6A60@DB8PR04MB7018.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cmzzlVTJX7fST5VpkvDb0paom3W04SHkU9VYcr6W3S/7gCK7IC4QQ1s3ZltT+bLAoa66/Awew5g5aiIAQDfKZVkF4+llHDC/p3+zFRn/SWItW8dwN6ImhRalxj3HNJtisbWDjr3YuBe9+4bbPmNA3IW6RYlvZWfWspD44+aFHiWDJRqF50+B7q3XPbP7TJ/Qq351CMXJlmQXkZh5tmF8oIZzKEUJfPOZmLmraKGl8FvudEAAWpNDB83YPv270aZpnrsRiEY+pmRWQZxsT174n+wkuFK8a3WuMO45XFeCzAfBXNk5n/6hmlAG2YKXC8tdg0AOh1hv6ku2CiC7geaMOujf4eD2GEfAYoFv8FYquI9ubI/DaGwANa41yS//GLlLMHGHUdgyOKIPJxpoM1Pn5aUGM2fx9GRq6WTJs0a7+G1Iqb5xbRz2qbKKR7ErtNIiJNW6UC7G2HhTWrSS1tzh6+ZuGVLr9AjaBI/RgzvOs0SR24FkZd+zjlSpfs2/fZ7puWmcBF+2ydtuOSTMm1fyJiuwMF7LMkLpe8eHA5ijWPm5peHn/rXu91knRQK1xDsXJs/hZrEsE35Ujco76sc+eeKhkf9MpxmybWjK9ZbvduY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(956004)(66476007)(66946007)(6506007)(2906002)(26005)(2616005)(66556008)(316002)(6512007)(478600001)(8676002)(186003)(16526019)(36756003)(6486002)(69590400011)(5660300002)(4326008)(1076003)(52116002)(83380400001)(8936002)(86362001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?T5PEo7d76M84WRJ+LugRaGn/pD3A507hiSlpkds3thMOZ74IJDNqYUgFmsVh?=
 =?us-ascii?Q?mqIeKa6w51YvBZ4aDDtW5a8mqOCAh/DtlUwta7H6TBFz9QxiKN2XoQPNIvuj?=
 =?us-ascii?Q?JLvrnobCx7PCeobAzv3IjNwqB4EBDlhYvX0In9erkMGEpGIQKAmLmAuZYtBd?=
 =?us-ascii?Q?wD0t1zOjGk9zC/dDld9D/+M6PshQK2jEgW2U611loexuN+0xq5OnQt4QOoB8?=
 =?us-ascii?Q?RkhvFLqF7nrRCGAyDxjFEuwuv1CnTnBMmOiIsPdXPIwjCviWAHpd/EX8BzYu?=
 =?us-ascii?Q?78yXc8I/qS38C4Gsklp7msTYZQEVkE0xw4u98dq47Ft5mZQm5Rk+Euk5rgio?=
 =?us-ascii?Q?HwCmNiV/LEHcUxcw853Tr+vMmcWd+R1ykwQxob8Lq5FunR3rFtjREOXZiQ73?=
 =?us-ascii?Q?mQCYHPNMUvwuXQAoUMUaTIbRRCHNi1kdWE4uRcwkR1jA1aW2SrIBPadxS1f7?=
 =?us-ascii?Q?yutWY62gFdqmXnPqi22rDZvvA+r/hPG8RYq2k6Td0pbfVvsEtrZcMkpyZ/mE?=
 =?us-ascii?Q?mmniOA8hsTER6QcnDtuhkQiNS1YXnLFZjdL1zIlG/2eA0ucUtl3cNyowaMVF?=
 =?us-ascii?Q?Yky113MTRMGZ3HnMdFwA3TnAJXqWesc/LHrpi9RSf2Lv+xKMearLH9kfkRA4?=
 =?us-ascii?Q?Dq2iTVMbcyLzMCrllFIElq/hsUbmONauNRROsH1WQo9s9RWk9g67KxPQCRkS?=
 =?us-ascii?Q?ELCB7zcPlniKDV0bQPghr791tCssqg6NDzrQG1y1ZX9n7GBDT/CVJMBE0ebv?=
 =?us-ascii?Q?huc22qRWH1u7tWFTb4nLo4FAnOq3kh7IaRmeBLbqzDXY9CNf3Jmu17dh0buG?=
 =?us-ascii?Q?zDzKeL1yW8WjeGq6RQqpfb8xnw2n0w5uehSgBt0v5HlPFU6BpOUcSzZNem3s?=
 =?us-ascii?Q?6vEiPydm3vg0r4zfA+Bdvhu1OWAQ4jEvzNMOG0shacSyNurFXUGR99m32BjD?=
 =?us-ascii?Q?zO8DzHybSWSum5Rl+ZtLN1Ph/HPLvbucgK6dp8UfgOTJETgl0s/rd5wKybv4?=
 =?us-ascii?Q?1vg/?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e6103e4-e3ac-45bd-4a92-08d8b9fb1473
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2021 08:45:30.7399
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hGW5cCVmFU+AOfgtM9s9Vz2HFyNfTVKz3852Pc7PXFJJy2v8ticwsOmhAbRTnmr2OvL+24KiM0obEvr3QW1KeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7018
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Assign clock parents for FEC, set "ptp" clock to 100M, "enet_clk_ref" to
125M.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 9fcb001b8dde..2f64a868e01e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1163,6 +1163,15 @@
 				         <&clk IMX8MQ_CLK_ENET_PHY_REF>;
 				clock-names = "ipg", "ahb", "ptp",
 				              "enet_clk_ref", "enet_out";
+				assigned-clocks = <&clk IMX8MQ_CLK_ENET_AXI>,
+						  <&clk IMX8MQ_CLK_ENET_TIMER>,
+						  <&clk IMX8MQ_CLK_ENET_REF>,
+						  <&clk IMX8MQ_CLK_ENET_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_266M>,
+							 <&clk IMX8MQ_SYS2_PLL_100M>,
+							 <&clk IMX8MQ_SYS2_PLL_125M>,
+							 <&clk IMX8MQ_SYS2_PLL_50M>;
+				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
 				status = "disabled";
-- 
2.17.1

