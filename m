Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84A002F8C50
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 09:46:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725767AbhAPIqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 03:46:50 -0500
Received: from mail-vi1eur05on2069.outbound.protection.outlook.com ([40.107.21.69]:36446
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726045AbhAPIqq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 03:46:46 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T3T0+nI158goj3h78+ssRVijCYa6WPU8Jtu00qptPm5FJngiUnXt6tcRWcTUzSsdYX/k31ZyzUTlw60s9BqXw0fUp450C5XnySrdtrvOVAokEeAcRsqV6JeKDIDj5qbAVfSiYq9qeKrUG48wKT5Cj7k2s5MrHOElslL8BDWdwyrUCG9XdE6jQHQv4awG/QqC/o2j/RhdNwQMLJdHXBN2PBt5MWlPTuoha4M9Wg4lOBNhYueUrXOxuLz6NmgJuiF4KHgaC7fNAivTvxqsb5Fu1JiNCvFosktN+22BxkX2P9x/WvLxs8Qk3PcHnGOq4BqlVRud4Nnwc6/QK/OoDqxt+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QlEo90COOir9i4VD/rLQ8Xcd1Z1zh+8d0ctdm4TvHQE=;
 b=ZxwJuY/43Uj9dvl+52B9BOFg8j/4dQOrGMqb+C34q6dADemIDtOuUr/C/PVa97FxleR6fnCKFsPuA7BzAtZuVAPLQ0qKF+/KZxH0Alf9oQdc/Z6DoynSN7eni2scuYpQgENqMQ/C/CdI46W7HJJP4C+4ZXrJoVqbg6qBWpxXzk3e8S5WWPHEF9YLaTZyyPhzhotPe70qWJKcBGaitxgf5b8/rs9LaXzChCxJLrMEDoH8uJYAjv2uy1EtJaA2epC+tQ0jSp23fG03ObW5VL4o75TxfqjK45/CQP1dSr5zZgDa+vxsTQNFoWCmMQiLuqBxEvvJwO5oQ2Vnsgp4evpdvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QlEo90COOir9i4VD/rLQ8Xcd1Z1zh+8d0ctdm4TvHQE=;
 b=X2A92ZDSd8iwEsGZolBxAwimLlT4mLI6MIoqmCd7C62gIl/u0xssRQZzewo4xDpSMO3VrEyPAKhont5b1M8nrZZpL5AAxmXcXURgYN84y+nfttR5h7BKTusmIRekZesfeD64V7eEXCPaWgHkdkzbtw9ixA3HAnGXHuXlNVUvGuU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB7018.eurprd04.prod.outlook.com (2603:10a6:10:121::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Sat, 16 Jan
 2021 08:45:33 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3763.013; Sat, 16 Jan 2021
 08:45:33 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH V2 4/5] arm64: dts: imx8m: add mac address for FEC
Date:   Sat, 16 Jan 2021 16:44:30 +0800
Message-Id: <20210116084431.25851-5-qiangqing.zhang@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:4:90::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Sat, 16 Jan 2021 08:45:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ccd0e7ad-248a-497a-f64e-08d8b9fb15e0
X-MS-TrafficTypeDiagnostic: DB8PR04MB7018:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB70189207BC0807D78CCE0135E6A60@DB8PR04MB7018.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZURUZRaJZPfrxWaLwW+9v5uZIk/XnFOWFOKmp8xLHbJrsRcc7JENTjFaZT8SSCY5hp29RiqOf6RTRFt98NkRhYcm3RhKSmjnyCJ+v5ScN0VWeNzMZlHwNk1+uJHyKsplJI5axfQwbxal0SUQXyqz6PRn68s31YG5pQgTqFry5IqZ6y4F81Wm447PyINc8IPcvbyN8HHgGn/oXPpo0Dvuc/FvJSwVjl0HELY5ess9CJLqx1T8cy1Z0tp/E1YqpcDEvRc4vfmgv5Q/gvavItFWNksPZmtInc4emSUB0yPm/k1zKy6bHUvp9a1+7J+J1hQg3Qaey1bKey6vLnMTpI9rQvoKdREjDYkdSNfw4hFuZUfF5m5pX9QywANyokVm18aqTNc4ZKjc5+iAloBg/8sbyHpvEy5Qp9GCLPZtlkmajWWN06dJ4Av46pm9M9l4hEuPin6WtWONEyK13gFrVjfd9U9uWwxhieJpf4JRrghYReq+mPPQp/oarNFPtop5mlVopC1eJerw+Sdp+oLArrxGDvTmwfqp4QlVZHnr2idJr67yxSkyuTCq0fR5HE0+UdGMS2aNP0VERDodYaVeoMbh9wW/ZgJZrRLHLtpkvh8FD5A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(956004)(66476007)(66946007)(6506007)(2906002)(26005)(2616005)(66556008)(316002)(6512007)(478600001)(8676002)(186003)(16526019)(36756003)(6486002)(69590400011)(5660300002)(4326008)(1076003)(52116002)(83380400001)(8936002)(86362001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?r/OuCrQsfae54kFuwMJd+CXKNehYz+4kNEpu8iUNvtiHGxYRo1+nPUQUmeT4?=
 =?us-ascii?Q?pEEBOj/VkxRlCccX5KF8nyc1B2fAEB7KLxWicb6V/OO31GsfYgX+OYdbyQKg?=
 =?us-ascii?Q?rtDduYm2n+gfbsnJI1hP0cvgjX0ii6kn0XvWkFjvYsXGXfupPJvigAnTkWwg?=
 =?us-ascii?Q?lFze5MRiYB2ec/rc3L6Ydw2obQdK6Tryi/iCh1Cn9h9+VzJ36bxyF0L2r9qx?=
 =?us-ascii?Q?8P2UtrJg/CtHmW/6hABP7RZ8J/3mhRd/JKylw/uF65YU4wsk709IBYMulV7y?=
 =?us-ascii?Q?WhODwzUxNE/KRU+sf5n7Y0OxX9riOkcVYtQrQZY1bN8ZfmyLga6AaI3VB9Tw?=
 =?us-ascii?Q?m8E0poegOLoQKgiHP05VXsNlOupGlIZgLWYt7Kl4FG1dfDqP8pl52/wWc5T7?=
 =?us-ascii?Q?t7m86SmR71xCB4GgZprEtgkcd0oNuE3oyyBgMHRSXlJX21VXIFMripycnw3i?=
 =?us-ascii?Q?tfFwpQRirTtMV9Nw7FZpKlx22/shMJExZqFFSMVNV7qJP5BJWjU3iKcNLWgo?=
 =?us-ascii?Q?5tRpC9GnEeLrzdDRxKySF69VhTZoWScRXjdo4xzA6/nKzF2GIGMyTD88AQy2?=
 =?us-ascii?Q?6hFWrqd8+FDieNZ2r/4rJ7PtHmWo/QyGoX5+JuXOkgaSNr8WGwqzkrX8Omr4?=
 =?us-ascii?Q?vguroAbHFPB6kP5U7dfrXXlMEzE0NFEEujJum1KaLggLK3T5zAmxHaSKRaG/?=
 =?us-ascii?Q?VKCtckzdiFaMejqbllYKi0k4U95nkepxzfKs3hVfI8lnI3RAzJ9CGis8hbgx?=
 =?us-ascii?Q?AdpwzN7mbhcjt45WMbIt1HJ32sLy8AbaKMISE7Hso8/IWGq2AoKuc2hEVRLn?=
 =?us-ascii?Q?oU9oK8KI5T656VO/kOEwQjIT8pSZqz+q2kjEf1gveK2iodsG5rrysp/hUWlt?=
 =?us-ascii?Q?ZrZljUElTxXzUAcCTRrUFxNybClSJHrgziMo0dxru9z8+g4NypvnfGD1mqbR?=
 =?us-ascii?Q?AvXay4UBN+OO9iEWH9UVZd6v2l76arEtSCl2yWNWoaxnh8IB39bN6rumipyI?=
 =?us-ascii?Q?+XS4?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccd0e7ad-248a-497a-f64e-08d8b9fb15e0
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2021 08:45:32.9891
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DbVdjzeI7jP5HaIC2NypPUQi6A+abjuS1c3yNtW5wtzdG9Kja3QAuayIK+rkVlB0aLyW6m/t1zd2sFyzfq++Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7018
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mac address in efuse, so that FEC driver can parse it from nvmem
cell.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
 4 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5af0e63b1db1..acb8df609e2b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -527,6 +527,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				fec_mac_address: mac-address@90 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: anatop@30360000 {
@@ -923,6 +927,9 @@
 				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
+				nvmem-cells = <&fec_mac_address>;
+				nvmem-cell-names = "mac-address";
+				nvmem_macaddr_swap;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 9dc52747a142..30cc51b633cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -540,6 +540,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				fec_mac_address: mac-address@90 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: anatop@30360000 {
@@ -921,6 +925,9 @@
 				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
+				nvmem-cells = <&fec_mac_address>;
+				nvmem-cell-names = "mac-address";
+				nvmem_macaddr_swap;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index ba32725ff28c..9dc63eddce16 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -337,6 +337,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				eth_mac1: mac-address@90 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: anatop@30360000 {
@@ -776,6 +780,9 @@
 				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
+				nvmem-cells = <&eth_mac1>;
+				nvmem-cell-names = "mac-address";
+				nvmem_macaddr_swap;
 				status = "disabled";
 			};
 		};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 2f64a868e01e..48265f5b2728 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -564,6 +564,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				fec_mac_address: mac-address@90 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: syscon@30360000 {
@@ -1174,6 +1178,9 @@
 				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
+				nvmem-cells = <&fec_mac_address>;
+				nvmem-cell-names = "mac-address";
+				nvmem_macaddr_swap;
 				status = "disabled";
 			};
 		};
-- 
2.17.1

