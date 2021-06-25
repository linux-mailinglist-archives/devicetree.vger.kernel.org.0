Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7E903B3A5C
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232966AbhFYBGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:50 -0400
Received: from mail-am6eur05on2057.outbound.protection.outlook.com ([40.107.22.57]:21453
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232937AbhFYBGr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KOCpZA0/d/uiPOELEUH7dAQYa3CkzTW6DS52FZR2lDOYE2W7fxVWz67RfOKQF6hVDjL4VqEiRcKsuQg1Q8paKvMiT6YdY2J8wfIiyaoQrLWKN9WXuwu2Blzr0IKpopr3ayhDl23JajhKrOSimvDKt+VqGUIaVwkGxpTf7WgWmlBIr7P1vSEv57AqLCgELb8KuyRuCDCJGhiU4SIsO2R5GeNhRKLTXY4u7CFVfuy5eBfg9/PBGHEXV8HO/MAb8vpp4i5SsOpm0h4kzlLeQzBMMJ3lp8pXCNW7Xi3jqEVMdGymwyuOe13bW3igaNhoIytmqVSWaFCUKp17TPl2q8edcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SP8EUiEYT5o+/WJ3lWpRhKxTEl+Un84SW2kX8/FBMu8=;
 b=Z2q40Ii83oIOQ4InizjHk8yP0BuNBshc/rUCPomo9E7Ng6L9SZAOVHiXjbsyYmjQ/kE3E3ukJZMWHs99RM0N0tZaYkFuf+I7c1XdRR+muxJgoXbNM5Y9Sy+teVgVE2quRkasE4KGCrCviNIkWebCGW5QiZdcakTv3cEXS1UkoFvPvVVY9AfuoF/rR+VM+K3fVCBlYMIQFmQlDTCxO5XzMdbn6GxP4iUBZ+Iy7cUpHKt9tWzW45hSBDAmdO11FxkkScDyT8EBn6fX/6dXs3Wo7X4MWgiOJFUFE95QpcaBgWJzzIyb04RX5k4Qi2jvTelxWrM0+67dqGRLiqobSHvNsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SP8EUiEYT5o+/WJ3lWpRhKxTEl+Un84SW2kX8/FBMu8=;
 b=oDScLoKSRoWijwNduUsw1mVTmWCwxM3SDXtifkj77OTu1t4B/7MIgggrS9XtsEegwCliv6w7ICT4ICdC8DoZ2ppo5SWsj70E6WVH4BZ37WW+j6eZQJDy8Wn2pSoLEdVcR/gBz1WiEFONNGK14eR99/QebX9JQrPg/hysITQa3Ao=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:25 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:25 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 09/11] dt-bindings: clock: Add imx8ulp clock support
Date:   Fri, 25 Jun 2021 09:13:53 +0800
Message-Id: <20210625011355.3468586-10-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210625011355.3468586-1-ping.bai@nxp.com>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2cdca85-cf05-4259-a8c5-08d937752ce8
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB54681884377DC746C65382F187069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LMao+RvJE1P21Zg2PHzY4gP1K1B00cLGK6w4egTH+mxqtvMcFXp+I3gtjnWkkAvRdD1jtAUGk/j4qLv1diSIQX/zKCOdHb27O0XYuYRHmWnJiGztsDNNk+s1T31zgeiSzSPhpdGr3b9MmdiGxoUi7PoVvR3gSrSDR51Wfxwd6gWEwfGfYAd3dNp6G/R5OAGS1GWF1URZH8ZVzMTDvwpvVLYz/9tsHDkOlAvzrI3XKSEULl7acJvPdfGdHzsnfawlvisrZW3aR4TWgts4yzH75eZ0tEUmqdgjEzss6va1BQ2BCcQFh/yP79fba4HBLnRvzz4DK8vNHE0RXm+o2EJpR0qoiS6ab6fBkULiblb8jFggNa9u8cRjbIgjlx9gxkHgzKLr8YsjFYD+Zy5ce527jBRLDsdNJLQxPcUv50J/eWEW7fLOrzzLZellLRvpBjH/L1CWR3WXWoAjJ7cdLNULyQT1tr0Y0MrM8tTiH8hjGyhbNZ55HzDUioARAK6Zzhnv3j19DI+UPTPgUFb4kYPKZSSdH9Chp4F+DXyF8Vyyf028FCgvT6En3J5IEttpvW7Sqa5JOsYY/7p5BHNtnXzpyAs/egZTjEhyhETkEf0huyqGhMFA96kC/ww0Puz1wYYmYtLhOgXcaDtgplHVMU3XPVn6wONSONkrnvabhxbQgDnrIETMyoseUYpgO3oGNkxEZqO9xViVKaJvd5s2+Ug+j/xIIFoS6FqQKOiRbT8amDEt4KrUJRWhomyYR08yQPcLHbtkkhAf0JW8/RtVLWLRFAVCs5p6xhR2dZd1e/b+3D515ZE9r0cmwT5qIfuq9zvMIpijq2Krwxc6vuYfg4AYJ4AwIqVBFP9X0Dt9OIF5xVmzdQmTW4b3jvZJyXuBN3YW3Wt5viX7LCStUHvcBld/vmpb5ORLSdNuUvuhgHxUEwA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(966005)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(30864003)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q420oaE08Igfu4EOPgUeD2aeB6V6Jpj+qH+EQHW01GnEe7a0BhF4+Jcuefom?=
 =?us-ascii?Q?9uEN4/Q9wGZ88n03trnFkwp0raVb7V+dYu3ggmf80B9Z6m9IupxlltMUb6jr?=
 =?us-ascii?Q?hz0GfQUgxx93N6YSmT3irCcjKovfeIdBouvOVKSiYADCsKPf6PEoWHOi4JS/?=
 =?us-ascii?Q?DGacqncEyPgUIYUCYa4pdZdl4DIp4MplBKbjmM9lmR5IhcIwVllJekNXaNgg?=
 =?us-ascii?Q?rBbxC4N+PoYSpkH0hVwwQfSu6vYESr7viz0bT+xtLGrbNh51dP15W1mQgd55?=
 =?us-ascii?Q?IKIB4TQeYVlKhVsZhaf0DZA/Bok9VvTue9TF4EoFiO6aZa/RvARiPEQiHSDl?=
 =?us-ascii?Q?invT70zjirt6xLvFlh3N8X8pAWE6ImESjgR0UV7t2RmJK9tDFPF80FHZGq1p?=
 =?us-ascii?Q?0El0iqISv53vSwxEVvOv0Qmvo8YuZTyW5C6+0bZlLgikZOq0OYM+56J4rYo+?=
 =?us-ascii?Q?GbifHWcB2ra1cFZB04wUsGrV1pevR8xZf+vd5fOUTmqIRZl9RtAd1qnL0HUg?=
 =?us-ascii?Q?TZNOqwdwCXsvZHVxqe5qKX794S3H1He5fO56FvAm8L9KwmnUtg5nFHbA0wzN?=
 =?us-ascii?Q?qtAslNaTspDUV31G9bSTBZOkbT65DiLFFVhyP+hi47b0bwbcsvemSiXNvIqV?=
 =?us-ascii?Q?hIEfjWCupzC4EWYpkpIX3UxPKQfLfn8GBvkNPC+ACpWO9SIFOH8s6yWfY6JD?=
 =?us-ascii?Q?cVps6PPPKNJE6fndMSYPdh5BlwZYOnu9abislot7yftvvJ5jGjXko8hQKK4O?=
 =?us-ascii?Q?egOxDPFWd8gFU5AZn0t+rqFvyoFKMpuDI2Q5fa1i3CqfYfAA9nCMjZ7obm2n?=
 =?us-ascii?Q?7Iuuzk4+IdK1aPqOZc2WvOW1rjRVue96a1o/g1UL74DzMrx1cgyJKwsEPxut?=
 =?us-ascii?Q?9b8sEjeb6ypXklHLKcfoWPlUWRVvLcDF4YSA++NAuOx0c4qyWOcXXt1R/BwL?=
 =?us-ascii?Q?XFEMLg9Bt/UB6GYS47UIDMjtamUJMuDUi5nRv1vNv0WIkwNlSmZWh+0Cju6x?=
 =?us-ascii?Q?4fVyM4qxwacvY2Caeg4DnkVUhMxg9hZuVS0v9OodSfxe5zQV4QHhS12RFN6+?=
 =?us-ascii?Q?SNiFFOInxoVe0l+FoeoIKL8RZWe0Yu+V+0rw1NMhDbFpfdBrD2Op6eeGaK69?=
 =?us-ascii?Q?3DL6kQIYe17B2nHLw4PQ4puV0UdVKylShY7ODkemUWx6Mmfm2Y2E+3y1Eqi/?=
 =?us-ascii?Q?8zm92exmh5iy9zjoT9+2uvqJ7S/yZrO/TpjHK1ArknRuE2lORBTvBDDujt3D?=
 =?us-ascii?Q?qcgiEgCtlQ1OVTWGrLSJ5JYt7r0Vg06dWGD8CnvbPc/vx67I+SJ5M8WWuKGu?=
 =?us-ascii?Q?9pUhFmR73DHQAcbqTkGpvsdl?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2cdca85-cf05-4259-a8c5-08d937752ce8
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:25.6331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Pkp8O0KnjKaBJ3A12zOXRhvbvkk+4eT2ZIBT8hlFqK57RyhUhnt7nYP5rrRwistwzcZyZ/OTJy0LPGuukTa3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the clock dt-binding file for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 - v3 changes:
   use 'GPL-2.0-only OR BSD-2-Clause' license for imx8ulp-clock.yaml

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
index 000000000000..d840ccff413e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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

