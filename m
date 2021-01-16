Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A391F2F8C52
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 09:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726253AbhAPIrA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 03:47:00 -0500
Received: from mail-vi1eur05on2073.outbound.protection.outlook.com ([40.107.21.73]:46624
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726045AbhAPIq7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 03:46:59 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hRkT7obK3zf1Py5iNNtfseXYL0qSaX9061CIYjAMkWQmns+PPawRO5Hlc1te6VFTpJuLxTG8a0o5jdi27xrvn7YfNiSL8Fu24A7uOSU2T0KZlh5WW3kLp3WW4N7s/c5EU92j3aGJP7T0aV6d+inRIawP1+5l7xJ9LJwR1Kpfngwd1l2igWuRCluMPfsumZKecW9Zm0lJ+mFqWpuFL2cMg4XJ10awbpl90/KdweO2unya1ASFOQ+7WXXYfPbn8IwznF2OhwDJVY8uXnkLUNcIfmSCPncqaad1nTZB+3iOzBkGtI4vuBXVP9+wB/+lkiucSrE2NNRrUNRJ+mEjIUz7uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+LFdIgGb2pf2uc9JQkSuA9yTX5nIV+qtYuTu41PXUMg=;
 b=XP6pTfFlG3Ty8iOf9LCn0VfnyuO+1n9A0Q2ikFJgFNqRjebCy36moiqIf6LfkKHtjCYud8qlWYXtcIhGh+ReZ8KxkQ+IvJdMC3ccYBlrfGIW8iKptR158cPrs6rDdjQYB/r+HJDxsiBWbRUKmqUEsr31hMfIAfIaxx7ComT3qvMBWj/7WPZXjj/l8YsWfqJLjguoa2s87pVLubSxfXg4axPvxqoygFkE2EiRJbt3ZL+c/1VDl+hkxwpAxunlTdPGIE0678XEkxSqTNgOWfi07cQ+dOqBVUYEnSDMiD8f4bPbn728OuGBzAlsny2pLy5k5A6Ib2fDSZeYLjecOgu/bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+LFdIgGb2pf2uc9JQkSuA9yTX5nIV+qtYuTu41PXUMg=;
 b=VXhRcTLWsMdSdmNO9KG05n7gZCLed4dB2Vj3vMcI4BE08f3mVw1FqyPRCLK0SALoT7GxolQyFMxUWEtGUVZq6s3GFBr8I0sw0P3WbTpU6QxNaZtoy27gsmDdo1s522kMuBdrnNEeg2ODv4tH2Awxsg2F7VEgNg29PpJZ9Mw01mE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB7018.eurprd04.prod.outlook.com (2603:10a6:10:121::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Sat, 16 Jan
 2021 08:45:35 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3763.013; Sat, 16 Jan 2021
 08:45:35 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH V2 5/5] arm64: dts: imx8m: add fsl,stop-mode property for FEC
Date:   Sat, 16 Jan 2021 16:44:31 +0800
Message-Id: <20210116084431.25851-6-qiangqing.zhang@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:4:90::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Sat, 16 Jan 2021 08:45:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 680e587f-b518-4863-ff47-08d8b9fb1737
X-MS-TrafficTypeDiagnostic: DB8PR04MB7018:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB7018011E849290E6B5A96F04E6A60@DB8PR04MB7018.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:989;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D2Ra6NAbjf1xWPUsnNapmDB9lsT2OG8SYBnikNxB7w0SqtSpBMbAZQ71UQWQ+9K/UEfLjy5xQZkSvjEIGsI97uq1UQwvSlj5U+DD73LP7ksAUg4Qtld1fhTbD1OdUDsVFB5g9GQ1kBs7CErRGv1Ta2/o/S8nBvtNM8wuApraCH0OVje13OHuRLEIfRO58BWmwKTsizP5m3WXGCBejNi8ATzd05uebAo2HSPdyXiiy+QTB/flD5nGipo/SitzmVtHQ/Tzfacyw+HsLTd3pjs14kYaDL0yYZoW3tt8PJs8jVxZ3Eo1zvB8Zoy2worNKfOTc3fumFSStoU0OiEoLD5XMVab8iQcvNxH/ku+E+0SC7c4wexq4PyKPgUsxrrocZkFluSwL6JF46xF22kIJjREgQzggSWH1EyGYI+aOfkjh7EKLDfPefHDUYnQ7UizKoGkHsV4vYcz5M/V7kXSiibd6gf/fKBDlbV/cZshrPQlDa+5dmy2WjtGsjpMVBmzXpdiriiUB1agcj70LhukoPjej2c7qjbUyZpzZv6pMpRm4VcFQDXomqqLeUo6t7ATr3qdsqifa5c3Hras5dDYiehYYiSiZB6BLFQBwsZjsBEPwAA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(956004)(66476007)(66946007)(6506007)(2906002)(26005)(2616005)(66556008)(316002)(6512007)(478600001)(8676002)(186003)(16526019)(36756003)(6486002)(69590400011)(5660300002)(4326008)(1076003)(52116002)(83380400001)(8936002)(86362001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?lhLj9Oi5gOOLGbZ7K6tpmgdqedYmp/5NjryjMMHRVC9lRZtLDJzlQWXdMI+7?=
 =?us-ascii?Q?sdj/hLlP3w1uPiKgxMVpQZbiExvXn0MjfxTeyh/Y+BIYkqITDjE4fiVmPWZL?=
 =?us-ascii?Q?RLM/CHSh2TFtpR65jQUbnB8I5KFYBNhaSbPiO+3ruL8IG0FzIxFgtipMQrlS?=
 =?us-ascii?Q?C7nkguF/i4SYG+PPwBR/qRctzZ0Mf8zqeY51oLEtLntG6/6mcpcIE1QQXiG9?=
 =?us-ascii?Q?YmaY83YQS3wwkD0XED2I+NdBRFz85WORjRYbWiFs7Vwz34xZ5ryDWPuJI+au?=
 =?us-ascii?Q?nRnQ+3uzy+9UcULjUUNmFBzp1KPnzhL1lDr189QlewN0gwvlhER4LuYQi3lz?=
 =?us-ascii?Q?C5s27ilQGwtPiZyJLrUrIW6TjxkVmGA5pbytLEP3gUJql09aZTqypH9e0H9B?=
 =?us-ascii?Q?nhZWDXhGtsSR7qfjOAklXPxVhDctnDm05cGhZ+z0Kz9BwVxaI661GBzpVlFw?=
 =?us-ascii?Q?PwzG6H1jAVg3Zj/thGFNuJKn++WJvjJq2qa2Y/Bo3uRrytESL074TGS+Z/Bc?=
 =?us-ascii?Q?3fizDbXGTdEEo0E12HlDPQPDdEfnysTqdLRuneDbhUIjpCJctIfrBANTHJM3?=
 =?us-ascii?Q?QqJ62c5+kZhgCmGShjuwG7BnrdeAJecRQEhVy5pge6DpQHcEijnCuQ3d7wQ7?=
 =?us-ascii?Q?FMgUujL8I+/tHjF72KG3XB4NXzKRIcM9qsreOaiOmBDH9//cdpa94El+3gCG?=
 =?us-ascii?Q?1TyUKc2lOmE2FMM202Pf1hQd6lkozWLbqjY3y4e/qzn7B45pDZ9FkWw3Xeoa?=
 =?us-ascii?Q?aR3pdhVbISEkyFvwVxXGHJjgp3l0879FuESBd/l9K8A6AJNF1b76PWGmA+3c?=
 =?us-ascii?Q?syqBGpGcn5hwESPHp0XnwF3i246FycZyQIe4qjvqx20IgX/qxCyY753Llo+V?=
 =?us-ascii?Q?jgW23hYxLAppMTO0HCwS4gXNFFIexR74KcM3NwgZyAW4T2hHTQg8g1CKTSja?=
 =?us-ascii?Q?6dRwDeO/o5zICna5qcGTYVVLnEoK8GxumV01Va6ZCcWYRAahLnYwBkIm5s7h?=
 =?us-ascii?Q?919F?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 680e587f-b518-4863-ff47-08d8b9fb1737
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2021 08:45:35.2431
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BQYIzK6tjp7/fXX7700dTogSiJzXTeIX39Ji3RE3IV+4wIyDcLHEA/Gb61/sQ6M6YP9WwfBII0ebeVPW8mFFBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7018
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add fsl,stop-mode property for FEC to enable stop mode.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index acb8df609e2b..6bf1d15ba16a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -930,6 +930,7 @@
 				nvmem-cells = <&fec_mac_address>;
 				nvmem-cell-names = "mac-address";
 				nvmem_macaddr_swap;
+				fsl,stop-mode = <&gpr 0x10 3>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 30cc51b633cf..3fac73779fdd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -928,6 +928,7 @@
 				nvmem-cells = <&fec_mac_address>;
 				nvmem-cell-names = "mac-address";
 				nvmem_macaddr_swap;
+				fsl,stop-mode = <&gpr 0x10 3>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9dc63eddce16..47c8fe10a5ba 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -782,6 +782,7 @@
 				fsl,num-rx-queues = <3>;
 				nvmem-cells = <&eth_mac1>;
 				nvmem-cell-names = "mac-address";
+				fsl,stop-mode = <&gpr 0x10 3>;
 				nvmem_macaddr_swap;
 				status = "disabled";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 48265f5b2728..61e94f1f918b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1181,6 +1181,7 @@
 				nvmem-cells = <&fec_mac_address>;
 				nvmem-cell-names = "mac-address";
 				nvmem_macaddr_swap;
+				fsl,stop-mode = <&iomuxc_gpr 0x10 3>;
 				status = "disabled";
 			};
 		};
-- 
2.17.1

