Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C158F39D76D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbhFGIca (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:32:30 -0400
Received: from mail-eopbgr150054.outbound.protection.outlook.com ([40.107.15.54]:22406
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230175AbhFGIca (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:32:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRLRTaePy3fLfHTWD1G1fXVqAr51yB5dL89nQ1HgmzWUv1okJIhtJSmSxg3gfdeZOIoX1zrV+TIewwOK0S40VRTU9wtwLoLSr/A+ODYbhUED7tCItRTcx9wDGYr9uy8VbKqgmM9ky99knvlGKPQB+2gi0jK1pxCV76GwlJ27uQ/LB3sp/uF2R3eCix+Ee89Ixxu8TRIsGZ3tyEqSF1rNIjfKVTy79UQiw2pEgzn9ONPJ96qgT+11xca2WRA1brc7YChTfoyOYLHy9qDcmsr9+NluyldBlZ9WpRzeke+Zwks4NGtQaRyUKrZ/Mr5aKawl9XvGPVTHqw9nO76g6QjUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rYAJf48gEXIxx8QF5gzYbBwRcaV219Vn8+6HrsN/Qk4=;
 b=XvtWq9JVdO1LIFyK4hQ4MOxM/KHQ4tjT9aLeG0Czc6yk/A4b2hyX0DLpUNifIc9FTDh4mi0W3z8RQuuuvScwnYWcZG1jtdzFtZRfoEzgSs4EVgwQbPnb1GYBXjyPzACemiLKMX1C0l9Rn962OEq8nC9rv9r6oftrXXZwzMUqK4wofPv/WqT2VEv00c0AE/MtW3I1Dtr+AFU+TgfM9fH1sevWNFADmk2mozeHpVZnF4NGK/BecmfVSB3P5GGBmeAIhamoBPdFRfVPbTKFvPEIvqbDcyJk+qoSlIMH/+uYxPIu8gjDBsj7uJsVSuA3Vga0N21stPFvM4DuoFem5HX0mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rYAJf48gEXIxx8QF5gzYbBwRcaV219Vn8+6HrsN/Qk4=;
 b=rUuG344ZW5gKJw3v88IRiA85zPd7Qf6G5Rs71V59nTDGQ8/8OJwYUH+efDIa0W1wiN4FXu4is94AnKkessBNR+gxSChzG9W7mc9Ukp8i0Zak+JhHgaK8/HJLN/E5aXehDR1YbZnJ9AqbL1RhDUaSLjRsVHTgYm7Dnt4Ui4UUE7U=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3125.eurprd04.prod.outlook.com (2603:10a6:6:11::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 08:30:37 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:37 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/11] arm64: dts: imx8ulp: Add the basic dts for imx8ulp evk board
Date:   Mon,  7 Jun 2021 16:39:21 +0800
Message-Id: <20210607083921.2668568-12-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210607083921.2668568-1-ping.bai@nxp.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:30:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e60dccc6-9dcf-4ebc-405a-08d9298e86d9
X-MS-TrafficTypeDiagnostic: DB6PR04MB3125:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB31253442CD5CC638512F401F87389@DB6PR04MB3125.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yppn2QShEbOcioh8pg/HPc0wlT+xCxdQS9/IqqNocqGLMlDVET1Jsg8zO8vdRpwpuG2c4Ix8KvzC4O/GssgVQZQRh7QcVXZaoOs639OQfIexsydx+t4/IPgFFgADm0oFWCc/cIa7maqKUavH8h1ZarpBaZ02mRt6jHceLG+vLgj6CAdipWFCjeY1lQI84JSR9FL5Vk3Af3g2ww4/OFtCosPBJcaiapZqZAbd1TcBTiJ3C3U3uOTQFIFc9KQu6S7UWcP4x4ywLCIWu1nYxAJqDjyWKE71nRlJfohan9iTnC8E/On0HnUNX91G7rNifc8ci4TFoRvby4y7TMOuaY+wWr7BYIMxptf/fAdyu2x5LabcLQPMlKTqS4F/x2cWOo2esaCHStIlKaPVVL613GC8CGnfe1gHrzTydGrJd0JPnFiF/Q15SiMilR2mKGy4+sIkew0nBYKPT1RN/W/YEVn+hedsn4RlgwNQOc3WVrH0HSOUqxjnmwSuFIGK5hNCpFAphRQ2olRMIz9GB+mN7Z37Uizqu7EwhbSuacyvn7VWDVDiK5hR8+xrVTZRF/mb2ZUOG6jUur+GKK9hOU67wCBBSIlHQM9NDfcdZooMDPM4f8rluID2U4e4aXQ2Wd9gqZoew0XBjJmRJVaDvj9y9jeaA928PVCVNI9p1PmaVKYg8gNTVpX0OKhT3K8r/zv+Qs84nhCG80darrZww3fyFETE5Q+JMRqXbsvziPx68xvpLKbsecCf5w63kKZR5e7VwgKecayKacUiJS8MLJYlCXVeqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(8676002)(1076003)(6512007)(186003)(26005)(36756003)(86362001)(16526019)(478600001)(38350700002)(956004)(2616005)(66946007)(8936002)(38100700002)(66556008)(66476007)(6666004)(6486002)(316002)(6636002)(4326008)(5660300002)(52116002)(6506007)(2906002)(69590400013)(32563001)(473944003)(414714003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?Qzv67N2QfPbrDAaxjHmixCZMi1VFerb7YaQ5nkRPNdptaSjiWiyXYzo5BCYv?=
 =?us-ascii?Q?tU2tr/BeeSG+ACrNm7DjdzszdsyCIfQeNl7Gh5WNsWexFemdkn+iJBoDN2kR?=
 =?us-ascii?Q?T9cyvuvZjFEOBBVjenBhS/1ueBH0V+tEXJV127m5oAFg7GA4XAZ5suZR4rWi?=
 =?us-ascii?Q?AEMn1t5WGB+q/50RarSH8HfWxFtzJ70k1pyyexU765GyliwXYcj6Nfw2Wq37?=
 =?us-ascii?Q?qUQQK6lbV6kQ5DoTlgp4RBv+r7iJzvlk3b9wcBkTLGpnipGTJxWYWRy5eRi0?=
 =?us-ascii?Q?oVVxJcqFF80oJmKzJ6qDzMQtqCcanHGmjxCxLrc7Um2PB6bZbIRDQ7IeNFRN?=
 =?us-ascii?Q?i/c5+QHciDv7OnQZTzJQVuHXTwl3NSncf+tYkCXknLvZHVHtTs7VzPzub+YA?=
 =?us-ascii?Q?ynP3U1qrxiF4SKqqhwwZe8184NJtuJ8shkFAcuhpqlD7aLKtkXLPOnxK9mbZ?=
 =?us-ascii?Q?ArThCF5XHXCTA84zUCXcV45aCNJd9w6rsY/8YWPWVaOqf0e1gXdG0Inco6X/?=
 =?us-ascii?Q?XraP127z7a/rsacZVJ7GH2gQCC4/qtiK3WSxA/grbMORp9ft9Tnq2cu1zKhH?=
 =?us-ascii?Q?wl5TmBwhdzNkPuOvUE8+2cdxKA6t2MlF9HJzKq+G+Pws4CxY8jp8Nu/0vykg?=
 =?us-ascii?Q?X1nDfKncTdmLu0LVDC4Zgk/sm10wG6d9MqzL8vLt31/nLQ6W9j3o9N24gvLA?=
 =?us-ascii?Q?pYnJaA8QJDA+1ktNoW0RVqYm91R5Pec9nbZOjrwdrAXqrwt86xTwmmJZWVyJ?=
 =?us-ascii?Q?hoCpHqFd2rkg/e8H5y8rNRza8wP+W9WgcK4AJGJkHiNkALqq5x6hFFa1QRj0?=
 =?us-ascii?Q?qe26IIQzS8+JjA87lVKnEP5S09YCJ+bsoYWIGOSJnamwhfZKsKsfi/7ynApS?=
 =?us-ascii?Q?Dif2qxDKb8V7BLEH3UWB1wN3r4UwrAtL/L6BdRGr0dBaVU3i15LCbRG320fQ?=
 =?us-ascii?Q?QzQ2tTp0AdoV3qiN+4LPthnkqwpg56/AmLm5OE09DmwsHVGhm1sEzMfTA0uv?=
 =?us-ascii?Q?RWLzz6lRHTxIQlLRlv+D/sFjwTJlXq0pNSgNaey2D1ogN9GUEFVKn/x2rPgr?=
 =?us-ascii?Q?4JJOcaj11bomRezbVzGlKKadJKE8+N1y1zZgOBMZkPaV5ARBHYpp3hYo9Dsv?=
 =?us-ascii?Q?3In9mOHK9Jh9qrp4VjcycL/Iq6jSvcRr6pn7sWZaSac7WUVGSzsr5a0VT6Zo?=
 =?us-ascii?Q?1HkWZNp7VfQb7BxtGYi/p1cDck3mx9OV3gRjOPzOUAdo8JOUPyDU95D6E+dy?=
 =?us-ascii?Q?r+2ryJcndYcSM8kSVwIfCCYf3syURFyiJbKfoa5/RhJdptkWcNDaztxnPPNY?=
 =?us-ascii?Q?BscXl55ysV5gOnPpISEKsDuw?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e60dccc6-9dcf-4ebc-405a-08d9298e86d9
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:37.6305
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7fRXW7j/KLbNm00ti0Ni3IDK5HHsNXoZ1lpGKbbhQhypT9fWEjWgZWBi3uuxBTriuUIu+S6ywgRBVx74UNAJ9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3125
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the basic dts file for i.MX8ULP EVK board.
Only the necessary devices for minimal system boot up are enabled:
enet, emmc, usb, console uart.

some of the devices' pin status may lost during low power mode,
so additional sleep pinctrl properties are included by default.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 143 ++++++++++++++++++
 2 files changed, 144 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 25806c4924cb..8c24a05d55af 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -65,5 +65,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
 
 dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
new file mode 100644
index 000000000000..f4db04f357fe
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2021 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8ulp.dtsi"
+
+/ {
+	model = "NXP i.MX8ULP EVK";
+	compatible = "fsl,imx8ulp-evk", "fsl,imx8ulp";
+
+	chosen {
+		stdout-path = &lpuart5;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy {
+			reg = <1>;
+			micrel,led-mode = <1>;
+		};
+	};
+};
+
+&lpuart5 {
+	/* console */
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_lpuart5>;
+	pinctrl-1 = <&pinctrl_lpuart5>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_otgid1>;
+	pinctrl-1 = <&pinctrl_otgid1>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
+
+&usbmisc1 {
+	status = "okay";
+};
+
+&usbotg2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_otgid2>;
+	pinctrl-1 = <&pinctrl_otgid2>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usbphy2 {
+	status = "okay";
+};
+
+&usbmisc2 {
+	status = "okay";
+};
+
+&usdhc0 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_usdhc0>;
+	pinctrl-1 = <&pinctrl_usdhc0>;
+	non-removable;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc1 {
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX8ULP_PAD_PTE15__ENET0_MDC     0x43
+			MX8ULP_PAD_PTE14__ENET0_MDIO    0x43
+			MX8ULP_PAD_PTE17__ENET0_RXER    0x43
+			MX8ULP_PAD_PTE18__ENET0_CRS_DV  0x43
+			MX8ULP_PAD_PTF1__ENET0_RXD0     0x43
+			MX8ULP_PAD_PTE20__ENET0_RXD1    0x43
+			MX8ULP_PAD_PTE16__ENET0_TXEN    0x43
+			MX8ULP_PAD_PTE23__ENET0_TXD0    0x43
+			MX8ULP_PAD_PTE22__ENET0_TXD1    0x43
+			MX8ULP_PAD_PTE19__ENET0_REFCLK  0x43
+			MX8ULP_PAD_PTF10__ENET0_1588_CLKIN 0x43
+		>;
+	};
+
+	pinctrl_lpuart5: lpuart5grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTF14__LPUART5_TX	0x3
+			MX8ULP_PAD_PTF15__LPUART5_RX	0x3
+		>;
+	};
+
+	pinctrl_otgid1: usb1grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTF2__USB0_ID	0x10003
+		>;
+	};
+
+	pinctrl_otgid2: usb2grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTD23__USB1_ID	0x10003
+		>;
+	};
+
+	pinctrl_usdhc0: usdhc0grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTD1__SDHC0_CMD	0x43
+			MX8ULP_PAD_PTD2__SDHC0_CLK	0x10042
+			MX8ULP_PAD_PTD10__SDHC0_D0	0x43
+			MX8ULP_PAD_PTD9__SDHC0_D1	0x43
+			MX8ULP_PAD_PTD8__SDHC0_D2	0x43
+			MX8ULP_PAD_PTD7__SDHC0_D3	0x43
+			MX8ULP_PAD_PTD6__SDHC0_D4	0x43
+			MX8ULP_PAD_PTD5__SDHC0_D5	0x43
+			MX8ULP_PAD_PTD4__SDHC0_D6	0x43
+			MX8ULP_PAD_PTD3__SDHC0_D7	0x43
+			MX8ULP_PAD_PTD11__SDHC0_DQS	0x10042
+		>;
+	};
+};
-- 
2.26.2

