Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD88239D76B
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbhFGIcV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:32:21 -0400
Received: from mail-eopbgr150059.outbound.protection.outlook.com ([40.107.15.59]:62576
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230173AbhFGIcU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:32:20 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FnW/vM/fsp/mBPcSYbaCH0dgQB4y6aLUFDaOUcL0lNI3zD6a8GJJltZB9LRSWGJ5V1ZCGZndipOTp5xex5w1sW+SOkEOlCtpcPort/3bC1G44sH45GffzqtRK46atUPFY2B/QOF0ewqVOeJE/ehFbMCn1+ACDUBEvhAxKuG0gIWr8EF2n8IKHvNqvpQE4ZTSbr06lrL4l6SANE6d5rAXrSENMOWgwvGUUXSpqb86iNbpJ3mCsKV6B8ER0Z4qQOgaItW7Jve7aMVx1MADIySe9aFf4n0s4pwzDiStlW8pC7lMyr6xms84HXYRg2Kk1YujRWvFSwBhjyKHkVCGVDhXlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fV5q2SZc3BWWF76O7jPN+SISXsaaT+kLCIzoWpJbo1s=;
 b=mPPjCRqK/Zbm5NJ7xdawPuDVojjRhvFOEEEbt5okvi8WBcskZ+r1+0/UbVPDAHLKz2PNyHBI6lnt7WPx1YZ+47YmUG/fJjuBNml1BXMSspwT767dX8UBdDCH/vSHUx/HA0p2sCh85J2k0bQPNd4ZlOaK7UaFrlo/RzdahXCkE/LxYm54y0qMSdC1rbfs0CZENMiCOUgJhVa+9InLkZUiUrrusAvG2TMYIcuG/0S8bCh2JLRkCAAofJ1M2/ErhHBT/Mhsz1Iazwu0CorCLEwmc1hPblXaJ9JTiwj6pdbHfYKeQ83UbWUaX/Bj1qTkDVw67Ne8CEm3AVHYd3MDaYk3Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fV5q2SZc3BWWF76O7jPN+SISXsaaT+kLCIzoWpJbo1s=;
 b=XadSkE9KCdlY7XdSK32Y2LL2TMeyggQwr+IEbyLKl3Z5+dBw4353Y2I4TuDBjWV12GCgYHFVC/3CbNQImh34o57Q3wCpbQHkctitQEYoDq61Z6HDPRlmos7NyWIs4SKN+CZ1DhxE7Z3SXpnYdS1m55ikMa7VzkJ7Y3nienXxamk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3125.eurprd04.prod.outlook.com (2603:10a6:6:11::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 08:30:27 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:27 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/11] dt-bindings: clock: Add imx8ulp clock support
Date:   Mon,  7 Jun 2021 16:39:19 +0800
Message-Id: <20210607083921.2668568-10-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:30:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 95b23763-2e44-4191-6764-08d9298e80b6
X-MS-TrafficTypeDiagnostic: DB6PR04MB3125:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB312505BF47E84C930144A51C87389@DB6PR04MB3125.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rEGU2fNl/NLjLu5bk7XIP2lFUjaxcRr87kBbZN8cfU8ebDPRyfnFbXvEPOY7+ZKfyd3aSUeJOFVkiwlMd3ZuZ+BfyuSHMHiYaWAVgW+15WO6ByCY/L5w7fBAcEBL1XUUzHacBI+uV4psL2vDdKrRm9OIBqAoph5vKi+atJ/UefiJwk2/ES9g2wONibG9Lhht0mEYeju6TyYu9tT24XCg5n+WHGqlMwqAdoN6rQGMkQGyPiBJ7Pvhe9mysNQjIJbo98nN+oR8S0ZWRFfTVOpqkJT0LohrayOf/ZPHkPdKXLQbpMybs4Q2T9MNWfX2aG893DtEaMlXBil9CP+GlAWK+MR2PgfzLax1B8vwQqGb165P5X+vtcSRB95yk4hHTJRAfe+7dBivNnf2qcKHp05RZGdEpKtGnIRfqu4iyVBQVfQsjWZNDKhj+ddtUcEtSDp4xZbjN8crmkDHuMO/N/YX6ttzSNPntRKkA4ep61ceVHBPssX74giqQnHWrmmzOtz+Gdbl4TNjBgvxVdorTtDeJyPXfGcImo0ZkGEazBJav1uKhVOx77Vm7+XZNc84mcHtF+fmu29l/05B/1MUEMsE7rgG0NIu0SkzVxweK8Wf++8huckaT0OhT5i190zBxQwU2MJhrSI843TFm+wkv6Z5W7GRFMVUqIVVRK2ToUbVY+dWJn7ZIEclvM6W6EMOMy+Ao7yVeID0LZVBob9gNbtfxeadsT8mynqop6mKihIN7s19A0KH3ruoaTml9LAj7EXWGapzk4rpi2/dGXHYmWzhoOx6RzL9W7powolNsYFgcU3AW/vm/yk6WNdHQwQEOOmJwIcd/jrpDF5MgDge0LJDL0kgZZEvefUf7iQrEYXGRV7CDfE1UBYkGBrju9BhW8Ul
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(8676002)(1076003)(6512007)(966005)(186003)(26005)(36756003)(86362001)(16526019)(478600001)(38350700002)(956004)(2616005)(66946007)(8936002)(38100700002)(30864003)(66556008)(66476007)(6666004)(6486002)(316002)(6636002)(4326008)(5660300002)(52116002)(83380400001)(6506007)(2906002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?7D3cXEJKeU+Yh39qfhBmjvraQj7HwXrI9u5UFT+v2cSMxbfdXlEpounvJLxO?=
 =?us-ascii?Q?G9irr4GX6b6/9+jSLv8gEVS41SDrLD5gtdil0/PtjPjx27wJkqeHd9TNcX7/?=
 =?us-ascii?Q?TW2p/xkoM65Feqv6VzdNOAlaMuyOYUAMbxMA7uHsu00Wg+e2lOhzhMQjq3mY?=
 =?us-ascii?Q?61A+TiCZ2NPiJ+cBGWr1XRIn321ESLwUozxaxru5rQXI+6w75H7nfv5nS/CX?=
 =?us-ascii?Q?zkMAt/3FL70aYcqwuSEYTD5DjM5R5FKvdU1JWaOIfasoeJ/hddFOJPea8Go6?=
 =?us-ascii?Q?J3xtNPbD/RwoEv/nWCsm+s9WOrVZSRmV/19McTSwuWECy5pLfDKXCF5ZlEoj?=
 =?us-ascii?Q?QdXAgdLwrcoonLB0H3EQ80ZiXjpSJI/tY+HZxZ2NnNHhuT+fcBk/V1j4xvtA?=
 =?us-ascii?Q?ZZqFN5mowrshZmcCseBgNYP5nvnhoQ+ZSibQi4e7DwJYeZgXZuE/8pho6lB4?=
 =?us-ascii?Q?1t9AqEHwq6MiX6N3yMrCTZ6oSCcPYLjHKGHw9Hw3H8CqV1FTL17H8xoxd491?=
 =?us-ascii?Q?yTvzjuqWoVAxKQWauE3lIbCzyphtn4r2lU6TIYtaCBN6qpK8i3pz0MFRB8Z5?=
 =?us-ascii?Q?+sXO01g2rKJX5cJwiY8Z55xI1GsTcmr2evYFbOXubse8L4J8of/Qcp1b5QpX?=
 =?us-ascii?Q?7PjMfxK9NV1twtbpyEcA2m2tbY7Ykv6hTLmICBP7S93HXPxoAdvV7S2aBBOJ?=
 =?us-ascii?Q?Rj8nS+Iu92pZ0VZng9NUfjNJ4X2kLBtW8sl04pUPnDyulQWnja7mufKhkSNv?=
 =?us-ascii?Q?H89ut0ANAImipUZ58l8DkAbTOkNDhFCsaCfgqm6AuBwm/mH88MKPKhWbURtO?=
 =?us-ascii?Q?CA21OkTIiYRTGraIdXSrMBRm3DupK8h2Xud34N57x7fiAXJyDxEFxd6+8eif?=
 =?us-ascii?Q?UevBBj/5Yl/Twliw9q1VRMnwu+gLKl86Te6NRZeLCTr6IJJvbkwcUEd3HcvV?=
 =?us-ascii?Q?3N3Rdw+pgM3yXtXur3kOfssZFvSBKz4IAEwBP7QWGLxQSyjwenL3wHWIthaO?=
 =?us-ascii?Q?TZj3hiVkbhGxz0nfN6EJ+NcNyg3NV50+AgCHeECqzmkTk3MtzFgOB5XtO6eK?=
 =?us-ascii?Q?b4Iip7lgNArBJVBZK/TAntfIkYNTKGpzS7dNaZTYjUJEBmvlbCn7Q38u+Zn5?=
 =?us-ascii?Q?OKrN9FQBJ/Ch4Ws7SmtkcXAkUVpv0ueXNonHmrw97uvI3wu/v0qGIghACuGB?=
 =?us-ascii?Q?P+GvuKuN9B5avZLusFXUbsgWCRCuqXSAF5ejxpl9ONst5i9p31fhxypEdsv1?=
 =?us-ascii?Q?/x2PMtf+7U2Fu+oMkB3+kJU6cfcMOxlVT60OgRLnFEyyBuiJ2vbchmpdXfCS?=
 =?us-ascii?Q?e9nTBgMxLVFwvUNC2DPha8gE?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b23763-2e44-4191-6764-08d9298e80b6
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:27.4762
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tMdhPQHW5Di4tPpYHikGH6nxGx1ST8G14E7IqQedtZtGdIykW9qYuVzB6rXTkBS4vHi+LZV9ik6mrysRCxrl5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3125
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the clock dt-binding file for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 .../bindings/clock/imx8ulp-clock.yaml         |  72 +++++
 include/dt-bindings/clock/imx8ulp-clock.h     | 261 ++++++++++++++++++
 2 files changed, 333 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h

diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
new file mode 100644
index 000000000000..ffe7b713d4e7
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx8ulp-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8ULP Clock Control Module Binding
+
+maintainers:
+  - Jacky Bai <ping.bai@nxp.com>
+
+description: |
+  On i.MX8ULP, The clock sources generation, distribution and management is
+  under the control of several CGCs & PCCs modules. The CGC modules generate
+  and distribute clocks on the device. PCC modules control clock selection,
+  optional division and clock gating mode for peripherals
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8ulp-cgc1
+      - fsl,imx8ulp-cgc2
+      - fsl,imx8ulp-pcc3
+      - fsl,imx8ulp-pcc4
+      - fsl,imx8ulp-pcc5
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description:
+      specify the external clocks used by the CGC module, the clocks
+      are rosc, sosc, frosc, lposc
+    maxItems: 4
+
+  clock-names:
+    description:
+      specify the external clocks names used by the CGC module. the valid
+      clock names should rosc, sosc, frosc, lposc.
+    maxItems: 4
+
+  '#clock-cells':
+    const: 1
+    description:
+      The clock consumer should specify the desired clock by having the clock
+      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8ulp-clock.h
+      for the full list of i.MX8ULP clock IDs.
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  # Clock Control Module node:
+  - |
+    clock-controller@292c0000 {
+        compatible = "fsl,imx8ulp-cgc1";
+        reg = <0x292c0000 0x10000>;
+        clocks = <&rosc>, <&sosc>, <&frosc>, <&lposc>;
+        clock-names = "rosc", "sosc", "frosc", "lposc";
+        #clock-cells = <1>;
+    };
+
+  - |
+    clock-controller@292d0000 {
+        compatible = "fsl,imx8ulp-pcc3";
+        reg = <0x292d0000 0x10000>;
+        #clock-cells = <1>;
+    };
diff --git a/include/dt-bindings/clock/imx8ulp-clock.h b/include/dt-bindings/clock/imx8ulp-clock.h
new file mode 100644
index 000000000000..61518775f434
--- /dev/null
+++ b/include/dt-bindings/clock/imx8ulp-clock.h
@@ -0,0 +1,261 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2021 NXP
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX8ULP_H
+#define __DT_BINDINGS_CLOCK_IMX8ULP_H
+
+#define IMX8ULP_CLK_DUMMY			0
+#define IMX8ULP_CLK_ROSC			1
+#define IMX8ULP_CLK_FROSC			2
+#define IMX8ULP_CLK_LPOSC			3
+#define IMX8ULP_CLK_SOSC			4
+
+/* CGC1 */
+#define IMX8ULP_CLK_SPLL2			5
+#define IMX8ULP_CLK_SPLL3			6
+#define IMX8ULP_CLK_A35_SEL			7
+#define IMX8ULP_CLK_A35_DIV			8
+#define IMX8ULP_CLK_SPLL2_PRE_SEL		9
+#define IMX8ULP_CLK_SPLL3_PRE_SEL		10
+#define IMX8ULP_CLK_SPLL3_PFD0			11
+#define IMX8ULP_CLK_SPLL3_PFD1			12
+#define IMX8ULP_CLK_SPLL3_PFD2			13
+#define IMX8ULP_CLK_SPLL3_PFD3			14
+#define IMX8ULP_CLK_SPLL3_PFD0_DIV1		15
+#define IMX8ULP_CLK_SPLL3_PFD0_DIV2		16
+#define IMX8ULP_CLK_SPLL3_PFD1_DIV1		17
+#define IMX8ULP_CLK_SPLL3_PFD1_DIV2		18
+#define IMX8ULP_CLK_SPLL3_PFD2_DIV1		19
+#define IMX8ULP_CLK_SPLL3_PFD2_DIV2		20
+#define IMX8ULP_CLK_SPLL3_PFD3_DIV1		21
+#define IMX8ULP_CLK_SPLL3_PFD3_DIV2		22
+#define IMX8ULP_CLK_NIC_SEL			23
+#define IMX8ULP_CLK_NIC_AD_DIVPLAT		24
+#define IMX8ULP_CLK_NIC_PER_DIVPLAT		25
+#define IMX8ULP_CLK_XBAR_SEL			26
+#define IMX8ULP_CLK_XBAR_AD_DIVPLAT		27
+#define IMX8ULP_CLK_XBAR_DIVBUS			28
+#define IMX8ULP_CLK_XBAR_AD_SLOW		29
+#define IMX8ULP_CLK_SOSC_DIV1			30
+#define IMX8ULP_CLK_SOSC_DIV2			31
+#define IMX8ULP_CLK_SOSC_DIV3			32
+#define IMX8ULP_CLK_FROSC_DIV1			33
+#define IMX8ULP_CLK_FROSC_DIV2			34
+#define IMX8ULP_CLK_FROSC_DIV3			35
+#define IMX8ULP_CLK_SPLL3_VCODIV		36
+#define IMX8ULP_CLK_SPLL3_PFD0_DIV1_GATE	37
+#define IMX8ULP_CLK_SPLL3_PFD0_DIV2_GATE	38
+#define IMX8ULP_CLK_SPLL3_PFD1_DIV1_GATE	39
+#define IMX8ULP_CLK_SPLL3_PFD1_DIV2_GATE	40
+#define IMX8ULP_CLK_SPLL3_PFD2_DIV1_GATE	41
+#define IMX8ULP_CLK_SPLL3_PFD2_DIV2_GATE	42
+#define IMX8ULP_CLK_SPLL3_PFD3_DIV1_GATE	43
+#define IMX8ULP_CLK_SPLL3_PFD3_DIV2_GATE	44
+#define IMX8ULP_CLK_SOSC_DIV1_GATE		45
+#define IMX8ULP_CLK_SOSC_DIV2_GATE		46
+#define IMX8ULP_CLK_SOSC_DIV3_GATE		47
+#define IMX8ULP_CLK_FROSC_DIV1_GATE		48
+#define IMX8ULP_CLK_FROSC_DIV2_GATE		49
+#define IMX8ULP_CLK_FROSC_DIV3_GATE		50
+#define IMX8ULP_CLK_SAI4_SEL			51
+#define IMX8ULP_CLK_SAI5_SEL			52
+#define IMX8ULP_CLK_AUD_CLK1			53
+#define IMX8ULP_CLK_ARM				54
+#define IMX8ULP_CLK_ENET_TS_SEL			55
+
+#define IMX8ULP_CLK_CGC1_END			56
+
+/* CGC2 */
+#define IMX8ULP_CLK_PLL4_PRE_SEL	0
+#define IMX8ULP_CLK_PLL4		1
+#define IMX8ULP_CLK_PLL4_VCODIV		2
+#define IMX8ULP_CLK_DDR_SEL		3
+#define IMX8ULP_CLK_DDR_DIV		4
+#define IMX8ULP_CLK_LPAV_AXI_SEL	5
+#define IMX8ULP_CLK_LPAV_AXI_DIV	6
+#define IMX8ULP_CLK_LPAV_AHB_DIV	7
+#define IMX8ULP_CLK_LPAV_BUS_DIV	8
+#define IMX8ULP_CLK_PLL4_PFD0		9
+#define IMX8ULP_CLK_PLL4_PFD1		10
+#define IMX8ULP_CLK_PLL4_PFD2		11
+#define IMX8ULP_CLK_PLL4_PFD3		12
+#define IMX8ULP_CLK_PLL4_PFD0_DIV1_GATE	13
+#define IMX8ULP_CLK_PLL4_PFD0_DIV2_GATE	14
+#define IMX8ULP_CLK_PLL4_PFD1_DIV1_GATE	15
+#define IMX8ULP_CLK_PLL4_PFD1_DIV2_GATE	16
+#define IMX8ULP_CLK_PLL4_PFD2_DIV1_GATE	17
+#define IMX8ULP_CLK_PLL4_PFD2_DIV2_GATE	18
+#define IMX8ULP_CLK_PLL4_PFD3_DIV1_GATE	19
+#define IMX8ULP_CLK_PLL4_PFD3_DIV2_GATE	20
+#define IMX8ULP_CLK_PLL4_PFD0_DIV1	21
+#define IMX8ULP_CLK_PLL4_PFD0_DIV2	22
+#define IMX8ULP_CLK_PLL4_PFD1_DIV1	23
+#define IMX8ULP_CLK_PLL4_PFD1_DIV2	24
+#define IMX8ULP_CLK_PLL4_PFD2_DIV1	25
+#define IMX8ULP_CLK_PLL4_PFD2_DIV2	26
+#define IMX8ULP_CLK_PLL4_PFD3_DIV1	27
+#define IMX8ULP_CLK_PLL4_PFD3_DIV2	28
+#define IMX8ULP_CLK_CGC2_SOSC_DIV1_GATE	29
+#define IMX8ULP_CLK_CGC2_SOSC_DIV2_GATE	30
+#define IMX8ULP_CLK_CGC2_SOSC_DIV3_GATE	31
+#define IMX8ULP_CLK_CGC2_SOSC_DIV1	32
+#define IMX8ULP_CLK_CGC2_SOSC_DIV2	33
+#define IMX8ULP_CLK_CGC2_SOSC_DIV3	34
+#define IMX8ULP_CLK_CGC2_FROSC_DIV1_GATE	35
+#define IMX8ULP_CLK_CGC2_FROSC_DIV2_GATE	36
+#define IMX8ULP_CLK_CGC2_FROSC_DIV3_GATE	37
+#define IMX8ULP_CLK_CGC2_FROSC_DIV1	38
+#define IMX8ULP_CLK_CGC2_FROSC_DIV2	39
+#define IMX8ULP_CLK_CGC2_FROSC_DIV3	40
+#define IMX8ULP_CLK_AUD_CLK2		41
+#define IMX8ULP_CLK_SAI6_SEL		42
+#define IMX8ULP_CLK_SAI7_SEL		43
+#define IMX8ULP_CLK_SPDIF_SEL		44
+#define IMX8ULP_CLK_HIFI_SEL		45
+#define IMX8ULP_CLK_HIFI_DIVCORE	46
+#define IMX8ULP_CLK_HIFI_DIVPLAT	47
+#define IMX8ULP_CLK_DSI_PHY_REF		48
+
+#define IMX8ULP_CLK_CGC2_END		49
+
+/* PCC3 */
+#define IMX8ULP_CLK_WDOG3		0
+#define IMX8ULP_CLK_WDOG4		1
+#define IMX8ULP_CLK_LPIT1		2
+#define IMX8ULP_CLK_TPM4		3
+#define IMX8ULP_CLK_TPM5		4
+#define IMX8ULP_CLK_FLEXIO1		5
+#define IMX8ULP_CLK_I3C2		6
+#define IMX8ULP_CLK_LPI2C4		7
+#define IMX8ULP_CLK_LPI2C5		8
+#define IMX8ULP_CLK_LPUART4		9
+#define IMX8ULP_CLK_LPUART5		10
+#define IMX8ULP_CLK_LPSPI4		11
+#define IMX8ULP_CLK_LPSPI5		12
+#define IMX8ULP_CLK_DMA1_MP		13
+#define IMX8ULP_CLK_DMA1_CH0		14
+#define IMX8ULP_CLK_DMA1_CH1		15
+#define IMX8ULP_CLK_DMA1_CH2		16
+#define IMX8ULP_CLK_DMA1_CH3		17
+#define IMX8ULP_CLK_DMA1_CH4		18
+#define IMX8ULP_CLK_DMA1_CH5		19
+#define IMX8ULP_CLK_DMA1_CH6		20
+#define IMX8ULP_CLK_DMA1_CH7		21
+#define IMX8ULP_CLK_DMA1_CH8		22
+#define IMX8ULP_CLK_DMA1_CH9		23
+#define IMX8ULP_CLK_DMA1_CH10		24
+#define IMX8ULP_CLK_DMA1_CH11		25
+#define IMX8ULP_CLK_DMA1_CH12		26
+#define IMX8ULP_CLK_DMA1_CH13		27
+#define IMX8ULP_CLK_DMA1_CH14		28
+#define IMX8ULP_CLK_DMA1_CH15		29
+#define IMX8ULP_CLK_DMA1_CH16		30
+#define IMX8ULP_CLK_DMA1_CH17		31
+#define IMX8ULP_CLK_DMA1_CH18		32
+#define IMX8ULP_CLK_DMA1_CH19		33
+#define IMX8ULP_CLK_DMA1_CH20		34
+#define IMX8ULP_CLK_DMA1_CH21		35
+#define IMX8ULP_CLK_DMA1_CH22		36
+#define IMX8ULP_CLK_DMA1_CH23		37
+#define IMX8ULP_CLK_DMA1_CH24		38
+#define IMX8ULP_CLK_DMA1_CH25		39
+#define IMX8ULP_CLK_DMA1_CH26		40
+#define IMX8ULP_CLK_DMA1_CH27		41
+#define IMX8ULP_CLK_DMA1_CH28		42
+#define IMX8ULP_CLK_DMA1_CH29		43
+#define IMX8ULP_CLK_DMA1_CH30		44
+#define IMX8ULP_CLK_DMA1_CH31		45
+#define IMX8ULP_CLK_MU3_A		46
+
+#define IMX8ULP_CLK_PCC3_END		47
+
+/* PCC4 */
+#define IMX8ULP_CLK_FLEXSPI2		0
+#define IMX8ULP_CLK_TPM6		1
+#define IMX8ULP_CLK_TPM7		2
+#define IMX8ULP_CLK_LPI2C6		3
+#define IMX8ULP_CLK_LPI2C7		4
+#define IMX8ULP_CLK_LPUART6		5
+#define IMX8ULP_CLK_LPUART7		6
+#define IMX8ULP_CLK_SAI4		7
+#define IMX8ULP_CLK_SAI5		8
+#define IMX8ULP_CLK_PCTLE		9
+#define IMX8ULP_CLK_PCTLF		10
+#define IMX8ULP_CLK_USDHC0		11
+#define IMX8ULP_CLK_USDHC1		12
+#define IMX8ULP_CLK_USDHC2		13
+#define IMX8ULP_CLK_USB0		14
+#define IMX8ULP_CLK_USB0_PHY		15
+#define IMX8ULP_CLK_USB1		16
+#define IMX8ULP_CLK_USB1_PHY		17
+#define IMX8ULP_CLK_USB_XBAR		18
+#define IMX8ULP_CLK_ENET		19
+#define IMX8ULP_CLK_SFA1		20
+#define IMX8ULP_CLK_RGPIOE		21
+#define IMX8ULP_CLK_RGPIOF		22
+
+#define IMX8ULP_CLK_PCC4_END		23
+
+/* PCC5 */
+#define IMX8ULP_CLK_TPM8		0
+#define IMX8ULP_CLK_SAI6		1
+#define IMX8ULP_CLK_SAI7		2
+#define IMX8ULP_CLK_SPDIF		3
+#define IMX8ULP_CLK_ISI			4
+#define IMX8ULP_CLK_CSI_REGS 		5
+#define IMX8ULP_CLK_PCTLD		6
+#define IMX8ULP_CLK_CSI			7
+#define IMX8ULP_CLK_DSI			8
+#define IMX8ULP_CLK_WDOG5		9
+#define IMX8ULP_CLK_EPDC		10
+#define IMX8ULP_CLK_PXP			11
+#define IMX8ULP_CLK_SFA2		12
+#define IMX8ULP_CLK_GPU2D		13
+#define IMX8ULP_CLK_GPU3D		14
+#define IMX8ULP_CLK_DC_NANO		15
+#define IMX8ULP_CLK_CSI_CLK_UI 		16
+#define IMX8ULP_CLK_CSI_CLK_ESC		17
+#define IMX8ULP_CLK_RGPIOD		18
+#define IMX8ULP_CLK_DMA2_MP		19
+#define IMX8ULP_CLK_DMA2_CH0		20
+#define IMX8ULP_CLK_DMA2_CH1		21
+#define IMX8ULP_CLK_DMA2_CH2		22
+#define IMX8ULP_CLK_DMA2_CH3		23
+#define IMX8ULP_CLK_DMA2_CH4		24
+#define IMX8ULP_CLK_DMA2_CH5		25
+#define IMX8ULP_CLK_DMA2_CH6		26
+#define IMX8ULP_CLK_DMA2_CH7		27
+#define IMX8ULP_CLK_DMA2_CH8		28
+#define IMX8ULP_CLK_DMA2_CH9		29
+#define IMX8ULP_CLK_DMA2_CH10		30
+#define IMX8ULP_CLK_DMA2_CH11		31
+#define IMX8ULP_CLK_DMA2_CH12		32
+#define IMX8ULP_CLK_DMA2_CH13		33
+#define IMX8ULP_CLK_DMA2_CH14		34
+#define IMX8ULP_CLK_DMA2_CH15		35
+#define IMX8ULP_CLK_DMA2_CH16		36
+#define IMX8ULP_CLK_DMA2_CH17		37
+#define IMX8ULP_CLK_DMA2_CH18		38
+#define IMX8ULP_CLK_DMA2_CH19		39
+#define IMX8ULP_CLK_DMA2_CH20		40
+#define IMX8ULP_CLK_DMA2_CH21		41
+#define IMX8ULP_CLK_DMA2_CH22		42
+#define IMX8ULP_CLK_DMA2_CH23		43
+#define IMX8ULP_CLK_DMA2_CH24		44
+#define IMX8ULP_CLK_DMA2_CH25		45
+#define IMX8ULP_CLK_DMA2_CH26		46
+#define IMX8ULP_CLK_DMA2_CH27		47
+#define IMX8ULP_CLK_DMA2_CH28		48
+#define IMX8ULP_CLK_DMA2_CH29		49
+#define IMX8ULP_CLK_DMA2_CH30		50
+#define IMX8ULP_CLK_DMA2_CH31		51
+#define IMX8ULP_CLK_MU2_B		52
+#define IMX8ULP_CLK_MU3_B		53
+#define IMX8ULP_CLK_AVD_SIM		54
+#define IMX8ULP_CLK_DSI_TX_ESC		55
+
+#define IMX8ULP_CLK_PCC5_END		56
+
+#endif
-- 
2.26.2

