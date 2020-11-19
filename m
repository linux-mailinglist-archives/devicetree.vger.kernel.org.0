Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ABE52B93D6
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727245AbgKSNoj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:44:39 -0500
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]:21955
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727217AbgKSNoj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:39 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKYUo44tq1xi9cUa2f7esBMK6N9voUf1vfZ5CMEeR+1CYUtYrh6xUa6J1HfamwtV81oVfdN2tDG9ttPAqX0AstewYQ1qM3ApTEA6wNn35KkY94TMBRKCGN/htUWtErX0expRtk4+YJKo/MKAc4/GcuvBq5bm9xypCh8ZJcYDQKmD3/kpBqpNgVsjA4RarNecKHV5UggKyjyK9nQDmjL7rkPtFU/ldYjTSGywqUU1iOnVIoAttx9cvqE67E1JlbHRI2EqpQwwVOQVY+l0a/LLAnA5PkOq4UoAdPsPLdPqdi0/nlib+vwVXTelvmmhr85EofCBIefM4Q5TJfF6U3NbMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XfcZqjpbkxvHAGOXWvb82WFPfAKjArv2+Ak4Nxi+eUg=;
 b=BmD9OBEsLGIOU5NSQqDOEHm1xndZJk0i3jrSy5gTmjU2mgxbKGQ6TPjcWiWiqWcx8LMVX9ZgqFDengJZlrl7iTvEd6cIcFtUBt2hU8b8DrgtufkEOBMpLpmFvK18SQ7nSlzADCsHM+YApe6d9WQw6MmpJbjyNg3v77R80xijZET3Zwo7kdwNSViNBqhjLzT33II1VgTb89hERt8JqL8dMVZ4UQ+LRARBfLsTtWZyvoSvV6M4VzVqO/6eC0RPMuHTv77N0z2NlPu2QG8ShUDHCUNc/pXh7Pp/huBjJ6uHYEcHGTD4d7LBa2sij9rmOd3HEFtHblTfkE6QQo5jINIcjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XfcZqjpbkxvHAGOXWvb82WFPfAKjArv2+Ak4Nxi+eUg=;
 b=CWnN1YyAn0DsCbQOHGgxVQqyBo5Hip094u1RPeH4VeY5Nk8u4ByUDPxWfswI9KhJM0pDE8gNTmx27VJU7InPdCU0QwASZfM3GkgMpomJ3+OAYML5NZDwJaAmpr3yrdWYBYCRL/QupgdkRw9GbjZwvC1LMxRzWhFfeTAOnH9ZXcU=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:22 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:22 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 03/15] arm64: dts: imx8qxp: orginize dts in subsystems
Date:   Thu, 19 Nov 2020 21:26:42 +0800
Message-Id: <20201119132654.1755-4-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2ca8886d-3716-4001-f214-08d88c91386e
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3784FC493333BDE1006943DC80E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZRjvUu+BRacH3jMkEjTLzpFyzX8E7P+9FwY8tebIhqBAgwXD3kj9dupPKxz40SGhR7TLSInsFlliiBnFvpfSdpJe2VX1M9neBHj127o7VdrDa67FK5YOU03s3e7VQwPxh6fdExhDVj8oXanj5WYOV/g28BGSjjfDEjxX+a4ZiXaf4fGiHdK+fdqk2sQ37xSA4XiSMbJqZY+mcKjX+7NhMzVei8Hln1HPYxXeVb+AVZDulLjaTMjArShUv3/RkB5towwC5GaTV4uAKArXjOfHfzlGrS1jPuEbIWqBajp3zmxXVVVCalvQvz9XLBsXwZ3yoT7wzELMgkObgFHxNXZz+UtM8sru/v+XCB8DSegO6cYqYOhEPlO3OR4/rxNFqKxR
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(30864003)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: b15lr7vDyfNciKtcUh9nSnZhwLn3zTc1C9PAs7ZzT2DvZUvVXg9JR4K3gySVaT5dsdP/wVuJHP48vrPW4nEU9yU70F/AiVYFW4npPGvJTGwoHSk/XIjbSeTPgnnqUdmQkIVNvKjokmz454HsaLNbjDL2b+8V9i29iFfQ02/91Kk0mZGp2QEO5SsEooWCpsHmnWfeRzdAhMJmp/0exgSrKcIDkGequ0Ypzcbh8FsFowwcMOLgS+gJKqc7fHhIL76yYJczaiLcCSrPKDL2sHgAqEEGetRpAKtjZyUaEGqeHJGR074JnUZnEnUu+w57dHjxZJ3j52qEsJXMC7/OJaoSiTzgoZ1t3j6H9NIxBXxJfWjq1YnOPZItp9PLIDaUMY7hZcrzP5jvkyrk4nxeTxKh3OwOsg+6V71oGaS2ycDNISNnACKdSoT8Ev1W5KMTHCiQNKtCovqHWM3rvpbZ8biHkrT3MKdwpIXrg5RhHyeAcjeTPhP426vlVoiyblI6SRhUyRuOBaWD1tYzmorJvHH4hUjUAiZ+nM7Aa6/NG7rEroCy1teLhfw5J3k2LsWSrELRI8xBCttXe4/+jTkhW9gkPLY80eQPeiBo67qRQ4ZSLpVbYpS4et3a1NlG1V7JzY5wwv0rVdR/cL4VuQKTZ1Z8lA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ca8886d-3716-4001-f214-08d88c91386e
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:22.3293
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ic8/Al7Id99OTrt9DhxhcqZ0zrOdGDcv+6bVWpD+AbeammF111jHuG+aL81l8qgdhsAOv4yRebfoK2ap6ie0EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MX8 SoC is comprised of a few HW subsystems while some of them can be
reused in the different SoCs. So let's re-orginize them into subsystems
in device tree as well for the possible reuse of the common part.

Note, as there's still no devices of hsio subsys, so removed it
first instead of creating a subsys headfile with no devices.
They will be added back when new devices added.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v4:
 * no changes except rebase
---
 .../boot/dts/freescale/imx8-ss-adma.dtsi      | 122 ++++++
 .../boot/dts/freescale/imx8-ss-conn.dtsi      |  86 ++++
 .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |  18 +
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 138 +++++++
 .../boot/dts/freescale/imx8qxp-ss-adma.dtsi   |  41 ++
 .../boot/dts/freescale/imx8qxp-ss-conn.dtsi   |  29 ++
 .../boot/dts/freescale/imx8qxp-ss-lsio.dtsi   |  65 +++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 386 +-----------------
 8 files changed, 510 insertions(+), 375 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
new file mode 100644
index 000000000000..2c0bb822c179
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+adma_subsys: bus@59000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x59000000 0x0 0x59000000 0x2000000>;
+
+	adma_lpcg: clock-controller@59000000 {
+		reg = <0x59000000 0x2000000>;
+		#clock-cells = <1>;
+	};
+
+	adma_dsp: dsp@596e8000 {
+		compatible = "fsl,imx8qxp-dsp";
+		reg = <0x596e8000 0x88000>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
+			<&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
+			<&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
+		clock-names = "ipg", "ocram", "core";
+		power-domains = <&pd IMX_SC_R_MU_13A>,
+			<&pd IMX_SC_R_MU_13B>,
+			<&pd IMX_SC_R_DSP>,
+			<&pd IMX_SC_R_DSP_RAM>;
+		mbox-names = "txdb0", "txdb1",
+			"rxdb0", "rxdb1";
+		mboxes = <&lsio_mu13 2 0>,
+			<&lsio_mu13 2 1>,
+			<&lsio_mu13 3 0>,
+			<&lsio_mu13 3 1>;
+		memory-region = <&dsp_reserved>;
+		status = "disabled";
+	};
+
+	adma_lpuart0: serial@5a060000 {
+		reg = <0x5a060000 0x1000>;
+		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+		status = "disabled";
+	};
+
+	adma_lpuart1: serial@5a070000 {
+		reg = <0x5a070000 0x1000>;
+		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+		status = "disabled";
+	};
+
+	adma_lpuart2: serial@5a080000 {
+		reg = <0x5a080000 0x1000>;
+		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+		status = "disabled";
+	};
+
+	adma_lpuart3: serial@5a090000 {
+		reg = <0x5a090000 0x1000>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
+			 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+		status = "disabled";
+	};
+
+	adma_i2c0: i2c@5a800000 {
+		reg = <0x5a800000 0x4000>;
+		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+		status = "disabled";
+	};
+
+	adma_i2c1: i2c@5a810000 {
+		reg = <0x5a810000 0x4000>;
+		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+		status = "disabled";
+	};
+
+	adma_i2c2: i2c@5a820000 {
+		reg = <0x5a820000 0x4000>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+		status = "disabled";
+	};
+
+	adma_i2c3: i2c@5a830000 {
+		reg = <0x5a830000 0x4000>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
new file mode 100644
index 000000000000..8691a43882fd
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+conn_subsys: bus@5b000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
+
+	conn_lpcg: clock-controller@5b200000 {
+		reg = <0x5b200000 0xb0000>;
+		#clock-cells = <1>;
+	};
+
+	usdhc1: mmc@5b010000 {
+		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x5b010000 0x10000>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
+		clock-names = "ipg", "per", "ahb";
+		power-domains = <&pd IMX_SC_R_SDHC_0>;
+		status = "disabled";
+	};
+
+	usdhc2: mmc@5b020000 {
+		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x5b020000 0x10000>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
+		clock-names = "ipg", "per", "ahb";
+		power-domains = <&pd IMX_SC_R_SDHC_1>;
+		fsl,tuning-start-tap = <20>;
+		fsl,tuning-step= <2>;
+		status = "disabled";
+	};
+
+	usdhc3: mmc@5b030000 {
+		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x5b030000 0x10000>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC2_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
+		clock-names = "ipg", "per", "ahb";
+		power-domains = <&pd IMX_SC_R_SDHC_2>;
+		status = "disabled";
+	};
+
+	fec1: ethernet@5b040000 {
+		reg = <0x5b040000 0x10000>;
+		interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_ENET0_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET0_AHB_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET0_TX_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET0_ROOT_CLK>;
+		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
+		fsl,num-tx-queues=<3>;
+		fsl,num-rx-queues=<3>;
+		power-domains = <&pd IMX_SC_R_ENET_0>;
+		status = "disabled";
+	};
+
+	fec2: ethernet@5b050000 {
+		reg = <0x5b050000 0x10000>;
+		interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&conn_lpcg IMX_CONN_LPCG_ENET1_IPG_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET1_AHB_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET1_TX_CLK>,
+			 <&conn_lpcg IMX_CONN_LPCG_ENET1_ROOT_CLK>;
+		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
+		fsl,num-tx-queues=<3>;
+		fsl,num-rx-queues=<3>;
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
new file mode 100644
index 000000000000..8b5cad4e2700
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+ddr_subsys: bus@5c000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
+
+	ddr-pmu@5c020000 {
+		compatible = "fsl,imx8-ddr-pmu";
+		reg = <0x5c020000 0x10000>;
+		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
new file mode 100644
index 000000000000..70902f56cdb1
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+lsio_subsys: bus@5d000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
+
+	lsio_gpio0: gpio@5d080000 {
+		reg = <0x5d080000 0x10000>;
+		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_0>;
+	};
+
+	lsio_gpio1: gpio@5d090000 {
+		reg = <0x5d090000 0x10000>;
+		interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_1>;
+	};
+
+	lsio_gpio2: gpio@5d0a0000 {
+		reg = <0x5d0a0000 0x10000>;
+		interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_2>;
+	};
+
+	lsio_gpio3: gpio@5d0b0000 {
+		reg = <0x5d0b0000 0x10000>;
+		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_3>;
+	};
+
+	lsio_gpio4: gpio@5d0c0000 {
+		reg = <0x5d0c0000 0x10000>;
+		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_4>;
+	};
+
+	lsio_gpio5: gpio@5d0d0000 {
+		reg = <0x5d0d0000 0x10000>;
+		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_5>;
+	};
+
+	lsio_gpio6: gpio@5d0e0000 {
+		reg = <0x5d0e0000 0x10000>;
+		interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_6>;
+	};
+
+	lsio_gpio7: gpio@5d0f0000 {
+		reg = <0x5d0f0000 0x10000>;
+		interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		power-domains = <&pd IMX_SC_R_GPIO_7>;
+	};
+
+	lsio_mu0: mailbox@5d1b0000 {
+		reg = <0x5d1b0000 0x10000>;
+		interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu1: mailbox@5d1c0000 {
+		reg = <0x5d1c0000 0x10000>;
+		interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+	};
+
+	lsio_mu2: mailbox@5d1d0000 {
+		reg = <0x5d1d0000 0x10000>;
+		interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu3: mailbox@5d1e0000 {
+		reg = <0x5d1e0000 0x10000>;
+		interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu4: mailbox@5d1f0000 {
+		reg = <0x5d1f0000 0x10000>;
+		interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		status = "disabled";
+	};
+
+	lsio_mu13: mailbox@5d280000 {
+		reg = <0x5d280000 0x10000>;
+		interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+		#mbox-cells = <2>;
+		power-domains = <&pd IMX_SC_R_MU_13A>;
+	};
+
+	lsio_lpcg: clock-controller@5d400000 {
+		reg = <0x5d400000 0x400000>;
+		#clock-cells = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
new file mode 100644
index 000000000000..64e51dda2dfd
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&adma_lpcg {
+	compatible = "fsl,imx8qxp-lpcg-adma";
+};
+
+&adma_lpuart0 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_lpuart1 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_lpuart2 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_lpuart3 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&adma_i2c0 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&adma_i2c1 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&adma_i2c2 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&adma_i2c3 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
new file mode 100644
index 000000000000..bed3934ca029
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&conn_lpcg {
+	compatible = "fsl,imx8qxp-lpcg-conn";
+};
+
+&usdhc1 {
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
+
+&usdhc2 {
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
+
+&usdhc3 {
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
+
+&fec1 {
+	compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
+};
+
+&fec2 {
+	compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
new file mode 100644
index 000000000000..82cebf04fca9
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&lsio_gpio0 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio1 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio2 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio3 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio4 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio5 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio6 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio7 {
+	compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_mu0 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu1 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu2 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu3 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu4 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu13 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_lpcg {
+	compatible = "fsl,imx8qxp-lpcg-lsio";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index f4a2a76ee894..cd7a482dc3ff 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2016 Freescale Semiconductor, Inc.
- * Copyright 2017-2018 NXP
+ * Copyright 2017-2020 NXP
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
@@ -223,380 +223,6 @@
 		clock-output-names = "xtal_24MHz";
 	};
 
-	adma_subsys: bus@59000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x59000000 0x0 0x59000000 0x2000000>;
-
-		adma_lpcg: clock-controller@59000000 {
-			compatible = "fsl,imx8qxp-lpcg-adma";
-			reg = <0x59000000 0x2000000>;
-			#clock-cells = <1>;
-		};
-
-		adma_dsp: dsp@596e8000 {
-			compatible = "fsl,imx8qxp-dsp";
-			reg = <0x596e8000 0x88000>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_DSP_IPG_CLK>,
-				<&adma_lpcg IMX_ADMA_LPCG_OCRAM_IPG_CLK>,
-				<&adma_lpcg IMX_ADMA_LPCG_DSP_CORE_CLK>;
-			clock-names = "ipg", "ocram", "core";
-			power-domains = <&pd IMX_SC_R_MU_13A>,
-				<&pd IMX_SC_R_MU_13B>,
-				<&pd IMX_SC_R_DSP>,
-				<&pd IMX_SC_R_DSP_RAM>;
-			mbox-names = "txdb0", "txdb1",
-				"rxdb0", "rxdb1";
-			mboxes = <&lsio_mu13 2 0>,
-				<&lsio_mu13 2 1>,
-				<&lsio_mu13 3 0>,
-				<&lsio_mu13 3 1>;
-			memory-region = <&dsp_reserved>;
-			status = "disabled";
-		};
-
-		adma_lpuart0: serial@5a060000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a060000 0x1000>;
-			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_0>;
-			status = "disabled";
-		};
-
-		adma_lpuart1: serial@5a070000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a070000 0x1000>;
-			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_1>;
-			status = "disabled";
-		};
-
-		adma_lpuart2: serial@5a080000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a080000 0x1000>;
-			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_2>;
-			status = "disabled";
-		};
-
-		adma_lpuart3: serial@5a090000 {
-			compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
-			reg = <0x5a090000 0x1000>;
-			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
-				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
-			clock-names = "ipg", "baud";
-			power-domains = <&pd IMX_SC_R_UART_3>;
-			status = "disabled";
-		};
-
-		adma_i2c0: i2c@5a800000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a800000 0x4000>;
-			interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_0>;
-			status = "disabled";
-		};
-
-		adma_i2c1: i2c@5a810000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a810000 0x4000>;
-			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_1>;
-			status = "disabled";
-		};
-
-		adma_i2c2: i2c@5a820000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a820000 0x4000>;
-			interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_2>;
-			status = "disabled";
-		};
-
-		adma_i2c3: i2c@5a830000 {
-			compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
-			reg = <0x5a830000 0x4000>;
-			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
-			clock-names = "per";
-			assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
-			assigned-clock-rates = <24000000>;
-			power-domains = <&pd IMX_SC_R_I2C_3>;
-			status = "disabled";
-		};
-	};
-
-	conn_subsys: bus@5b000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
-
-		conn_lpcg: clock-controller@5b200000 {
-			compatible = "fsl,imx8qxp-lpcg-conn";
-			reg = <0x5b200000 0xb0000>;
-			#clock-cells = <1>;
-		};
-
-		usdhc1: mmc@5b010000 {
-			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x5b010000 0x10000>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
-			clock-names = "ipg", "per", "ahb";
-			power-domains = <&pd IMX_SC_R_SDHC_0>;
-			status = "disabled";
-		};
-
-		usdhc2: mmc@5b020000 {
-			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x5b020000 0x10000>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
-			clock-names = "ipg", "per", "ahb";
-			power-domains = <&pd IMX_SC_R_SDHC_1>;
-			fsl,tuning-start-tap = <20>;
-			fsl,tuning-step= <2>;
-			status = "disabled";
-		};
-
-		usdhc3: mmc@5b030000 {
-			compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
-			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x5b030000 0x10000>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC2_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
-			clock-names = "ipg", "per", "ahb";
-			power-domains = <&pd IMX_SC_R_SDHC_2>;
-			status = "disabled";
-		};
-
-		fec1: ethernet@5b040000 {
-			compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
-			reg = <0x5b040000 0x10000>;
-			interrupts = <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_ENET0_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET0_AHB_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET0_TX_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET0_ROOT_CLK>;
-			clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
-			fsl,num-tx-queues=<3>;
-			fsl,num-rx-queues=<3>;
-			power-domains = <&pd IMX_SC_R_ENET_0>;
-			status = "disabled";
-		};
-
-		fec2: ethernet@5b050000 {
-			compatible = "fsl,imx8qxp-fec", "fsl,imx6sx-fec";
-			reg = <0x5b050000 0x10000>;
-			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&conn_lpcg IMX_CONN_LPCG_ENET1_IPG_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET1_AHB_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET1_TX_CLK>,
-				 <&conn_lpcg IMX_CONN_LPCG_ENET1_ROOT_CLK>;
-			clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
-			fsl,num-tx-queues=<3>;
-			fsl,num-rx-queues=<3>;
-			power-domains = <&pd IMX_SC_R_ENET_1>;
-			status = "disabled";
-		};
-	};
-
-	ddr_subsyss: bus@5c000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
-
-		ddr-pmu@5c020000 {
-			compatible = "fsl,imx8-ddr-pmu";
-			reg = <0x5c020000 0x10000>;
-			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
-		};
-	};
-
-	lsio_subsys: bus@5d000000 {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
-
-		lsio_gpio0: gpio@5d080000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d080000 0x10000>;
-			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_0>;
-		};
-
-		lsio_gpio1: gpio@5d090000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d090000 0x10000>;
-			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_1>;
-		};
-
-		lsio_gpio2: gpio@5d0a0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0a0000 0x10000>;
-			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_2>;
-		};
-
-		lsio_gpio3: gpio@5d0b0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0b0000 0x10000>;
-			interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_3>;
-		};
-
-		lsio_gpio4: gpio@5d0c0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0c0000 0x10000>;
-			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_4>;
-		};
-
-		lsio_gpio5: gpio@5d0d0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0d0000 0x10000>;
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_5>;
-		};
-
-		lsio_gpio6: gpio@5d0e0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0e0000 0x10000>;
-			interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_6>;
-		};
-
-		lsio_gpio7: gpio@5d0f0000 {
-			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
-			reg = <0x5d0f0000 0x10000>;
-			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			power-domains = <&pd IMX_SC_R_GPIO_7>;
-		};
-
-		lsio_mu0: mailbox@5d1b0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1b0000 0x10000>;
-			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu1: mailbox@5d1c0000 {
-			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1c0000 0x10000>;
-			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-		};
-
-		lsio_mu2: mailbox@5d1d0000 {
-			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1d0000 0x10000>;
-			interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu3: mailbox@5d1e0000 {
-			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1e0000 0x10000>;
-			interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu4: mailbox@5d1f0000 {
-			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1f0000 0x10000>;
-			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu13: mailbox@5d280000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d280000 0x10000>;
-			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			power-domains = <&pd IMX_SC_R_MU_13A>;
-		};
-
-		lsio_lpcg: clock-controller@5d400000 {
-			compatible = "fsl,imx8qxp-lpcg-lsio";
-			reg = <0x5d400000 0x400000>;
-			#clock-cells = <1>;
-		};
-	};
-
 	thermal_zones: thermal-zones {
 		cpu-thermal0 {
 			polling-delay-passive = <250>;
@@ -629,4 +255,14 @@
 			};
 		};
 	};
+
+	/* sorted in register address */
+	#include "imx8-ss-adma.dtsi"
+	#include "imx8-ss-conn.dtsi"
+	#include "imx8-ss-ddr.dtsi"
+	#include "imx8-ss-lsio.dtsi"
 };
+
+#include "imx8qxp-ss-adma.dtsi"
+#include "imx8qxp-ss-conn.dtsi"
+#include "imx8qxp-ss-lsio.dtsi"
-- 
2.23.0

