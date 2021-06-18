Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1107B3AC41B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:45:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232554AbhFRGrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:47:07 -0400
Received: from mail-eopbgr50060.outbound.protection.outlook.com ([40.107.5.60]:16256
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232519AbhFRGrH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:47:07 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hev5k4aH3OhCKy+Ay3z5OPh2pL6GjRInJozVd7oFzDdjpmUZcC3O4fWCA+vE3Pv3LBnRH88NmL4SSLy1eaVleugrhirIv9cVmsuWb/KWb7httduJS316s2F5+Y3E4rMhhIrXzPcQJLKaYNlwBZI8k2+7uwrQ1E+AXlM9D+g2HMtuduSmCL/WPaMOoyOAgkgy2Ep0xqv2em9uwEnuVMEx45faCWgQ3R1ajIwlPfvGb0zq2fgW7IioNs/XPpy71XYT9tYIyaMz2NykhwQbiifhuWBbhJ/xj3btR/MozFut5xJzKehkpjQrb0vhp84wgPZzyRr2yBp468RqmB1GGomjkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XWVBev2FvF5yxP76GWaZS8EmVXEiySPc1fb1nCo4gUQ=;
 b=PkOFe6GSn3KUBCSaNIKtxqaHIxziZJqhhjAwxHAtuvhb0u1xQ4JEpq7QFYRtmCHx4DpN0RnZ3kqrY6jvFG4jb0/ZSIN3feCtcgriQbZxRzynAf+uAvPfbKhUbuD/RXK5mJDyDkcMZM9CLqhkDfAMNSM/7B8FwSVRg6gG0FF/PCE8nAQH0xs9LiYdj3vTTXT2y4DtFqtOfS6n8+sMvUPvbnsFx/O33WUIxbq69BMFcF4yYTqmSkgoVTBJOPZuHfVbZlCVZvG9/UqrIK/RLhN+YIubif/ZZnsSu8+JQNnBkguehSUiI/mnP6vArTMq2wRuIGAehGa/TfbtL4AhpuRwzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XWVBev2FvF5yxP76GWaZS8EmVXEiySPc1fb1nCo4gUQ=;
 b=gcDoqEf98Q7TfTGp3w43qtwBa5LSxtNlUyGp5RY/q6rTMMl0GMEvGk/r4JZ2+OExCpljS+sDkhGxHANvlKxLu0lp3OAt4+B81Fa4wDG+mGglP6WST3PdKjbD9thOGRnUjp6UBJEq5LnKFeYrrrzrxZzypaWl/fCDFkNTgWYfJHY=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8140.eurprd04.prod.outlook.com (2603:10a6:10:249::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15; Fri, 18 Jun
 2021 06:44:56 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:56 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/11] dt-bindings: clock: Add imx8ulp clock support
Date:   Fri, 18 Jun 2021 14:54:21 +0800
Message-Id: <20210618065423.3424938-10-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210618065423.3424938-1-ping.bai@nxp.com>
References: <20210618065423.3424938-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::32) To DBBPR04MB7930.eurprd04.prod.outlook.com
 (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 66cb7b66-4326-41b3-a02e-08d932249588
X-MS-TrafficTypeDiagnostic: DB9PR04MB8140:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR04MB8140A72D9865B20CE3A96232870D9@DB9PR04MB8140.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zZg09w+is++ylVFOJ0K34r0jdi1dpR0h+o7sA+ja26aGTQUdqs+AdHS8Bt69N/+xNaCiERXYKHExPzTvknl01zvdQB3FP7SXVL+pqAvr5QKcqcX2j8H0WUZk7gyHiX2hoteAWWbXpySR8FmGtP1G93yPrqV9O0B8/w7cyzq+/j+GFhEDP/2pdJvTaY5gWlxYMkwi8r13dlSmcDirCVvIxWfW1sREtiF3pgmn3o/bkmrLOyOoqlIOGhMOGeoxbvvL1cgkMIV0Lx3/bhZr10xTK2RCfc9XG/LWN3WldFk9JNxPGb8ZleZZqZsC5H38gdsQf4iiZhrrrAH2wuHmPwpyH+KIxPbfU70xcEsMEp+Ht8u0JsGMkpRPW0D1na7/KLoH3tlxZyfse2ggfykUEOKGnMDA25sdqJk8cOLsU9m7TfVlPorS2aG/WKz/zsN0nl3AXZX1L+v8p5NCx9o+LXJD8/M9cOP1f7yLC8kAozGuY9njzquQHkSYgF9CyY3X63qkkbBqa9OEgB/nvvY7TNtRpYH8cpP0NFPvMoLJiYfJZMBtIdLE7tsksJjB1odOSkpOEcyxFzLRnLYg+Q4BPNSSACZSKMGBlMxLuDi+JwvMboN9xSw3EkGMIb9hf30L6Mv7BeYpZ5mEoJ9QcNUyv8chiBvu3E9aIqqyV/7qBfS/Z6KP+nrfY+7b8TFLzU9uoyYEkfp5tt+x0A2TYSuQBMXsJ9bgGhdPc8t1S3J+lPMU8/x6xeAK1yD/QNvn1PGJMId8QXf0LT7rszHQPUSnp1GAq4I8RZZoG9jz2nM84GYQycvLE7Uv1dSQIpWUBSsGzj4imRSsV1qoKF4mWdF9f4rbbTe7vTdxY3xoMwMt7LHJQOcsLhLVMZeap4I7EiQFRITH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(6666004)(6506007)(316002)(66476007)(86362001)(186003)(66556008)(26005)(1076003)(8936002)(16526019)(6486002)(83380400001)(30864003)(66946007)(8676002)(36756003)(6512007)(5660300002)(2906002)(956004)(2616005)(52116002)(478600001)(4326008)(6636002)(966005)(38100700002)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KdHhr55keIt7QclWVR886BlTtXPQiqOY34hITO1WWr+PkqRnFfpPT8EIRHWs?=
 =?us-ascii?Q?L5UwuQSPF77/4ZybgLIHBcb0dpyMETgDCqYbn59gu3uVkT8NEEXMWGjChzgl?=
 =?us-ascii?Q?8R6cZrOg3JFJ7AEgPA4+4kcoBwneFOpAO+thglwkP4OGbJFiRB0wOKC9Ll+C?=
 =?us-ascii?Q?QDAEMm06Srll+aOBhukvRB6pAsKZKtE8V0KBjVrm/yu6I611DjOY8D6oAayn?=
 =?us-ascii?Q?Kq1zVttuHd5Xbug96QDMH0raNWjOefCdQTWnI8NFRqoEpOrOJD48mnYdXwiE?=
 =?us-ascii?Q?7hJ59Di55eoXf1P3dUkn7mlJrk6hne+tcRIEltTYCHLRPg34vlV9FdRNtvSa?=
 =?us-ascii?Q?Tt0v8bhjp5xdrZiLtTORI0ESF19XWLRBgZHbPyojsKIeuv0Uv/T/xRvqKhG8?=
 =?us-ascii?Q?F9n1D7Z9sWEqfg92Aj0NyvZCiuLZDYOZP5an5mH9NIDDEmyq3mmpBi6S5EjF?=
 =?us-ascii?Q?JIO9FRcBFuuipmmcKhrw9NbGhz0K8rg+blbYiE1jtReYgldY+dGCBYOdKKj/?=
 =?us-ascii?Q?boQg+MN6GxGkfgzsZV83rY1f5qlNlZW+RAEzq5puPiGSBGwl+JrqZxi/xeYY?=
 =?us-ascii?Q?jGL2y2AAXiNkHBsXKwOR7bpeJAoFcgt+a9c7mgmN/bbyEWswKSsPWULfO40R?=
 =?us-ascii?Q?9IA7xb/rveGWqhwQOB2L2VMG8hqwt+pYxMFTPQQy4Xm7bUMF3rjEsmmpFz1z?=
 =?us-ascii?Q?OiC9Te4/WLnMvCN2/bgoBhjDpF6Me9dL7m1ZqCR1W23Fbffl4PbRfJ1T14g5?=
 =?us-ascii?Q?W819hmzE1I3GVPBR/O0KZ4AGpltuXzUWj26h+5BMxbor3hMD+XPALzVuFzFi?=
 =?us-ascii?Q?0nd4RPomsHVlnJCCvr3mNPq5PTOY0fc2IDDXkGhh0FIbp51WmxSJZ47oSXTd?=
 =?us-ascii?Q?2CwjAyiBJrbXgLQsASV0TiVI72wWai2w9TrZuPu9EEFonIMqh2dhQVcW4NE9?=
 =?us-ascii?Q?lUxw3sJRwpselEOpJ/buLPEM/DrmDxbE5ytoHgbCno+Rs7ODfrkm5e5uIv0C?=
 =?us-ascii?Q?8Nkw6uJ21jN2/IHNQ8HkcOmexRRv4wGCGVkW3HF/5Njv8bEaT44EaM6h+D+i?=
 =?us-ascii?Q?13L3JEWuKZEZGdjFIVdTUmrwQzpaMFyl2lraLItgww6LgnXFmPpffeVqN5Pt?=
 =?us-ascii?Q?tQuw5y/qyHTOd5Nlx91OdvQiAcJZpwb6M4mLtVrQgzZyPsGaUlOKYDNeCi8h?=
 =?us-ascii?Q?PZc02c4FqN1mPOtLVKW6ZIPBadvvA3luON4P5a/lV0FtLoYXp4YVP3vL78Rf?=
 =?us-ascii?Q?/Pbc4btcWrBpSDoaHMvMFkOSN4sMchwPb4e7lMjgviBPXn+NE0O2DxFaFXsK?=
 =?us-ascii?Q?agjoXQnD0GFAzn3JHU4SEZ4t?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66cb7b66-4326-41b3-a02e-08d932249588
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:56.1702
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HYKXwlUFsg+Os5JyewCKF4ZV7xecWLukJklVlMT6ESjAoQAo6HzcJSt83XykVDNDCC3BoPFjfq+IvzyHhpeUAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8140
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the clock dt-binding file for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 - v2 changes:
   update the license
---
 .../bindings/clock/imx8ulp-clock.yaml         |  72 +++++
 include/dt-bindings/clock/imx8ulp-clock.h     | 261 ++++++++++++++++++
 2 files changed, 333 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h

diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
new file mode 100644
index 000000000000..b47d09ed4a57
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
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
index 000000000000..5bd2044633d3
--- /dev/null
+++ b/include/dt-bindings/clock/imx8ulp-clock.h
@@ -0,0 +1,261 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR MIT */
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

