Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 358D43CCE93
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 09:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233759AbhGSHh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 03:37:26 -0400
Received: from mail-vi1eur05on2049.outbound.protection.outlook.com ([40.107.21.49]:25601
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234780AbhGSHhZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Jul 2021 03:37:25 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZj0Ji59vKsqVva2jCCtnyrF0Xv96Opk7WCZiB/x5Z4RUeVyhoCuLq1LuvQ+TyZEePc4Ov8k8Uje9GK/pjfNjGaUa1TMpyHC0xpjR2G+gNBiF5rHLCLIaIGR1P/RoFNshoEh0r90hZIyATgBt7PGYgVWnCquh94wk53W7dYJysRaD40tOME3uv7+ch6g9jKSTWeOIJhRCjTAfMJZLSwjHv3B1Tva94Dohq6y0NQHKWsJ9DESwLrsqKHjWXfDH6ZA4yEw3vtN/e8Q6mZJYSmVcHvzWHWTsdKVLm/rBWisWP6Jz7T2Kt8OlwB52KgUNlSYkGIcnrQ//AN9BqaTBS+nTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONlDe+AWIdQ3JDNbKiiMmJe3o5DshbJIoDj+2YUAozs=;
 b=GNNLRco9R0bOiDvxPS9Eo/oJ9wouX7MsVO/JqZwmlrWl9n+wVc/W88HUFF8excaRCo/h2fz4RFNxgG8nsLxURLvmmtyk3+4M+XwpDfmVUV/VnCEjlOixKcKoL/OfQIFWKIaNsildZg+zdK0arSELljxTjXmW0oZgwFpvXmx3yy7jxUxczfY+whhB6KbgtYmjv9XfLmIM42Ku18ei4jjfXB9S0liBHllCJZgi9ia/wlmZr7CWgKDoYuomtUKo6vv/s9LSDNNjTeNzXU1ulE9x7HXWVzdR8Fe5eVmlZXY8joXV0/2qdj4c3rygSBTtnuO7lG03/LrjTJA6KTYb9rO+1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONlDe+AWIdQ3JDNbKiiMmJe3o5DshbJIoDj+2YUAozs=;
 b=kQYlrvo8dVozWBFsubsu7F/YxngujK545umhy4/wt0pJvvCgwoZ8H1SENgZVSwRehXSJOzJSpIEOFeS6rZSBt7qG8J5yM37cO8wm9SlCGoX8xVFTHVm9rzykiPLyMmxhFKv1RZoudMtHhomZn1o66xz+P+M4JIvz/R9x+w5gwZU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3769.eurprd04.prod.outlook.com (2603:10a6:8:f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.29; Mon, 19 Jul
 2021 07:34:23 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802%9]) with mapi id 15.20.4331.032; Mon, 19 Jul 2021
 07:34:22 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        mkl@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH V3] arm64: dts: imx8mp: remove fallback compatible string for FlexCAN
Date:   Mon, 19 Jul 2021 15:34:37 +0800
Message-Id: <20210719073437.32078-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0020.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::32)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0020.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend Transport; Mon, 19 Jul 2021 07:34:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f2544df1-0697-4c02-4b34-08d94a87a09c
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3769:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB3769F6708D2B5046920E07F0E6E19@DB3PR0402MB3769.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pi7Y6dOGuhHKZTuu5lb3SyTLHBBBsllKf38CbLz5/sHSErZ0mOnQeRb4o+/MuxlzfO6819ZyKEwmBuVcT+HJHaK3awLHCFxdvoZBJ4tZYjBEXviV4Vm14fRqjCfXtYIp+U61ZHkRvR2kpSUGUCtXPW1CDL99Kmr9Mx1zoQDZK1mdMNw3z/cFqFBYcl4wZzpzyjtwRo3b4hfmGbzRSu3L5gOX1Gj0cX18zMNq5Db3N7uAOr3O0qDkBRQoNsc8Hd94y07CH89kRvvmaob2pylRs7vhUHE9lH5V9Rp65kl84IFmdtBvve7hnc4U9BuVMeIXHsw9cB0szf14Vk5PHad0kdB2mM5KLixPEtO6WPXUaBOH/1ebL/x1s1RYWMp2We9USRhgT9AzF41DX2qydDR3f9tmLThWFf1UJL68ksPeVtsQ7CuHXELabYPaMLFCc+r8wV65RjGu9aUaSOhFdNKU5kdSsAKZIzEWTpJxiOq6jJ/nkUd37jAv59LaUDOlywSNgsMjLIVbJpKRlCheydo/TE3Ui68wQ1ygpX/R8nzXNmAUd/8e1+PBB+UiBDRYgUmNEECMMNe7YncFKpHEWcR4yzVJmtQKhGZn7UEV1vZeAII4rzAxH/YFkVizfoC5f18WCimZWgiwgZ3CSJVEOYgIkoY1B/tokyGea4o4zSiSzClXScP4mN50/eA1J6NRKWdlnbtFkLSwAJ/e0R2UPmiBTHQL7QN1Smd32kQfsmiPTfc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(2906002)(1076003)(6506007)(26005)(6486002)(5660300002)(38100700002)(38350700002)(6512007)(478600001)(4326008)(956004)(6666004)(186003)(2616005)(52116002)(66556008)(66476007)(36756003)(316002)(66946007)(8936002)(8676002)(86362001)(83380400001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M8WM2/qr4uEvzJUiNOcmDB6YwA1Qfv5uXNchSKebHLn66PCCO5Mv+B+rAmsC?=
 =?us-ascii?Q?j6qjepP/LNn4KZQwXxqH0Au/jjDsxadORBH0GR2ZtNxC8qw18E8NqOx7X9XW?=
 =?us-ascii?Q?Y1iwJpaRBf1UQ7fyExiomhdmX8rmEOoP7QmLWvI4yS6fJlympoho5BZcaoW7?=
 =?us-ascii?Q?Vhzs6H/cmM6FWzJyvM0R5e28D36G8wZNVLjF7fMDMTDGHoMaMThYii5wpeyO?=
 =?us-ascii?Q?WGf4kmYtyws22PAh33ILmrqGCInzMDzD+6X6gAf4uRM0luqk3Wds18wx6FHN?=
 =?us-ascii?Q?4VOQI0ryhFf3aZbU+YTLa7C1I+ohtqV8I3NVRSi9JSlbf59GWYWwOPHFeWUE?=
 =?us-ascii?Q?vrFZK+JQ9/6msoRq4GXbNtW0s43MCpLgA26u0t78w8fVLIduMjtZYZpQkSwb?=
 =?us-ascii?Q?jHgZCVXHDsR8E2PYQQ9uDEywn/pX85xeW6hP1nfwzgakZLkx61kFgVXWkNbE?=
 =?us-ascii?Q?PJ8nTURy37LMfOddwZEXzg9CW9jvRVMYTEyfL0BW7xSX5dXYxA3R/Ffj2erA?=
 =?us-ascii?Q?5aQS0Y6CW3O7P6dH4BY2e5Ro0O5/BJnmARkYw1jyEQuiiEk8Wsv4Vef3IT+r?=
 =?us-ascii?Q?hB926vuLx0KXr/zY324wlo5FrLGs4+FrIf1ygCR6ikFpxVS6ZtMpDS/WwtSr?=
 =?us-ascii?Q?jjW1K1WIIo3V/AN5fxzTc8bJ9S66fpdv5Omq57FBR6bS/ju9Z+TgHla7uDaM?=
 =?us-ascii?Q?1CV+XNsuxe04N5kN2vPF+Aqvqumwrf/M/kDG2QVuC6dTnV3SfVJTwcOyVxli?=
 =?us-ascii?Q?axC9shzJJjt6EFpur0+gCA7MMCyDr9CRad9kRW+IRgrk/laIqCuoT/FBtzyV?=
 =?us-ascii?Q?C6+ouxTrckKU7EMmrUBRNitjWRrGTU5lydhfC8EykmlA+45FjV1p+QmxtD06?=
 =?us-ascii?Q?JVxYtBeYL3SRdQ2ZcyESt959ZoXv1sD+Kb9GcnQ3PUhjvWgaf1Aewr/+B38b?=
 =?us-ascii?Q?wHKgxG7aH2vI3TelZS0WKl/Lhs09tN3Pwwgn4++4JJA+X5l9hdZbXgfW7YzF?=
 =?us-ascii?Q?8gUyUNXerLK+wR2G2rKTa+M5jblGc+XiV7xRZSt55yLf+ZNHCpqG1OZF0jIr?=
 =?us-ascii?Q?Zorf4wf1nKwO+4bcJkh9BPAa2hAwTnFV8nV5NGNSnTPR1qymrZKcDJwQN1h7?=
 =?us-ascii?Q?99dKDkp+suWlQM2YNPDKfTUXR7hdFcx+qVcbT9/U/OUgdE7CuF5W1qwpbWWF?=
 =?us-ascii?Q?admYDxVsuRZN+BI7YCg+3DZjdcI2wC+PViTreLhcuAbO/msPUoQzaVBoCCWV?=
 =?us-ascii?Q?qS9JpVZt+QxL3l7rsxMnxj9agJqdRYOcmkSflmgA5WbejmG5CQhOvmtXZbjR?=
 =?us-ascii?Q?7Tye75Ikm1WQm2XfYMAA9v7S?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2544df1-0697-4c02-4b34-08d94a87a09c
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2021 07:34:22.8778
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IKngeBbry1EBSrhaJl22p043cD9rv99nt7uvsi2LuX7QC4A19j6cSHloOa4sQdMbzCXO50oIADeUDwatMgxwog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

FlexCAN on i.MX8MP is not derived from i.MX6Q, instead reuses from
i.MX8QM with extra ECC added and default is enabled, so that the FlexCAN
would be put into freeze mode without FLEXCAN_QUIRK_DISABLE_MECR quirk.

This patch removes "fsl,imx6q-flexcan" fallback compatible string since
it's not compatible with the i.MX6Q.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
ChangeLogs:
V1->V2:
	* improve commit message a bit.
V2->V3:
	* s/resues/reuses/
	* add reviewed-by tag.
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

