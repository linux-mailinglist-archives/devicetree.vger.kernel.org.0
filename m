Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C15B02B93D5
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726949AbgKSNoi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:44:38 -0500
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]:2052
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727240AbgKSNoi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:38 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qk++rAKmyD/Dh4zSpcOUcH8S7QUK9OXIEQqMZl1icv0smzd72uj1+JLa1HrBc2M2ubsTmxgnfSYZu84Suw73EemluaZPJcTYxAqReD7pC2WHWMZE7k30ScYsMQ86NIt0wCWiUDTIIw3e+VsP5guHk6MvDM4O3BD50jXb4VGx0W/LtzSLHXx/ji96Usdq7IWfXx9lN9ZLiBylHvXNbFY0kzZXZjmg8dH72AEVA1AbivzfnZiKaKskT8EO14W6qlZUl+woVxuaYACoYlDWx/OLit2IqM6P7UFTRerCGgu5jslq9Q3foCmf4w8nR4/xVV5J945/rVdOHGi1tAw0hDaPXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mtLxtLzZ58M6iqN68joAR3m3hkf5X6RYpHeMEr9Ol3M=;
 b=Fw7QAMFYhbKRtLL9W8fo0e++IyiAG+3wfNsCIkgUZWTHHiv1St3s1QjmYtTBxWtLYKJ5pZ3+02sB9wV0YT1CZiWSL1dUiaHqEUUJrYIdMF4K+VuaFdcWggntJdo+bNjwTMMJ19ki2inu+VlscuP8KcdiRbnQcHsUm9+er9X5d5cdnuN1lH9VEHooluoZQvDSQKjIO096ZLJJOSa6xFq5cOj5QqJYdwmJu5og6zT/itlOF7+d2AeCelBU2FT7YDChM06uesjfqFsjYA0M4Y9SNPWxsQBhNSRZ2GWSPyRCSKd2faY/ZJJvUFDWDy3e4uBzR5twX5B0BoMbnFLG0tALmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mtLxtLzZ58M6iqN68joAR3m3hkf5X6RYpHeMEr9Ol3M=;
 b=VzcfaTwWtFzPlM0zpnsUoZ7UGGJnraQQfSd/J/52+oThpqQYh8w48r+BN4BMiqxmF01OvZjne9NTRYUaNOlD5LgSYY8BxvBVKNZFA99Fchk9RXDZP3usIfunG6UkGRv+ncQXOyG3Uc5gqbkmkhqD1Q053jF5AVBfsX2uObHAaEY=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6517.eurprd04.prod.outlook.com (2603:10a6:20b:f5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:34 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:33 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 06/15] arm64: dts: imx8: add adma lpcg clocks
Date:   Thu, 19 Nov 2020 21:26:45 +0800
Message-Id: <20201119132654.1755-7-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8c70fc71-f9bc-46d9-8efe-08d88c913f6e
X-MS-TrafficTypeDiagnostic: AM6PR04MB6517:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB65178FB360B7E3066538807780E00@AM6PR04MB6517.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ytzDTm1RlSqD6ctFOrmPAADszEt+RblgoMOauWlHDnskouWqGrPmdw2EmUL3leGeQPBi2kOz5R9Wmf3r63FcW+3P/NZIcNafL3Whg3l1pSLavUK/bgJ8vYhhzhaG3x25IKGIS6WrqdHBhYi6IDyqhnN+oHKFxquq1rarjX2C27hgf5o9ioNb55yvL+fl6Lffq+MFvyGtt0wZAQfjIV6hIRax95ezK7z+HEXWGDpnJleWVmkeeBWhHZNDyoFxDmNq1BrVuXuGYn4ojDI5E/lCP5L21A3sN/HIOjOlWb22Za54N3TVCwJCQMYZ4b1Acgk9rNyIQam6aon/MQ6La5s9KA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39850400004)(396003)(376002)(366004)(36756003)(5660300002)(8676002)(478600001)(6666004)(4326008)(66946007)(52116002)(6506007)(6512007)(316002)(16526019)(186003)(26005)(66476007)(6486002)(66556008)(1076003)(2906002)(8936002)(83380400001)(86362001)(2616005)(956004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: pr9yzbyqv3gLeFt3frv+XCfntfbfrpOE8O3CBCerw7n4fyzkcVzwdLd6NMbMstTSlg0O8E5+3UOc2eWSK8UxBcSFwvQhyGRfew3F+HHFu7wft8R3GZUqiRulPHTxeWAm3FKC0YFvxO4VkRwWRbZRyvSuwG/glOmtYDAiSuLUXCmYY2GSblTaG8M+/32OOG4VV88zf45BM79vNfMokMp+/wHFzILrbWmPvsWKh6PttRVR6wFgFTvB2Ko+hfFz3igio42N/zgompQoctfOslS7cjwqkDsNa08Kb7V/9MdiAMKr9d2Ydv36AQYvPe8mSM4VTdoNCN6RUXpFmiD62OPcDRU4VdBgChHUYqDNpwmolLNBksv+64qGpCumpCvxTLfeRyzzXG9EWpkTIItuxI9KqV/49JI4CdUrPczJ3Qy+OiVQyWCVxf5T6zP7XYWiMPuAJF9iUJWdeyxerV06Bbv+fLaWxvk7t2YLUhko2AV2EC3VxZAUM7ZB9davbNHnl/ZaoxwrQkejnx6G0/b1FaoWmyf3x4dMWZoR+8gk/ITfzj3UUHIT+9lBQ71o+7aI0RJdCMOB9eiXi5+tAHGhqIIlPydQ5iJQsUdGS70bmI6LjaUgL4FYmUN7m0eEF+0sIHDtcQ7yHjA9pPObMV6ATuVG9g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c70fc71-f9bc-46d9-8efe-08d88c913f6e
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:33.8550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oeSzcQXxMNo85sMu7/PxtgqWlgiBl5FqT/HmnBV7Rld094awz8yAormCCOWcUkGEEO8RxB0UDAibmP58QBM67A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6517
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add adma lpcg clocks

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v3->v4:
 * add missing lpcg headfile
v2->v3:
 * update to use clock-indices property instead of bit-offset property
v1->v2:
 * Use old SCU clock binding temporarily to avoid build warning due to SCU
   clock cell will be changed to 2.
 * add power domain property
---
 .../boot/dts/freescale/imx8-ss-adma.dtsi      | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 2c0bb822c179..9301166ea629 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -4,17 +4,51 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/clock/imx8-lpcg.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+
 adma_subsys: bus@59000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x59000000 0x0 0x59000000 0x2000000>;
 
+	dma_ipg_clk: clock-dma-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "dma_ipg_clk";
+	};
+
+	/* LPCG clocks */
 	adma_lpcg: clock-controller@59000000 {
 		reg = <0x59000000 0x2000000>;
 		#clock-cells = <1>;
 	};
 
+	dsp_lpcg: clock-controller@59580000 {
+		reg = <0x59580000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&dma_ipg_clk>,
+			 <&dma_ipg_clk>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
+				<IMX_LPCG_CLK_7>;
+		clock-output-names = "dsp_lpcg_adb_clk",
+				     "dsp_lpcg_ipg_clk",
+				     "dsp_lpcg_core_clk";
+		power-domains = <&pd IMX_SC_R_DSP>;
+	};
+
+	dsp_ram_lpcg: clock-controller@59590000 {
+		reg = <0x59590000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_4>;
+		clock-output-names = "dsp_ram_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_DSP_RAM>;
+	};
+
 	adma_dsp: dsp@596e8000 {
 		compatible = "fsl,imx8qxp-dsp";
 		reg = <0x596e8000 0x88000>;
@@ -76,6 +110,50 @@ adma_subsys: bus@59000000 {
 		status = "disabled";
 	};
 
+	uart0_lpcg: clock-controller@5a460000 {
+		reg = <0x5a460000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART0_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart0_lpcg_baud_clk",
+				     "uart0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+	};
+
+	uart1_lpcg: clock-controller@5a470000 {
+		reg = <0x5a470000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART1_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart1_lpcg_baud_clk",
+				     "uart1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+	};
+
+	uart2_lpcg: clock-controller@5a480000 {
+		reg = <0x5a480000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART2_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart2_lpcg_baud_clk",
+				     "uart2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+	};
+
+	uart3_lpcg: clock-controller@5a490000 {
+		reg = <0x5a490000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_UART3_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart3_lpcg_baud_clk",
+				     "uart3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+	};
+
 	adma_i2c0: i2c@5a800000 {
 		reg = <0x5a800000 0x4000>;
 		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
@@ -119,4 +197,48 @@ adma_subsys: bus@59000000 {
 		power-domains = <&pd IMX_SC_R_I2C_3>;
 		status = "disabled";
 	};
+
+	i2c0_lpcg: clock-controller@5ac00000 {
+		reg = <0x5ac00000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C0_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c0_lpcg_clk",
+				     "i2c0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+	};
+
+	i2c1_lpcg: clock-controller@5ac10000 {
+		reg = <0x5ac10000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C1_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c1_lpcg_clk",
+				     "i2c1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+	};
+
+	i2c2_lpcg: clock-controller@5ac20000 {
+		reg = <0x5ac20000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C2_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c2_lpcg_clk",
+				     "i2c2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+	};
+
+	i2c3_lpcg: clock-controller@5ac30000 {
+		reg = <0x5ac30000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_ADMA_I2C3_CLK>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c3_lpcg_clk",
+				     "i2c3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+	};
 };
-- 
2.23.0

