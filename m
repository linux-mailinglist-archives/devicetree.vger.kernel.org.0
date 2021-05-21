Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 258E138BCE5
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 05:14:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238840AbhEUDPX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 23:15:23 -0400
Received: from mail-eopbgr10081.outbound.protection.outlook.com ([40.107.1.81]:5966
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S238841AbhEUDPX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 May 2021 23:15:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjjFcMj2aXFeXB3KvNnvpmS6VXFwXE/W2DNmDNjtuHM8dA2/QVmjl2+pJiP0m1/OpzShgXW/Z2zsszZ5K9rjrwlmOIeEuRzGcBS8tdX7mQapNpFtD27En9POoz5AQriBNHyQ2WtToxqXpX2IYzgWOegDsq1Gtiso/iB1t3/TqexVDqkn8AqogkdNLN2Uz9QSY97pbPWLWtm9388Cm73UKfvDWVuCBPvmqHVp772j5j/a/EJYMV93kVjcP65ByjPsVAbD02JUB3RTXmmCASg5Ki0WS+PquUSPvUGCJrg5l7dvf+3B37mYmOrbZ3pJkdKQIh3txFlkonBpugBwvxw1eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dFNILZ1/e7dSv2U1SUl8ajsrnP4uXe14BxeYq32TLlo=;
 b=NbuZjONQj9upun6rx6gEmi1EVeGdHqhvSqv4AcELjHNtrjtHzC+R3bpI9Sk3PnYVYYYQePV7o8tWPHdOWtcVohvnWY0H2rIROdJad8L2Sl5N4B60yRdnYNBgABY/3m5/9FsIw70frDP835AxSRifQhVlTL4ShT/AMKKFbktkmrDWhMWJL/BQyNB67RO6fUfEE6nEzUIea4GOZSnqqLAtMV4lUcYtFFgHoEF7WZyOIr1QtIuTF0/AMlWwvamfug1ZvI8FrzRRtQvTlq+/b0IDjrXZacxn3WdMKlgbJCN8I4beRIVXHw7HqfDMOtYoVBkb2BRg9Iy1XGo8tchVr/+kCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dFNILZ1/e7dSv2U1SUl8ajsrnP4uXe14BxeYq32TLlo=;
 b=Hr1ofW7JbQ+HVOypHsygMqFaiv0PRXoDG13zFmoS26mv1mFB4+2mbvrZDoyoVoh1XZOLKtm57+V6BR3BLAosqfTyGS2JV/VGTep3LZsQyvLY9TV9Km0scCW8Y+2VdOvzG076jBD+rHsVaVClvJHg2wSSLJcQBjJ8ICpZdJb8w+8=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4326.eurprd04.prod.outlook.com (2603:10a6:209:4d::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 21 May
 2021 03:13:58 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::b10a:ad0:a6f5:db9b]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::b10a:ad0:a6f5:db9b%2]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 03:13:58 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, linux-imx@nxp.com, shawnguo@kernel.org,
        kernel@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, Dong Aisheng <aisheng.dong@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 2/2] arm64: dts: imx8: conn: fix enet clock setting
Date:   Fri, 21 May 2021 11:12:48 +0800
Message-Id: <20210521031248.2763667-3-aisheng.dong@nxp.com>
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
Received: from localhost.localdomain (119.31.174.66) by SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 03:13:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f20387d-80aa-4574-364f-08d91c06794e
X-MS-TrafficTypeDiagnostic: AM6PR04MB4326:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB432682F22A80A86C3501FDBF80299@AM6PR04MB4326.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:107;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TnVICLsAX037Xn7o9dg3UVBqMtG3Mv9e0KachpuveuBelGVy1a217QLz03qYteOSlcGp9iY/Y8wnqAmk85O9DHrUvuZ9YTNHsdoTC88zL/W/wz35VYyV7iJAy6mAK08dlKg9qvW8AOaODlN6ebPP5ARL+cnGeSvmpaYflvkGx9z8TH/bwj+tzpUa4RekMLB0oFt23zlLTId3C9MnxlWzCQxM5laChlekoK+Bo9BllUSeqUsSUdX/Pjvu3vp2umjSW+SAfDEDG884guX1h08ccwFjIi05SKcjlgVr2KY+KvJhcXEqLWdhnEgSQUEhu2DiR9DTxGoeDU4aDMd1C9D4lPQJnMQJhLJd8OvhJCJG4B/9AMC3r4WM9PUDU9Qn4eqtFQelND0b+u+V0nEI1tmOfHxb7ke3NFNlMQ8a9gk9731fdw5p7NJ65MiL66l13BVf3Vi7jHutk8NSH0aTmPv+BO3s+V+rvPw4fO8uDBatOaKDGF75U6g3v93q/Mh/tMxG8yTB3IuzS91AqSWJFWxgVGAW3KwA3xwWTielOJg1J3e82rv+rjp5v1S4YvhCZK9VAaas0sdaWBADLfkvnXZbSlv4zcDA3uAvXN/L1H7ITm5WZPAzb1plAxgQBK6C8CtoOCQaMGBRMUeSEHTd4FHxUXG1xBO9BDSXc1IHBVJMnL4xTieAza06S12wMJ1y/B4T
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(396003)(346002)(136003)(366004)(186003)(16526019)(1076003)(5660300002)(2906002)(956004)(6486002)(6666004)(6512007)(38100700002)(6506007)(316002)(54906003)(86362001)(52116002)(4326008)(66476007)(6916009)(83380400001)(36756003)(8936002)(66556008)(66946007)(478600001)(2616005)(8676002)(38350700002)(26005)(69590400013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?lXMVaoVSNRRwh7uMOlNosSs6k48xkIrn28vncvj7rx66PiB1JOA6EhWjW82P?=
 =?us-ascii?Q?0eMs6yeO5NuT/0WbyTOhR/lH15MNcrVkZu/I6H3xnKEkADDivh1SDnxPRzaJ?=
 =?us-ascii?Q?ZyUpVJwt5k4i2pUziZkrkdjHvc8I+bbeAQKVSTsyVwubylG9Mrb46vw4965k?=
 =?us-ascii?Q?CVMsmkjWd7cnw7WVtGt7WuHcUoDK/SX1hL7YvfkAE+eFOu9Ba0hrQilQoq0q?=
 =?us-ascii?Q?TrKd6cpBjHSkBLoPQfb3GBUSr3qE3hZrkCMTREAFqhQhA9mmPtXyvBBvXDY8?=
 =?us-ascii?Q?stOK5bUYS1S7RhuLwXwxeaxZlKLJo3mQUcvZ1BCZuAH1wcLybUBpXewRKgbE?=
 =?us-ascii?Q?MrnraAJbdUSkQizC1PWyy1YCVdYICIz53y5TMJz3k/JItkR2hfSBREFcEzyP?=
 =?us-ascii?Q?m9VO0yYHLWRAhY03Hru/ARE/JQPTeB9owK3jdns4CFPT0RpJGFGf6/A4bROu?=
 =?us-ascii?Q?Bzk67AUIWIOTCO0UMXkFk+qIq3Yrmuxq2i7xmAhF21CJoYQlY1icg1G39J0r?=
 =?us-ascii?Q?w6Y6p7NB5khUIiXBv18EwopQieJ2YTQnzF8IUgIgu1De1f39Arp9L00T4tEm?=
 =?us-ascii?Q?WsRyZUQWPs8jmBkOj9n4m8OCoziimlMwnpdNDcP/FRp/qUvyjDPDCtoYXpDh?=
 =?us-ascii?Q?v9aBx9qEdLZgn0FAs9Jzk7fLuVqkRZ/Z50QVynNXbIHN0BOA+Fj6eh+0etXH?=
 =?us-ascii?Q?VsMRALAMq7IN8I55lM+L/WvwQQueR1jnrQH22aDM14osGhWTwhG0Os5MI6Pi?=
 =?us-ascii?Q?g5HzCDWGhon+0H8WrcRvZbCjp/qXJALYZejkeTkLQIUUDq0blX4HOq2iiVCW?=
 =?us-ascii?Q?3NuQlRLOv4v9ya3sOF1JfFVvfKVikO+htJ0bZumuWDypiVvXP3t+UMSnIB7u?=
 =?us-ascii?Q?YxIuZzpL4bguvsKU1+bxUr7ExfzZhAPx14xk7XwnQVGXNqWUTyaorHNLLQXY?=
 =?us-ascii?Q?2EWPoO/910xXgYePjHgNxhyyHxTLbyez7pKOVh+sIFeh+TWZDSBXrh9mIiNR?=
 =?us-ascii?Q?eJ2nWRRN3tq8vD1uiimB42UKEwaoUBbMl8JuW/Gw/7Jj8Cq0KBnGgoMzU0Pe?=
 =?us-ascii?Q?hM87PBu4p4cmj/RgntjVhsrH/SRuqvoNwWuDFqEKvHUmYjJmWCqZ+Hnse1Wp?=
 =?us-ascii?Q?dZXy3JUgdxPUnW62b/zq8N3fB27qSURu601soogbRVMsqcoQmtMeMkh0pJrU?=
 =?us-ascii?Q?vM1sPjUNGSOevLSzevGRH3L2+NRZO0DclIf+RtqxwxfrJglGPiyGzflx7kYa?=
 =?us-ascii?Q?BY+Tm5/xJmLnrjBPJ7+DFAF1csWl8ZPTrPJ0g8QXKu20uWPOGZfeYAOS3xYK?=
 =?us-ascii?Q?fzizAw0GWzmh+oqhv6+qGbcy?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f20387d-80aa-4574-364f-08d91c06794e
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 03:13:58.1995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lD4in7lB5D+8wWEwFKqTa+GwzVeMhyIMtMioWrcW3vove/kMgKZ/f5xUk+exN6WXHp7VTI5R4Z9kXx9JDyk+UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4326
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

enet_clk_ref actually is sourced from internal gpr clocks
which needs a default rate. Also update enet lpcg clock
output names to be more straightforward.

Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 50 ++++++++++++-------
 1 file changed, 32 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index e1e81ca0ca69..a79f42a9618e 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -77,9 +77,12 @@ fec1: ethernet@5b040000 {
 			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&enet0_lpcg IMX_LPCG_CLK_4>,
 			 <&enet0_lpcg IMX_LPCG_CLK_2>,
-			 <&enet0_lpcg IMX_LPCG_CLK_1>,
+			 <&enet0_lpcg IMX_LPCG_CLK_3>,
 			 <&enet0_lpcg IMX_LPCG_CLK_0>;
 		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
+		assigned-clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
+				  <&clk IMX_SC_R_ENET_0 IMX_SC_C_CLKDIV>;
+		assigned-clock-rates = <250000000>, <125000000>;
 		fsl,num-tx-queues=<3>;
 		fsl,num-rx-queues=<3>;
 		power-domains = <&pd IMX_SC_R_ENET_0>;
@@ -94,9 +97,12 @@ fec2: ethernet@5b050000 {
 				<GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&enet1_lpcg IMX_LPCG_CLK_4>,
 			 <&enet1_lpcg IMX_LPCG_CLK_2>,
-			 <&enet1_lpcg IMX_LPCG_CLK_1>,
+			 <&enet1_lpcg IMX_LPCG_CLK_3>,
 			 <&enet1_lpcg IMX_LPCG_CLK_0>;
 		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
+		assigned-clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
+				  <&clk IMX_SC_R_ENET_1 IMX_SC_C_CLKDIV>;
+		assigned-clock-rates = <250000000>, <125000000>;
 		fsl,num-tx-queues=<3>;
 		fsl,num-rx-queues=<3>;
 		power-domains = <&pd IMX_SC_R_ENET_1>;
@@ -152,15 +158,19 @@ enet0_lpcg: clock-controller@5b230000 {
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
 			 <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
-			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+			 <&conn_axi_clk>,
+			 <&clk IMX_SC_R_ENET_0 IMX_SC_C_TXCLK>,
+			 <&conn_ipg_clk>,
+			 <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
-				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
-				<IMX_LPCG_CLK_5>;
-		clock-output-names = "enet0_ipg_root_clk",
-				     "enet0_tx_clk",
-				     "enet0_ahb_clk",
-				     "enet0_ipg_clk",
-				     "enet0_ipg_s_clk";
+				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_3>,
+				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>;
+		clock-output-names = "enet0_lpcg_timer_clk",
+				     "enet0_lpcg_txc_sampling_clk",
+				     "enet0_lpcg_ahb_clk",
+				     "enet0_lpcg_rgmii_txc_clk",
+				     "enet0_lpcg_ipg_clk",
+				     "enet0_lpcg_ipg_s_clk";
 		power-domains = <&pd IMX_SC_R_ENET_0>;
 	};
 
@@ -170,15 +180,19 @@ enet1_lpcg: clock-controller@5b240000 {
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
 			 <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
-			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+			 <&conn_axi_clk>,
+			 <&clk IMX_SC_R_ENET_1 IMX_SC_C_TXCLK>,
+			 <&conn_ipg_clk>,
+			 <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
-				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
-				<IMX_LPCG_CLK_5>;
-		clock-output-names = "enet1_ipg_root_clk",
-				     "enet1_tx_clk",
-				     "enet1_ahb_clk",
-				     "enet1_ipg_clk",
-				     "enet1_ipg_s_clk";
+				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_3>,
+				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>;
+		clock-output-names = "enet1_lpcg_timer_clk",
+				     "enet1_lpcg_txc_sampling_clk",
+				     "enet1_lpcg_ahb_clk",
+				     "enet1_lpcg_rgmii_txc_clk",
+				     "enet1_lpcg_ipg_clk",
+				     "enet1_lpcg_ipg_s_clk";
 		power-domains = <&pd IMX_SC_R_ENET_1>;
 	};
 };
-- 
2.25.1

