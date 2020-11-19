Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD212B8F6F
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726650AbgKSJwu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:52:50 -0500
Received: from mail-am6eur05on2082.outbound.protection.outlook.com ([40.107.22.82]:2240
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726563AbgKSJwt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 04:52:49 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTwtA8QbFVwaPpWyqPxeNBCnsxq2n0ifu1ajB9KUFuu8xShkVkBdgFFOaHVDYj/zJC5RAt3I0czbiCApcdEklniXMq1Xss3rlwLPAYn1HjUKHT+55MhU21QFzpg1A22oYMCyfQKVE+PRf5ZJVHOfAQB+YTbkJgM7UtLpdjel76o8LojtmbZ/R+ELNabUxb2BvbNCOZAxOQncUs1bVougPW8rWDikdrM6uwf9PIaLULI0+A3igqEStnXvCxqaQwb2Zw2CAwZt2zG8sE/rFqlm18xoGaq2EHw9UH25hqykeyprck32KZ/WyATLI+qxvWPBWU94c3SW7j5al/UcknrYvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7X2hdBuHkITRoDpEChLv09jN7gYzl1fgivxbTnjJGMM=;
 b=fimLtnQmzg2rp0NDi5sfIG83yGBhU8WrjIpbI148zTY3ZVcMxdAdmgq9ifrbzsqKq0RqjYzdKn6YEYpAm4eTEvCpZOAgaXx8dbbGhM/OEdDawDC59Pj8EYAy5cQs5CzQQPIo7d6Fo8Ka0WX5tqaX8HwbwFcq7aOZmgH9ta6T0XNDw/3MOFCwrh6vKFjAgsjmRhW66TAfHPB4VtB9VwnHBhCH7kiIR0doX6YD3swU9VhETnO93oaVRDUb3o6YNnUTZJnhGCa+FEJQ1h9lstRz0BXVbUFO2ZZGyxoq8abG3URy7AZxnnLNxXNxCKWVPVOU9/+SyARWzTO3ZXJe5047vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7X2hdBuHkITRoDpEChLv09jN7gYzl1fgivxbTnjJGMM=;
 b=RrBf9ahjA8bemh2o2GD3pqag9DkwboIbgBNlCBkkognR1uxTDBH4Vq03F2In12TF7BBFwU8P68vFINREyyWG+ZFQenppq6umtD7eAL+19ngKseZiHmZrsXFoXyXDZhPLyvWYtk8dowTnSGgS/joZEyNywjpPjVr4a7q6lmhujQ8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBAPR04MB7429.eurprd04.prod.outlook.com (2603:10a6:10:1a2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 09:52:44 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc%9]) with mapi id 15.20.3541.028; Thu, 19 Nov 2020
 09:52:44 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: [PATCH 4/5] arch: arm64: dts: imx8mq/m/n/p: add mac address for FEC
Date:   Thu, 19 Nov 2020 17:52:48 +0800
Message-Id: <20201119095249.25911-5-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 09:52:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c9a1c0f6-81e3-4419-0cc0-08d88c70dd0d
X-MS-TrafficTypeDiagnostic: DBAPR04MB7429:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBAPR04MB74293F83D54FE7C30C492680E6E00@DBAPR04MB7429.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aAxFy4i1EoDLP6v5zsYzr7CUNcnXEZ7ZmR76mosBYyqeHkFudh2LHxJWNTcjvFrIrzc+5j7wxWQwpSzHG4X0fES5HMpPEW+xbtKeucydhjHcamy+RZY3my9329l82Z95aSdlDHbp+tJ4ftIpsNyxd3uXXPbQ/O87bN4X0s2oS4IBaYJQAPcKaXJ3fqATW/pjm6XjMB/Zv9TdJSbOn3kf3dPn0z7ejUFmGDzSITDgJNn5iCTXPxC4wq+s8TJYNAJ7+L/aqbEi6srGSh8xaoTcb1xBor2WyGjdRuOiLCmJcvKCE9ef25HD9VNpwWTMY8SYVvzZWglaj0DvZS6uBxy+PJiuWg+hPqo2r6IwZkP3Ym/98mT/ttoX3hGoP9K7xW1R3YW/jY/10nun9Sxx+McYkMD/knkzKtUY+KqShhYccYs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(66946007)(66476007)(52116002)(83380400001)(6506007)(2616005)(6486002)(69590400008)(1076003)(956004)(316002)(4326008)(478600001)(86362001)(16526019)(8676002)(66556008)(2906002)(8936002)(26005)(186003)(5660300002)(6512007)(36756003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: QZSxPio3kHfu4E25GEQQnPEeQl5exjTOvXvc0M51rJPRHsxuEHzStmYAsX+Dls12ZJTBppoQrGhs9gXr7IzWPeyiCqNFdR/J9iOkljQ5HcwRAz5gcTHhSz5NxL1XF4rEnxFU4DXiagyL/6gcvnQ+dV/eKy8rNo4G+h+aAzUz8wbWcIflBA2vNbzDPWkapP10YxJtha1WQ0RNYT/YuvL+kiwn2CzHkugH1pdMttIXqO5UMio1jIG0PUtdYZ9kl5gdh3aoYu6EONmOElqSOhybil19svauQ07/X46+/d5L4yRco5G1WHIUjvjZYecqev+6qcQgrIiodl4C4C8paGn9H7fE2VEUpadEDItAhH4FR/m9e4YnJ0Sj47XlG8FkDu/cDAxL5eENREiNdJSgC4CilvmcvkbWFfI0CKieRtvhUk+GmF/+HiEqX/pnCvSPbE91ailkEL2tF7DpUwKr8HzymYFV6j8TiZBhw53/CbabNfr/+pMqOIbRC2FwhtjjuBtD2EccBwgu8TWM8JmRhhgiyeGnc/+C7IZQbkOGoXHjew0gYflEx3lI+dwO7fn0Q3n7/UZit/xifCaH38NpmJTeFxlpLWH/5uZC6NoYs5NcgGUAaI3tR5mVnC8Et68bPHRhQMiNueYyK5IDmWxhjM4J2jJkjI2iWWHrNkSvn1G604M0k2io27qtGfVwyeCfV1MTO5QZ9Vb14iYTYbKn8KqpO62Yg6O/rEVo+8geQcdxY6kYpCll7ZZ4y2TL5Lizwr85wVPIoNUVIhHwFsYz7XPbohN0Ln87/P3Ui9rRLlnDk0gQs+otJCkZHQFkzX3C/UWSWMO42YZIYP+5yb5xICy0SujUM8vwyOCvJ9hX9qrwlrfaIj1cSNvGyTzEYIOXVAy6eVzXE2T0Zv184JM07/hTRw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9a1c0f6-81e3-4419-0cc0-08d88c70dd0d
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 09:52:44.7563
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hUL8rs2akhOCLlVmEY1zUcJ39wQSRycSe8QBEomoeGRxOoECE00JY1Gu7ViBM2/OBzGvQCYPd1jOtL+iyQywbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7429
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
index 367174031a90..0fbff13a9629 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -521,6 +521,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				fec_mac_address: mac-address@640 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: anatop@30360000 {
@@ -917,6 +921,9 @@
 				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
+				nvmem-cells = <&fec_mac_address>;
+				nvmem-cell-names = "mac-address";
+				nvmem_macaddr_swap;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 7556b24b6467..6c16d09e47a5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -391,6 +391,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				fec_mac_address: mac-address@640 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: anatop@30360000 {
@@ -768,6 +772,9 @@
 				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
+				nvmem-cells = <&fec_mac_address>;
+				nvmem-cell-names = "mac-address";
+				nvmem_macaddr_swap;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 3d9f5010769d..14176ee9a19c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -331,6 +331,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				eth_mac1: mac-address@640 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: anatop@30360000 {
@@ -770,6 +774,9 @@
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
index 8682a484dea5..6eb773fe6cec 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -558,6 +558,10 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				fec_mac_address: mac-address@640 {
+					reg = <0x90 6>;
+				};
 			};
 
 			anatop: syscon@30360000 {
@@ -1163,6 +1167,9 @@
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

