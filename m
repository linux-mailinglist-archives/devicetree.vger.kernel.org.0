Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8CC12B8F6D
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726637AbgKSJwo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:52:44 -0500
Received: from mail-am6eur05on2082.outbound.protection.outlook.com ([40.107.22.82]:2240
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726563AbgKSJwn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 04:52:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gaPRnn0/jtaFGZKs6dvX1pWhwJfwY2e6dSLNSIbFbQjqODgjE3S7dq+D12JH+jxlKF7+0bQz93JBSqNR2I3psBZeddtl2mVVLAHN8/ywYDXyWtbkYAOzdMa01xopEl8IF0+NLuEp5UuNk8CO2EtRHlatqX3hnxZzwuB5hQIOBQvXfNdIh4s9Ol4xh1CZnrl4ceDyONUYdTbImDDiaveJJ1o9vm8wZOb9Bw71Vr9wOM+2KGrDpzQ7eqYQs98aXq6+fi7gnpNs+eFHZOmW0jBz9acNP6jMBbwY7a4Egez7UtZ22MpKMZNZXK18uNcSWN1qWFGZlPnY5JYQEt2u3Q8I5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HmsT6HBwToapIxjaopKFNEoYsnV5MMY9V/MW7K+a72c=;
 b=YInyQRT/ip4Yt38k2Lp7Wcxl82bHkaBdCsBycKgJ9YdK2vLtY+DSULDtmrYKcl/2ciBo0FYPSEZBhDe37WYvoiZnzFgzpBHLFdfJVSNu8O9JqvkUJ39IIvy2ABD3aAA2tn+hLncisXIbjkhMGQ2Kk8NuSjZA77vcRRlYTfTCphDgHSK//kIBolgr2P0A8iu5KWcqAq8VL4NGD7pC0NVmnJfyThzkI/nYADmJ/Cd5C+Tys1h2phncRKtiha5Ogofx1DXqzc8UuzNbugqG4hU5VulhtdvSmvSbdRvVVROyFb0GGmU1Vb1H7jPibTGRac8DeLSdaIAEMWGEJwDw7S8deQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HmsT6HBwToapIxjaopKFNEoYsnV5MMY9V/MW7K+a72c=;
 b=pdOtbcp7cTYmDGiL7amEP9gOaLBEwv/9vEpZ5Za4mi9jVqeip3WUBYJWrV3S4udhYq/7cg72jkMiykc1vFcOY8TN7bjHLN+RCrptzyqPtvfxDtfmHyPQFsR7qAMtNh440G4nvyAysdN2FD/DiG0oig3CJ7vQsV+OXXJVRMTKwbI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBAPR04MB7429.eurprd04.prod.outlook.com (2603:10a6:10:1a2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 09:52:39 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc%9]) with mapi id 15.20.3541.028; Thu, 19 Nov 2020
 09:52:39 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: [PATCH 2/5] arch: arm64: imx8mm/n/p: correct assigned clocks for FEC
Date:   Thu, 19 Nov 2020 17:52:46 +0800
Message-Id: <20201119095249.25911-3-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 09:52:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e92ab314-69f3-47da-e138-08d88c70da0b
X-MS-TrafficTypeDiagnostic: DBAPR04MB7429:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBAPR04MB7429BE91828335D4B85A301FE6E00@DBAPR04MB7429.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:428;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +PARldG8xY1HkQT93R2bhgIwklo68kK82LAytlgap9OVyO3dLQ5o8UKA0BcqtY7r5OE3A/VR66/BafV6ZdlO8a0YPvGVp2R+uSVcZpYGehE1/0YUIqmODTHeX9QSSwYatmNLEhXf82225lnL0tfnNBGzWiIKgFxgzGezuLJIegNAErSHaZqjDUM+a0ORUgunuAmjBKnE/NZY4teN3bK5glRzyD8qMvSr00DIbwYtWs9xznN5YF8aw0GEJFg1yQXFT0/Ar/UkKJQ74U110Mk8pErf1odECjNu/q8ZuNLcyuLxhIbaFeFteGVSz1GUgP0mvxcVwNkRFYShwx/W7TM8ZkDWXw3mY735ELQC8jwQsCXB4W7fl25D4ElgX68yz17V/ydl5u6hi7qT+pKSmJkUgcDuicweHQn993vTsGjIZWw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(66946007)(66476007)(52116002)(83380400001)(6666004)(6506007)(2616005)(6486002)(69590400008)(1076003)(956004)(316002)(4326008)(478600001)(86362001)(16526019)(8676002)(66556008)(2906002)(8936002)(26005)(186003)(5660300002)(6512007)(36756003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: tttZ26THyJ0wb2aUxDik898ktbWTT9OpHCvtP6qxtzDsoRVzuPYXp+jNJXqrmOAu768vbXs5LY2VfyWw/MrT2oTVuu3V1uO5a+sAu0Q8uh41nnTIQoxpr0qVQNXux7/fMkMyJklsIwu9zWbkmnQyEV8NgmtmaNvfm0s4S0dyNaX40Iu++XJV1EJ8TQFQOdi/1YE0y53Eb/YD1054TS7FMl9pl7vul6bjF5IdPVOSKiyba6iejjvmoIG0PYsSYIh5RvFY/U9CsUul5rjIQm/48DRpRaTvUy65VklZSQV12G9cBEfEWdFfNQBkUWuZtq6qmaJpiNxLdE0m97nMjCgM+1cM13+Fr+5VmbPat5pa3ibxfuZuqAJyXiyAgfqQQbc0PAFg6QKeS57Ce2d6lM4REJq4vDHlezM0SxZZBSKJUXDyPCJGh2WvOLUdIN3wqU38Z7JjVvWiWxPX8FzMM7SCMMXhpof4zZ3fMFwnOtoR2Z8GwTzQZ5wRXTOno9U8lpd2wVc6RQKtdrWrR7kP83DAEkN+itVNO06e+YEBmSWJHLmfO653d/nV38wnEZhqgSTh7JMGxyzMpCl3sh5GZkbKD3SREcMi1sdO7CZsT2NQeP60EEVkRWf3cmhsN0ao0c/C1IPpoOeP9Rx/QzMXWGoSvHBHMCG1s/l68fVjRKCUaf2q7u9CYpvfJfQEMx4ny0kUWmPYNnJcSOHj5I7FDgO0hgXUuZWv8ygFBGUgSussY3n9xAsU8WvpNNLe3CVURmWxLC3fs1t/xnADN7eJrevsFskzlJSGYRTqQmH0vMcKQ7Yn/sJMq7Ra53NbrjM957UYIr4b5gsemQp86p7PMcoTrE9TDBcKAxh67iU9FWYhiDaYSwTX5J9RaAOEXUCZO51fiGsGwFXI0rI3L3ockNMNdw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e92ab314-69f3-47da-e138-08d88c70da0b
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 09:52:39.6935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TNSsCUdfWS6Q2TZ34SntO0MV8OKIOd5GooDpr33tGiu4KNuW6lZU8QrrsJKMQUfiEWRdDfZoE8UMTQvqeYFckA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7429
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
index c824f2615fe8..367174031a90 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -909,11 +909,12 @@
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
index a06d2a6268e6..7556b24b6467 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -760,11 +760,12 @@
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
index ecccfbb4f5ad..3d9f5010769d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -762,11 +762,12 @@
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

