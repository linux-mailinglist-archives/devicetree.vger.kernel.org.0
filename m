Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6DBF36ACAD
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 09:07:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232100AbhDZHHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 03:07:32 -0400
Received: from mail-db8eur05on2047.outbound.protection.outlook.com ([40.107.20.47]:35169
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232112AbhDZHHP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Apr 2021 03:07:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mD7fKjt9UDZPmDMwaFA5P3jhTdDQlhhvve6f9zxeALfFdqz7rG0dXuTjKwSR42ziDme7+qkHE0H44pzHtmUh62Tq8R0UcLoxG+vatOEJi1xD5gPHM36Y2p2AArYUkM6n74HBxUInyEv/1xUcg6WAc+EQquY+f+E2h7dN2T2/yyuDEJf/9N1QPTI3q2e7XBpydgaexzl7fPnXNaKy29o7qvhEqOE0YwuDhJkM4LLESCzZfpUH+vhTWmjNZCgL46xsqxMAUdgfzItdo6zYFw/7LtQyB9cqnDOBqWiiZXsmnXx+XBHR/Tc+Ly/2rJ9OPMVqjle0xZvwAEdXfSV+Xy/0mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6C2TNyPO4NppXOXiVJCKWIPtaGZSdrI7aBsa2J06XvI=;
 b=GC7tj7D1PQKgKujhbj8qBYmxbZ3OpgJkPhSF+ZfegDYY7jX/IAcqKmG4H7udnpVh3hL+gRtigfCEJDtYy0jGdTZyAMjSphXYZfZDHHviSArFzkv2YHKS2sAfcLTarRAoXZIeIm+xP4gPpnPLYaw3SvwIYC0Of5xSxajoyDu+ggJhfswhRocVQtKUd+FzsRATuhPBRNZqIW/93k21TmWocXI+QLgO/tI9nPXQJ0PDC3KoEvPxvBl8jm9KP0+nKr8ItIaSyn7Kj6HbRmKnlQXZk3TthriHXwu/KNGhYbhgChb08+l+jNMdLjyL/AX3zygkpGacG2IzAFo2dCkbxt4ppg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6C2TNyPO4NppXOXiVJCKWIPtaGZSdrI7aBsa2J06XvI=;
 b=p8p8FVklNmokpUNmNnzB6qrjGuLziUviHlzmSi9BCqwkSUwrnfB359hCKBT/g29FBUZIYM+m+IMn34zG5EdnB1eEm3pTSfxUNBeHyz/GDNc1ljLGmVKAOIcnsUO/WTNICeCqIvkpucYZ23C/u+nn1DFRvUYovDVvlu3UFBnp6LA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB4282.eurprd04.prod.outlook.com (2603:10a6:5:19::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Mon, 26 Apr
 2021 07:06:32 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3400:b139:f681:c8cf]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3400:b139:f681:c8cf%7]) with mapi id 15.20.4065.027; Mon, 26 Apr 2021
 07:06:32 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com
Cc:     linux-imx@nxp.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp-evk: enable EQOS ethernet
Date:   Mon, 26 Apr 2021 15:06:54 +0800
Message-Id: <20210426070654.8703-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: HK0PR01CA0071.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::35) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by HK0PR01CA0071.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::35) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Mon, 26 Apr 2021 07:06:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ae27949-6cac-4aad-247b-08d90881d275
X-MS-TrafficTypeDiagnostic: DB7PR04MB4282:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB42821E87EB8BC6BFD6EDCEAEE6429@DB7PR04MB4282.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:267;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fQLDCNca/2eulkn3KLB4BzVRoMpnmLglyYLgwiJVWDUjgTUIgK4UAqk7FY8pEQ4OJy48DsZTvQo2oEmzI7/VpmOwtlJ/qICTH3u76cWxj0lUG/bnMFIq6PtesDieGUvj2XbkA1SV4m8fh5OTEm5Mve3JtTncgfeThYxB1BMd1xcvK2GJ2HGPy3q2D2p1B3SzomycDt8EhVbXIM62W/fqZ/vfSDsuHEKe8mHykE/rq7UY9GcpxehGr98MfSOHEJncIJgo5R5d+OsjhD1Dk/ZPQMKIlW6uaTLpblkf3FZkcsJKL5+cIeT95cDWu6HhaVDxYvvwVuulsH6Yi0x9XnlQip4le05j0Lyc0aOAo1tSABbUkq8x90j7v4se5OOykyq/7h3j6OJi8S7NsTX6/pcL6rx2IJmwqor+GkapioUtwjlJ/tfbuuqqh9UjvmOQp537cUJkUjn1LCtdcvb6X5kkqLppuIP336TRvZNj3U6CLMQE3hQLgU56dMhRgXJ6jk9OEuT5nWoMvoOhq6hC7kDEiJiANjmE1/oywjgP8cxNQ6z1tXFkPYoQgNOUFoFTzSkhSXhriaHnp6k+Stg6s0/zhV1xiM9Zp0IoeliOIuHWjEW2Jqxmxi1nNJNYYlipx9/pFLob/947xaxemKIRtBAQmdHbGRcgj7xAWepTBuFYVhmX46WwrQ901xBynJIKfdrNnsgTimiobn4/YEebnb7c2H+vpAok9qUSWV4k9dldloc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(26005)(66946007)(2906002)(38350700002)(38100700002)(8676002)(6666004)(316002)(2616005)(8936002)(83380400001)(52116002)(16526019)(186003)(478600001)(956004)(66476007)(66556008)(6512007)(6506007)(1076003)(4326008)(36756003)(6486002)(86362001)(5660300002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?JgHg1PuxtcgKS2klIVv7NuNhO7h4WWQMDl+VZep0IzXyFt6/3wp4cpbnrPgE?=
 =?us-ascii?Q?MtrkEmndQKuWtRy0dwHoscl29cB95eVffwGnthWlgLL65ihROu50xqaSpXqb?=
 =?us-ascii?Q?oG9UkU8zUKjNG+qM4xN6kBHPXkBztKvkzKB3maRONEP7wTbHQVs/OfUAg7OK?=
 =?us-ascii?Q?wp4zgYK2zelPkz1HYthXrtbSGuj53WJ4Cq38ONdwsezRbN2QBLQna9h3HQSV?=
 =?us-ascii?Q?M64nrOUHr+/+Pg6W3r1Obklecp6EPDi+kDl66ufXUQ77naVTna0uwM8MGGP2?=
 =?us-ascii?Q?s2I+sTQ86Bm6XK7ihjiK3WJY1f2MSnvaBqPQjIcz2igD7OpYVBhiUPPN/W5M?=
 =?us-ascii?Q?yN0Fq/vcopG/HovQ09j+soO21FY/R0UpLqXETc4zhDEOPC0r2TrEpJ5PwxA4?=
 =?us-ascii?Q?6VnGn/j3/wqDjm3AU+eqUXZ/SLBzQk8/4Eu4pCdmOQvcTM/7iATpzpuGaAKc?=
 =?us-ascii?Q?N/iZReH4Ib6SJhtw1hyrVKALPyzHe1A+GNXHiJmYLy0+HXxCotgwbFVYArkm?=
 =?us-ascii?Q?CDLKlkQke8VawHyGcJd2z5I3uB3e75kUzyMIJUSDMJwTqc1F6XNGJCUF54WZ?=
 =?us-ascii?Q?SJJ0nl2JE/ocnwy2wh0O732fA8DadK++a5x8Pc/HfJ/HaXNxLtpg2HfnXgpx?=
 =?us-ascii?Q?aU0impmlVE+rrWghzzsYsdy/A4C5YAQtflWBvNTavP4HYfqUS18FIOXXuZns?=
 =?us-ascii?Q?1oTB8NbhFIccJvJAJmLFAN2j6b1oCvBajU+LEp29thI258j5OlL/S3jLMED/?=
 =?us-ascii?Q?SVN7/lv9ZpoUL+8K634PTLVLwWjWLA54JXTVwp/MTR+lY9z1mNJCdpQ8PK5t?=
 =?us-ascii?Q?bp5mn3q09hKfOuG89Pgd4TvTQdltn7uoPMIQw80pt9Hhwd/+A7tq+LbVUAyi?=
 =?us-ascii?Q?X7b7vXRUq2bEWX2asyRcDyzIRcfYsBYD8yC2cyGFTFUMKx/tFtpXN7lJfA54?=
 =?us-ascii?Q?zJwGyq6guscYDmG6G76EWUYeqegH9Qwc73c6jXfbej5jcoSPsN3WbrJjIU0N?=
 =?us-ascii?Q?zUtGkOLKXQ7QPwOVo3yO32hr6MBTcmiTzGO/c09ZuzN86lV9YRx2Y7IO7nbV?=
 =?us-ascii?Q?jCDQnDhwth0O6i/DJBuw1jwceG+2qqdqLnDWnCjQ6nyYYQTouf5LA1wXzHDY?=
 =?us-ascii?Q?7hy5w9vrYB3kvGBy3elE4D/1E5DzA4EoMa21u8fjwxDBy3ZA6Ij0bnFiAlOA?=
 =?us-ascii?Q?ZRwn0y9KZDG+n+eWeZL7kqHK5JNcGML/vPF+Qv/wlJhCpOlhlQCIg3cRJwnQ?=
 =?us-ascii?Q?mo7U/jkbH09k6fc77DhN08QJOLCt9wUfNP4AgABerv+3hUBwlGJQoE6V35Xt?=
 =?us-ascii?Q?NnR1sqb5WuuZ2SHHMzPa+Q2q?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae27949-6cac-4aad-247b-08d90881d275
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2021 07:06:32.7228
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: trDU9YYWAYurwojXZ+dq4pdPZlfI8QA7Py0A0rxfPdXz+5erSTqOH8wEZdvFau38SVc/G0TZisGgZnC5t6sRpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4282
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable EQOS ethernet on i.MX8MP EVK board.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 40 ++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index 2c28e589677e..fae6aa4c6b7b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -81,6 +81,26 @@
 	status = "disabled";/* can2 pin conflict with pdm */
 };
 
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			eee-broken-1000t;
+		};
+	};
+};
+
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec>;
@@ -177,6 +197,26 @@
 };
 
 &iomuxc {
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x3
+			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x3
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x91
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x91
+			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x91
+			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x91
+			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x91
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x91
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x1f
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x1f
+			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x1f
+			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x1f
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x1f
+			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x1f
+			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22				0x19
+		>;
+	};
+
 	pinctrl_fec: fecgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
-- 
2.17.1

