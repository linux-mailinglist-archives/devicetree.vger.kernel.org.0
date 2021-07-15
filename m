Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33FF23C9DFE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 13:49:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbhGOLwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 07:52:34 -0400
Received: from mail-eopbgr20085.outbound.protection.outlook.com ([40.107.2.85]:43746
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229742AbhGOLwd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 07:52:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DO5I9vFEqpSZr8BRZHzEtqFwWRhiUmpFN2Y9xj+rtyw1kxeK4Ki7NBPUMfHzwm8JtyB+2sCta7F8/0RGWNjydc+Z+BI3v6FCXP4zPIsPBsbGvcIUDEgkwyNa0PEyup1KiiAuZauaYvKLU3Ts0X+aY9shaNwZvnf4kj9Tjt5wdOpn0EEQVDqb3OnwYlAf1uABAd4FEfiBA7v5t2PnQbNrafuTQhj5wORRQ7+lKGdSs+Fdm7HpF32bFe6DtKAD5zHXDtAEtv1GGyewfB1910zmQNS6Z3zZntzA0e2DmWh8bHXQ5mBjA+8k9Olane9i+YsBqw+lDuHHfvCpyEg3LPovgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ooOB5Or2vKME2OSMsbLS7qixpilBWTZxtNVHonj2oQ=;
 b=P+S01JpRbymzPmaIF/Q9tmI0P/2KxvM/I0Lvt8Oo3iG3TZ1rvtfS0WZ4MhOLbXrF6yfSsqq9VKS2RZCdbol+ZsNpwZEVpGuko/65CdYiUchYCwy/xDuG1gOZHa1u96TeWs2qGitZr9zYS6y+TLoDjkzw2cs6mPxNyq2RUc8YZ1B7d9/5lWuC+yqPwjwdRg7hRYwIlLlbxqhTtx94tEHDpe/U8YiI6xG8pdfHAx3yxF7NgtYu+2ljJCEyW0KphtJQSc05od8lKc3dIMqwZqaVAt93oX+d2OhrISxwweIz84g/T9sXcpAChf86VwnemfFGM9+kn1fEgxKmE5jxZ3AfJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ooOB5Or2vKME2OSMsbLS7qixpilBWTZxtNVHonj2oQ=;
 b=D0Nf8ksgjpvoB2RX/Yuh08/MqzYyBpf0WUEhV8AKgvOIQ2VPbWwdCs9SPJnIXPu2xMBoRc8V0Ne6u3FPA3+EozaqEyIl+yTNSAtiFICGbwgacmTsYcmkM2dbU5mfipmwmnimFz78Fnhwelwa9qUwSF9Kb7wIoCV6a/kzURg9/UE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB4107.eurprd04.prod.outlook.com (2603:10a6:5:1e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Thu, 15 Jul
 2021 11:49:38 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802%9]) with mapi id 15.20.4331.021; Thu, 15 Jul 2021
 11:49:38 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        mkl@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, aisheng.dong@nxp.com
Subject: [PATCH] arm64: dts: imx8mp: remove fallback compatible string for FlexCAN
Date:   Thu, 15 Jul 2021 19:49:53 +0800
Message-Id: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23 via Frontend Transport; Thu, 15 Jul 2021 11:49:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d360ed9-18e7-46dc-43fa-08d947869ff6
X-MS-TrafficTypeDiagnostic: DB7PR04MB4107:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4107AE5DF3A33AF3DF5976C4E6129@DB7PR04MB4107.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:913;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Ycgs3zQIMB9c7i2CZQJrqloVH9FQprzOc3HJExC+PZXDLNPxDhhfvFH5eorF6RZKzSZmdYKyskO0Af+282tCBuJMADoqiqT7OoNSdgUtIIQ7K9WRw7zemO227B6rR8h+GjS+27lyxXNG2wToyWrwCmnNhc5bo1V/fzUTaDNNFNyTPe69w8CGV7ei5qGvpmiaNg1x/WIHUfzmVLLRQoSvNOvUdfMrQgP36MdIN3i16g3UV6FyMdUiVvpwWSyDnCOgmA/wXESrf1FI4kAZNjDSgqXGolEsZMfYtkEUg7Y7hLVxouEPrxIKcvuTsm4kIf+zx4ImUFRn0BbqZgemeMBb6a5okfvEHygDqFqKyUNeN9AYlKwFeyV144um/EAVLvuVnejpwOnEbBmDIApgmOLau3cTJw35bWVeA1L1vqwS7TkdHQJ89pr5skQR3z4oU2yjhUCm28vjbl2EOWoX0MAJsbLCA1osQNvvLEJZ2A7oP8Bthn2OySDTSvxgSRmJ/2DibvBtqYXNdCl0SFD29vVIum85qM3c/wmizMcL9W2GpQvrOeAddB1OV1uJDmk6/RODLvig3g1Qjqlt/AFeO9vtyXMvXqaRlOI/uAXYIjOyfiO81jirme2yDSdnezY0AlknlvvOTftteud8TttD2cKdVRDK8ZFvUF0HYZv5WfIvdfHd+1VUW5elVJoG2TrhxZDaTv+FidJNZ/lch9HJyhXs/auXUyYVSvsqllBfrew7V8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(346002)(366004)(136003)(376002)(83380400001)(478600001)(66476007)(52116002)(66946007)(956004)(2616005)(316002)(66556008)(6666004)(36756003)(38350700002)(38100700002)(2906002)(8676002)(5660300002)(6506007)(6512007)(1076003)(186003)(4326008)(6486002)(86362001)(26005)(8936002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dozH20s9UnbZTfVvaaRVfpr7AvPAtqXho7d5XYjGlrgNJwRX3BXLtDD6+b2n?=
 =?us-ascii?Q?7tGb7n3uT9n1cPnfScuZtZW8zxhVVh2r/Q03TKGSjVtSI3WniVqrz86vwxzo?=
 =?us-ascii?Q?RdUcxn3Yf8GRIA6M269Zrv/o/Qb6KcibeNUeJVc+Yk89/HXh3vTV1MOoGumF?=
 =?us-ascii?Q?3TGD3Fj3m5a+tFPeR2aV5OGe+XPlvdg+GkQQ4jVJTrxxV3H8vkXd6mQg31iE?=
 =?us-ascii?Q?QYwQfMbwmLqCxRMD9JfycViVeHHDllAO1Ig+Hvw7wVfeKUCrZduFIm+pMM+o?=
 =?us-ascii?Q?wEeqg2YcLnOlX4Uv8+7DTzWPE0Ci2fXWZsiPQI+Mcp1Q1N4frCS8LwwQVbi5?=
 =?us-ascii?Q?3RCaPSlNLdmX0KxZ015ZbyVBUr6N6vKB4tPN/GW/Njcs5U81XTM/3EZV5a3Q?=
 =?us-ascii?Q?F4Fkl6kUcKgPsf2oYSYrop/uitdREdAS7npD1KQpmQ4tJbdUJXfHvLpcM0Fh?=
 =?us-ascii?Q?5QP6I99rxegCEsjhdLB82pNfZ5XSd4tm8bJz+/ud4xM6jqb8QBeVutpz6fbU?=
 =?us-ascii?Q?u6fZMlMUkbhMdfxqsjluQL4vZY8zkDb6FCx1SHna9ohvM9Owe0UusI4x/SE5?=
 =?us-ascii?Q?c2+Wh59v4hmUpenyAg2JvwcrWg7i7PlZdArCtwX5c9tETgIbpK+Yp7XcKrNH?=
 =?us-ascii?Q?rRhF+85tQ3PP6qQPvsfBcqW39KzhYb5pQTSGlRRptO6JNomQCmi8zcR7zlxo?=
 =?us-ascii?Q?ion+gAdLuTt9zMWCr6bHdfYSWUSjplQRoLIMvyMncf0Z3CIO0aYX7Cib9x5Z?=
 =?us-ascii?Q?FeLBg8MvjD9tg1WT/nd+i3OuPy0Woc75pWhEuy+w71I37wuXm/jg7wgMolhl?=
 =?us-ascii?Q?ThB7f0Y4aKqCVkwHFgT1fbUXMyYMWVuTuA6xC5OlbyvS7D/c7O0N6GQkDzYV?=
 =?us-ascii?Q?2OsmcTuV1atFz3EtoubdbTku/CzzAwzQcYzxXTsovGJQBO3J3Z8Taxg6N1G3?=
 =?us-ascii?Q?LiRyBt+m3z9K/mrTw5Voda6nR2UF7ZyCjeq1k7y1lAXcFCpWTrYiXmpY84nU?=
 =?us-ascii?Q?G8wSVNWvxcBIXjOrMpfj+QNRSY+CKkoxbHsGiogzJZHaMEY8OhhpODXEIhJx?=
 =?us-ascii?Q?HKEXTC4sFokFu6wyx6r6whGEDNhwgkoFF7CFhhxTUchQ/ZQtydJE2zjZLrdL?=
 =?us-ascii?Q?u96dp8cg4fMpfrGQF0blEe1cJh29GyrqcDbEGJJwGc4WuoAWiQ9UbxkCSBMM?=
 =?us-ascii?Q?tzc97jIcEMN4bnFfG++ILEvMfb9BXDgmyxu3tmhQPwOpuGZCPEPbsedFTfQA?=
 =?us-ascii?Q?QyHP3s3FZndSluwEUPbnwD29DkgcG/GfVGpFNF/UgQ2ByGpSayJslq7od5Mq?=
 =?us-ascii?Q?7LwIL6w4/GnQms9Mcuoab5RJ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d360ed9-18e7-46dc-43fa-08d947869ff6
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 11:49:38.7339
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zR9OibmT6oWzqJxkf4LWSm78copWoFSRdXRar+fhp/yUR+uWl0cr46ERPZMgAH5mYYaoBa+3kDTFhR7Y2HG4wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4107
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

FlexCAN on i.MX8MP is not derived from i.MX6Q, instead resues from
i.MX8QM with extra ECC added. With "fsl,imx6q-flexcan" compatible string,
i.MX8MP FlexCAN would not work, so remove this fallback compatible string.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9f7c7f587d38..1bfb359dba4a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -579,7 +579,7 @@
 			};
 
 			flexcan1: can@308c0000 {
-				compatible = "fsl,imx8mp-flexcan", "fsl,imx6q-flexcan";
+				compatible = "fsl,imx8mp-flexcan";
 				reg = <0x308c0000 0x10000>;
 				interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_IPG_ROOT>,
@@ -594,7 +594,7 @@
 			};
 
 			flexcan2: can@308d0000 {
-				compatible = "fsl,imx8mp-flexcan", "fsl,imx6q-flexcan";
+				compatible = "fsl,imx8mp-flexcan";
 				reg = <0x308d0000 0x10000>;
 				interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_IPG_ROOT>,
-- 
2.17.1

