Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D0E92B93D8
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727255AbgKSNoy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:44:54 -0500
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]:21955
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727217AbgKSNoy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:54 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XncrUKCIBocQQUJa5PfXHCIQmODh4D97Nxy1Li7WaMATBwZt07uu7t4JfylaCkk1jdt52CBl3AgnF6a9Vvgks1A2EETXMzjJvL58sx/AZiADsAXDYQRGHevgD1ss5zSv079XcTs8WBa7fgxS1U1KBZnZqMWTpOUMmRnPCg9cWgm+a7gWZ5q+7yT+xdML3ae+uDmOE+B2+19SYBYU6QAZig01jnpfHlJP0N3TAI5lZYKHg1DOjoQfKhzvA1E8n76byJcFS0IDCAkMqDk9/rm2TzSL1bC3py9sfxt53eipzkAPe/ZCAKN1BlTWBpXznTQIpZr24IBcaMDSuW/r9uSITg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atgUNxJJoofm3BJSmZXvsBvsqlfZV1aRkxkvM+lQtXM=;
 b=T2oct4JkzF3+gBZ4+k9kZAHsw97BylND2by65Ooihu2KUDzl+h+vVLjCT1G9dEM2m/a2y37a35Bn/Xlzlzk+fJ4RBOTYiegyuBusNDglgw7MiDmMb7vstR8Rh9yMI9HDPbBFE3GM6Tf9RZHe03DdfefvZTACmdwUZicN4hh9i8TYo9h/6S19if9P8cN4/baPbVfuyYnmJreHuI6dkjThGovLRkF77xfGHs3YZyW0SzjxXwJ6D0CCXQiJMg41Nqgsg0ejveEM74XRt2US/gleDEgANZAtxjeHUp0BSZ8KgUe1cMk+fwwg6VGcgHDJgLUXooTd34YkLDk+QCXCQ4BKIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=atgUNxJJoofm3BJSmZXvsBvsqlfZV1aRkxkvM+lQtXM=;
 b=BjdlEmKtPSSD0a68MvMOr8g4Z7ynlPcgAyyHS5Rd3isOWIIOSdWIvgRcZ9oKHpmbrlOB6UxwW5IBIKW9zoftR4j/D9Z9N881qPiavLaYZiu+Hg6eNa51MQuLrjZpTN+5Pvmnj4NBS9PLEn+4WWj6lCqXa2mefBE+lGYxiriGg+I=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:30 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:30 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 05/15] arm64: dts: imx8: add conn lpcg clocks
Date:   Thu, 19 Nov 2020 21:26:44 +0800
Message-Id: <20201119132654.1755-6-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201119132654.1755-1-aisheng.dong@nxp.com>
References: <20201119132654.1755-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8f2b2d07-153a-4b81-2307-08d88c913d0f
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3784BFBA6B1259485B28962A80E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:110;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X10LLIoN5eiX39K5Df7qJDgAqsRgLi+llrw7MknbZuZDTRYCzHWvNzuvEM8EURzb+iXFO5Y/4e8jfhanHvK4K/iwd4OEI6yq9IrNFpUDbEQclyvoavCgsKq7xf36ybiLaD/2IXGM14iOxzpbrD3kvWHZCvvGPxgKRMJ20VE+hOrvQC+8ZwsBwu66SOd7+fs0NDkgI4+GbOf+o0z7UWlShbtBrsDX0Sz+nplfC0s/TzU+Owm55AILik+baDQJk3gmT7HcqGUDUQe4h9Ei74nDvyGK0PY4Rj+17xNE7eLB9A0ny8Wy1dR9BkWMq9W8sX5TR6fPclUplw7VfutUssVr9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: zf0wL6QFQipx19JdnMgAKcr2LKQ7QgH1DREf1qSuSW1BwcF0Xe6SICtmiYJ/YY3Xqq7r6+38RyKBLhDJpXyueIVfKyfhxcMJlLmiZgEPGA6oMXMll+2uubWjjVzOT6sjUCKIswCuPRn7HQp3BBOpo52CNXHh525gjcZMG/rKvXQxY7rZIEpeXbuRcUhVeEp9UmpoJa1fjvFfAPo569CCt77Hob1v6+krQpHWFOYePhJrt3gm1+KlgqPq7dTD3vJSjy4VWeL2iHCZ+Q8GeNNiCoxN1lVtFdf8DmJm3cUZYWCDRIQR+c/PqWwDSThEIu6B3l/aQgeRlkiBD3XnUULEMAVyUQSqJalBaOwvnsk59L7rBStIySkHlDjt8u5sVnC8hwVure0OIUk3Bs1F/EF1liJEQmSB9GJ1EL60OnCmep7+Ar0y9dmRyvrp/a8NgPIbYiIuFWLv5dAqClBvgKvSxRWXYNZkBKgdYaiaTfaenCj7ddrcmuUgPlHJUe+6G2QqQEckb3n37YkctMe5m/scSz0nshZpbjWu6BEcVVGVfhvX2xUC1ALQmk/s7lqrDlQ7sGauQFS6q3bVOKP6LP+qIZOIGCDQkfrnArLc/34EYyvBOxswODWGZQAcqkoup06ZzpictWKTN71Raqvh+hcLQQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f2b2d07-153a-4b81-2307-08d88c913d0f
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:30.0471
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rnFo0rWi2mqjmBumfDmVETy5TlyeBQnoKx/eQxHpgow7/u7i7vO+ZwWW3V890t14e5qAfvqGlRLwMCgBuFTpwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add conn lpcg clocks

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * update to use clock-indices property instead of bit-offset property
v1->v2:
 * Use old SCU clock binding temporarily to avoid build warning due to SCU
   clock cell will be changed to 2.
 * add power domain propertyv1->v2:
---
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 104 +++++++++++++++++-
 1 file changed, 101 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index 8691a43882fd..4220a5cdc249 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -4,15 +4,34 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/clock/imx8-lpcg.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+
 conn_subsys: bus@5b000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
 
-	conn_lpcg: clock-controller@5b200000 {
-		reg = <0x5b200000 0xb0000>;
-		#clock-cells = <1>;
+	conn_axi_clk: clock-conn-axi {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <333333333>;
+		clock-output-names = "conn_axi_clk";
+	};
+
+	conn_ahb_clk: clock-conn-ahb {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <166666666>;
+		clock-output-names = "conn_ahb_clk";
+	};
+
+	conn_ipg_clk: clock-conn-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <83333333>;
+		clock-output-names = "conn_ipg_clk";
 	};
 
 	usdhc1: mmc@5b010000 {
@@ -83,4 +102,83 @@ conn_subsys: bus@5b000000 {
 		power-domains = <&pd IMX_SC_R_ENET_1>;
 		status = "disabled";
 	};
+
+	/* LPCG clocks */
+	conn_lpcg: clock-controller-legacy@5b200000 {
+		reg = <0x5b200000 0xb0000>;
+		#clock-cells = <1>;
+	};
+
+	sdhc0_lpcg: clock-controller@5b200000 {
+		reg = <0x5b200000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC0_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "sdhc0_lpcg_per_clk",
+				     "sdhc0_lpcg_ipg_clk",
+				     "sdhc0_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_0>;
+	};
+
+	sdhc1_lpcg: clock-controller@5b210000 {
+		reg = <0x5b210000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC1_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "sdhc1_lpcg_per_clk",
+				     "sdhc1_lpcg_ipg_clk",
+				     "sdhc1_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_1>;
+	};
+
+	sdhc2_lpcg: clock-controller@5b220000 {
+		reg = <0x5b220000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC2_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "sdhc2_lpcg_per_clk",
+				     "sdhc2_lpcg_ipg_clk",
+				     "sdhc2_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_2>;
+	};
+
+	enet0_lpcg: clock-controller@5b230000 {
+		reg = <0x5b230000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_ENET0_ROOT_CLK>,
+			 <&clk IMX_CONN_ENET0_ROOT_CLK>,
+			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
+				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "enet0_ipg_root_clk",
+				     "enet0_tx_clk",
+				     "enet0_ahb_clk",
+				     "enet0_ipg_clk",
+				     "enet0_ipg_s_clk";
+		power-domains = <&pd IMX_SC_R_ENET_0>;
+	};
+
+	enet1_lpcg: clock-controller@5b240000 {
+		reg = <0x5b240000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_ENET1_ROOT_CLK>,
+			 <&clk IMX_CONN_ENET1_ROOT_CLK>,
+			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
+				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "enet1_ipg_root_clk",
+				     "enet1_tx_clk",
+				     "enet1_ahb_clk",
+				     "enet1_ipg_clk",
+				     "enet1_ipg_s_clk";
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+	};
 };
-- 
2.23.0

