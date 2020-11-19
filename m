Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17C422B93DC
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbgKSNpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:45:08 -0500
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]:21955
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727189AbgKSNpI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:45:08 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l98WQTKfIKF/rYJutaMzSseMr8IIHJcl1crPH9/sL9m/8aeDf1RUE7NQNuL6cw5efdsd5xoRyxuoF5L9aV0y2K/d5wzWIVRf/Zgic4WYcUA28WHF9T+SuWwijmEUAQJTemArVcHMYyOUmFe7psyDuV+tdvvu1Kq56D9QTDuNlVq3I/jGIvw6C+S1VR8Xdb/zIEorz/hWJy+uZzMI8EF7ykNAUtII3nP/cKSwldpwqlKm9tiA/olGpXpf6TFNLFQshCUVdG2U32GNkCH/1DTQUymVHBNvuKVtCDKWbMXZ6GwZDMN+T5hojpvYBd9oq66UlodEtXnuE3EBLvKpGglWDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mzkhi2FG/q1pC14C0FdcMgEtCp6L2mPgC13xCVYGM/g=;
 b=OVxvoaNN7tV61sOffBoESN3lMiP1zm+vQ0T6zL89op28ovP/oGrbtp+k5ejClwEC9/rzUIJHIu0xa9mz5TNjLca/9Nh4Q7M1qQo3Shbzu9D4BrBpg+bJw1jnkwZmn9WvSfPUPIWr3K14V7rdd+iv+VS0jwsC9sympiJKINRX6JOmg6En3UezUaPLs6TVj+P4f/RZETYMXcbDhJBuX4KKr+1X3qVnAO/zw7Ai0kaVm6/PamYCMbyKg5Q8g0rvmBOXDGaIAArBjGADY67+vbrQkqOv6cJ0A9i9RTUuwb69KV/bT1YWbdwhso3jpZ8me60dkuqUohq71w6PfXTNWC4rQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mzkhi2FG/q1pC14C0FdcMgEtCp6L2mPgC13xCVYGM/g=;
 b=hJBFHcFXMqdzz8avTxKp7WE8xyXHCJpQtte+TZ4uEKOA/cPrCy8PgK9iEJMH46YA+Ce8/DhMJFI6Rn0nnfPsSmHLXaKzDPV4YIpEoxZHPmYMFAHQHRZFuS56Xrd/osyV13AfbOg0ZCv1jfiuL+P2nFNVCekiD1dFDOL5qisXZAE=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:37 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:37 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 07/15] arm64: dts: imx8: switch to two cell scu clock binding
Date:   Thu, 19 Nov 2020 21:26:46 +0800
Message-Id: <20201119132654.1755-8-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b1c3250b-b6dc-4fbc-3bd6-08d88c91418e
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3784ED21755C2CCAE8D9D62180E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:71;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ySRfvpCwULMk9T0MlVJ3odfFR8pvwutW4iaBapb7A0gGh9aja1aseixVWFyMCIdH5kHAv9+yUC+QCzPrZKRJqgJoLpNMwncPNU3SjzXWpHIfTQ/0FViM9MC6csZEcIogFR5dHIcJNitCriKt8UdgSTCm0Ps7sYeUEWUfSPLvPTHBZnfRVIjyANE4sXZcX8718aNq9j8Fd7bW0YvL2ASnuJedYYdqde4mZMddUI8xaT6Ey6L/UU1KZLTWv+43mE2fgs0SAXeGJH56FzZP/dEeeQwvwTkjp4FCxGXd1tQyItuKvvqbrSU63RrIF64KORL6X51jHczbz7f0g3itCYJFqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(30864003)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: j9tI/jRl37X+PtXtMQm10CwUmQMpMpiK+K5yG1877l3JVFZvrdQ6YQ8YhFVuUbDGdKY2raleg8BRlxwDKXtqfkXA5VSMDupjLSe0TdDgjKk7YQQaG/4RGZQzr1V5jr1lho3QjpSgHIrIKdPqOIXwxk2rmlbSBJtPv5b6THh96bE6WbwvwyGKyWTnV85zhPKzzUTH0OFgFKQ5Sxjv7DpCcblV4H8dI87cunuHLBS01ZEFer3lezcFsO3Duzk/70k33eRoK3LEs4Y/vypGSJr/c6EUkWbGwmiwCdkWOFCnyWVPAhUu2/QVudhkADaN5W+Yj2q5YZorJSoSqAdYmAxOcgRNnrL5/8e8me1uHXA3RM0UGeg7wZzQ3tAuqKFmzbOIsabTSfDBhJAbW2W5ZZGMTquTMMkxwORwJY7fbuwTyZkgxxd5+jDU7UXQ+qx1sARXcJNSWFfzIK2eX23X7zxMfBJyAf12exbZCdStWu8b6/bQGaWeaQbVjowCvLF+wVd0NhbKZJY84Al9Aq+NGZ2/TzFBrL4ZIHl40uLttZR73VUImHJyFWfVFswl2vtHhnPW3hKyCNuREYNZu173HjECAy4riJcOFawcIOJiHUWqKHOH4XGD0S9Fa571wEiwyg7oSwEuTDWyaKbdFZefp1Kxfw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c3250b-b6dc-4fbc-3bd6-08d88c91418e
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:37.3550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QoHeH5b7T2mgR63OCE7zbeDJrA16p6M6z3fPEeeb+WRuXfqRtdNz9fpsKzInxmNa9rop/ff+OtHBcS4ED/c1GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

switch to two cell scu clock binding

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * no changes except rebase
v1->v2:
 * split from lpcg binding changes
---
 .../boot/dts/freescale/imx8-ss-adma.dtsi      | 24 +++----
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 14 ++--
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 64 ++++++++++++-------
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  4 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  4 +-
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 10 +--
 6 files changed, 68 insertions(+), 52 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 9301166ea629..30f2089cfdc4 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -113,7 +113,7 @@ adma_subsys: bus@59000000 {
 	uart0_lpcg: clock-controller@5a460000 {
 		reg = <0x5a460000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART0_CLK>,
+		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart0_lpcg_baud_clk",
@@ -124,7 +124,7 @@ adma_subsys: bus@59000000 {
 	uart1_lpcg: clock-controller@5a470000 {
 		reg = <0x5a470000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART1_CLK>,
+		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart1_lpcg_baud_clk",
@@ -135,7 +135,7 @@ adma_subsys: bus@59000000 {
 	uart2_lpcg: clock-controller@5a480000 {
 		reg = <0x5a480000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART2_CLK>,
+		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart2_lpcg_baud_clk",
@@ -146,7 +146,7 @@ adma_subsys: bus@59000000 {
 	uart3_lpcg: clock-controller@5a490000 {
 		reg = <0x5a490000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART3_CLK>,
+		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart3_lpcg_baud_clk",
@@ -159,7 +159,7 @@ adma_subsys: bus@59000000 {
 		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_0>;
 		status = "disabled";
@@ -170,7 +170,7 @@ adma_subsys: bus@59000000 {
 		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_1>;
 		status = "disabled";
@@ -181,7 +181,7 @@ adma_subsys: bus@59000000 {
 		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_2>;
 		status = "disabled";
@@ -192,7 +192,7 @@ adma_subsys: bus@59000000 {
 		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_3>;
 		status = "disabled";
@@ -201,7 +201,7 @@ adma_subsys: bus@59000000 {
 	i2c0_lpcg: clock-controller@5ac00000 {
 		reg = <0x5ac00000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C0_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c0_lpcg_clk",
@@ -212,7 +212,7 @@ adma_subsys: bus@59000000 {
 	i2c1_lpcg: clock-controller@5ac10000 {
 		reg = <0x5ac10000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C1_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c1_lpcg_clk",
@@ -223,7 +223,7 @@ adma_subsys: bus@59000000 {
 	i2c2_lpcg: clock-controller@5ac20000 {
 		reg = <0x5ac20000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C2_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c2_lpcg_clk",
@@ -234,7 +234,7 @@ adma_subsys: bus@59000000 {
 	i2c3_lpcg: clock-controller@5ac30000 {
 		reg = <0x5ac30000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C3_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c3_lpcg_clk",
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index 4220a5cdc249..83945cc720e1 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -112,7 +112,7 @@ conn_subsys: bus@5b000000 {
 	sdhc0_lpcg: clock-controller@5b200000 {
 		reg = <0x5b200000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC0_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -125,7 +125,7 @@ conn_subsys: bus@5b000000 {
 	sdhc1_lpcg: clock-controller@5b210000 {
 		reg = <0x5b210000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC1_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -138,7 +138,7 @@ conn_subsys: bus@5b000000 {
 	sdhc2_lpcg: clock-controller@5b220000 {
 		reg = <0x5b220000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC2_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_2 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -151,8 +151,8 @@ conn_subsys: bus@5b000000 {
 	enet0_lpcg: clock-controller@5b230000 {
 		reg = <0x5b230000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_ENET0_ROOT_CLK>,
-			 <&clk IMX_CONN_ENET0_ROOT_CLK>,
+		clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
 			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
@@ -168,8 +168,8 @@ conn_subsys: bus@5b000000 {
 	enet1_lpcg: clock-controller@5b240000 {
 		reg = <0x5b240000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_ENET1_ROOT_CLK>,
-			 <&clk IMX_CONN_ENET1_ROOT_CLK>,
+		clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
 			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index babe6c3e2c76..813dbac71d10 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -157,9 +157,11 @@ lsio_subsys: bus@5d000000 {
 	pwm0_lpcg: clock-controller@5d400000 {
 		reg = <0x5d400000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM0_CLK>, <&clk IMX_LSIO_PWM0_CLK>,
-			 <&clk IMX_LSIO_PWM0_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM0_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -174,9 +176,11 @@ lsio_subsys: bus@5d000000 {
 	pwm1_lpcg: clock-controller@5d410000 {
 		reg = <0x5d410000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM1_CLK>, <&clk IMX_LSIO_PWM1_CLK>,
-			 <&clk IMX_LSIO_PWM1_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM1_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -191,9 +195,11 @@ lsio_subsys: bus@5d000000 {
 	pwm2_lpcg: clock-controller@5d420000 {
 		reg = <0x5d420000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM2_CLK>, <&clk IMX_LSIO_PWM2_CLK>,
-			 <&clk IMX_LSIO_PWM2_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM2_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -208,9 +214,11 @@ lsio_subsys: bus@5d000000 {
 	pwm3_lpcg: clock-controller@5d430000 {
 		reg = <0x5d430000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM3_CLK>, <&clk IMX_LSIO_PWM3_CLK>,
-			 <&clk IMX_LSIO_PWM3_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM3_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -225,9 +233,11 @@ lsio_subsys: bus@5d000000 {
 	pwm4_lpcg: clock-controller@5d440000 {
 		reg = <0x5d440000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM4_CLK>, <&clk IMX_LSIO_PWM4_CLK>,
-			 <&clk IMX_LSIO_PWM4_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM4_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -242,9 +252,11 @@ lsio_subsys: bus@5d000000 {
 	pwm5_lpcg: clock-controller@5d450000 {
 		reg = <0x5d450000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM5_CLK>, <&clk IMX_LSIO_PWM5_CLK>,
-			 <&clk IMX_LSIO_PWM5_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM5_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -259,9 +271,11 @@ lsio_subsys: bus@5d000000 {
 	pwm6_lpcg: clock-controller@5d460000 {
 		reg = <0x5d460000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM6_CLK>, <&clk IMX_LSIO_PWM6_CLK>,
-			 <&clk IMX_LSIO_PWM6_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM6_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -276,9 +290,11 @@ lsio_subsys: bus@5d000000 {
 	pwm7_lpcg: clock-controller@5d470000 {
 		reg = <0x5d470000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM7_CLK>, <&clk IMX_LSIO_PWM7_CLK>,
-			 <&clk IMX_LSIO_PWM7_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM7_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
index a3f8cf195974..b5352706e3f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
@@ -133,7 +133,7 @@
 &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
@@ -151,7 +151,7 @@
 
 /* SD */
 &usdhc2 {
-	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 46437d3c7a04..c40bbb313b78 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -173,7 +173,7 @@
 };
 
 &usdhc1 {
-	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
@@ -185,7 +185,7 @@
 };
 
 &usdhc2 {
-	assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+	assigned-clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>;
 	assigned-clock-rates = <200000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc2>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index cd7a482dc3ff..095d3f69a9b7 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -58,7 +58,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -69,7 +69,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -80,7 +80,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -91,7 +91,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -165,7 +165,7 @@
 
 		clk: clock-controller {
 			compatible = "fsl,imx8qxp-clk";
-			#clock-cells = <1>;
+			#clock-cells = <2>;
 			clocks = <&xtal32k &xtal24m>;
 			clock-names = "xtal_32KHz", "xtal_24Mhz";
 		};
-- 
2.23.0

