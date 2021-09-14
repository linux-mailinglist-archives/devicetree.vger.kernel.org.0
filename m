Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83D4B40A6CA
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240218AbhINGmf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:35 -0400
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]:35907
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232880AbhINGma (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1Yki5tneLQTrZc6s3Op/+BSpYUf4vXwcVlr9hSLntM5AWLS1t2PL/sLPe2cXL6gitfnPRw3Kiip3137z64zEN5Xh/vGDbQnlkeKtlWoFidIbDhr5TQ8EYpuuWKldmqCgJB3IxGPLqjVw0xCgkAyKfitJ3hn4kbhulqhOy4ZZ00ul11K9LQYE7shdylsD8DlqINBM5MITHP8z6sN8zHeW8clpTb+JozQgBmUcCJ7W4KljsCOgg2EK4LRwSrBRAbBJEtNz9RBKML8cpd0R6JwzCYrCZwp4fdrI495H9QzXXKgXz9MVD1tbAEGTbHwrJKmRHDJimGjhy2rUaNRC8470A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=fS2//TSVLPDEmUJ8gt9QaI2dOo5ZfsuPKGYqMHMPorM=;
 b=oHy29H4+86oP6NMTz8Bnaw/RY8fIv8fCkrOCvekY/odvR3FvKQw9CVz4u1fD1ZtiEUZnhJywoYD2yP/DK0ijbOkxnPcgvJhMsBEKP/kUWZO54TY90u+F/WfqtVhEbYtxPCxocuNvpQ9FF1oMlTbAaj/zyjAtkryYEKPUelvXVHD0Z7bvZ8CZJCLZOG0VZTod2nox11tgTjAajDnxj+pc0MDYk33fq/WgC62VMFPSnAnOPCAXNOWPPBcx/8RVgot3U0KgqZ+MAE/SczRakujrb15DAknkFFd953cAvvfLHWWQeoLGrop3NRu6jxhV6S76wMYKj7NrElg2QYSyqq3Asw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fS2//TSVLPDEmUJ8gt9QaI2dOo5ZfsuPKGYqMHMPorM=;
 b=kCwFT4ZRofHt5RK3EWOqrURLsW7YwdAAl6JHiIOO5w01v6R2bch6WP97vRIC3Zfb0geGOstr9LxmM9N6H7D8XOjA3yAFf1Yb8j7SNAeTtcz9g86z2JlsR/Thn36rBSaLMIZBohEMBfr8tLhyke2sjGBFCr/E7fx7LSfrB4epSeI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB6028.eurprd04.prod.outlook.com (2603:10a6:10:c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Tue, 14 Sep
 2021 06:41:11 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:11 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/9] dt-bindings: clock: Add imx8ulp clock support
Date:   Tue, 14 Sep 2021 14:52:00 +0800
Message-Id: <20210914065208.3582128-2-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2feecaef-ae77-40f5-f1d1-08d9774aa405
X-MS-TrafficTypeDiagnostic: DBBPR04MB6028:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB6028076D0B984EA60B8653A687DA9@DBBPR04MB6028.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DSj9Eh9RfP1L/k5h5Pp3apeQjhm2S5DFLyQqfCPCi81RsYJCzx3XRc3qFpKq8oElmvpql5TEi4P+NKzg+cnGnKAXG4xaxgdqB0vDwye4xfXGuiNLxYRi3G166lkJ+xh+2AkAlFegVXA+/wpnGkbxtFIhr3CaaXbCv8bguSk7lpOQEM6tzOzEX/IXU+cSfDu5xM4GsK+FxHlPHzmufwdrDevLSZpr5zmHwSXnuqlEMB8No+4sxcwcIhiWHCG7hvbFdMrTADJbNBc+1Ytc+F/LGJfJn29H95E9sI8Bln+9ZfJZgGlYfT/Qi9FEryvEUwfNMmxRuivtJS/NRJcCKqvJ/KLcp/Bh43nGke4pDrm7Z4Inn5s6vLxxSprGPu6gK9qYXQF5BFz3Ull1dKM2h5dho6euY/x7Y/0RtLphNXDrrDCM46RCv4sRpcRmFPh8bdef91fD7s2DDKG5aQHqXSWQ+M/OdF5z8f3TB2zRv7BgKWdZzUfdde4bcWP7NFX2J0O19poyT7bHMoFxRv9Yfgo8iOO+sVumTP3ehg+50nqf7zLzM7f55zGHveQFE/Wisrucwa3cKL5binNG5RezJvw6OYXhe3qRgLxYv84HdREBK0nGi913qXUa6d0eelno0U5CVcNun7gG+8ltBI3EpbG6yb5I2qWqWEWaBHA/VPt78jQtroUntem0+Np0rT/aotMlFFBxRKod2qn3DXE/Ac5zV8qYJ7S7KAeOAy2B/x6D4Yj2oDMARjbeh7b6FLMOLUYBxsTKEQxzGQ1BE3W0jkdciBKhxeGKpdAV/BU2wYB9gQHMW6Ki0+mu5G0SNRm1mm2cnA/912EGkZp84kPhwxf2xbnrNsocejVP4ckYdIynqQ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(956004)(6512007)(2906002)(83380400001)(6486002)(2616005)(4326008)(316002)(8676002)(30864003)(966005)(5660300002)(66946007)(66556008)(52116002)(6666004)(66476007)(1076003)(8936002)(38350700002)(6506007)(186003)(478600001)(26005)(86362001)(36756003)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S4EUhlzF4T1sU7Iyj2MGwpJqcTU3s/TaTglaxCVdNqVZD/wVn3WV2PVHNHWu?=
 =?us-ascii?Q?2AJ2quic4KK6pFPJA1WYtupzO+vOaMoRYbnm93zyIT2QOhQxtQiJAQY3co9E?=
 =?us-ascii?Q?o8LQOoMpouxSaB/WFSCAR0jis7NXqCp7qBioH1P+kQwSkDHOr2NLc4y+nyP4?=
 =?us-ascii?Q?2KwEGpC+hfSa6Kk0ZGuKEguL5OvXaOQn7TFdOoicPEuy/xZfTl/NYyAagOf1?=
 =?us-ascii?Q?e56k/RR1gzUwRzeIJmqOyLSiS1EToufT8QC0ZXot7kd4xQB+/OwrzCLGwsn6?=
 =?us-ascii?Q?moaunLAz7oqStVDO0Ots2FlgJmJtp6qRCKxr0e2kFmbw6dLrszaw1B8hQ6sr?=
 =?us-ascii?Q?i0uR+qgx3of7j6LqF4VwvZrkhUSbAQty2J6R1xxFDNh03wfgCUSxAmSCx5fj?=
 =?us-ascii?Q?aiyuE1Oe1ZS2zVNXTWMiC3SBR3DCGRru86k+DiIsjTfmOO5ROqz0fuMEDwy3?=
 =?us-ascii?Q?/wKD85+3z+OO4Gxy9/9MRp7kZrbfPylnIBE1WENRJ5knEjIc4HTfIu02iYCa?=
 =?us-ascii?Q?IgReHcHilk3jA/KxjTBfOpQW8RXFcqKfE1qSaDXTLzJMbr+ySR3/nm9LSFIx?=
 =?us-ascii?Q?vWLGGQSJ7Jn/lfJqaI3a9cckIHaVhzHmofh1tQJE6FerO83/KATx/N5l6VjV?=
 =?us-ascii?Q?h5K2ksrsFPBKLuLqYee74VPAiynr5tBA2aqBhfwvuoxhszoZ3fM12byt4W9I?=
 =?us-ascii?Q?5apymnQ8uB5Izuy6C2o8+XKPvnGi0zDY2bimtUyIdDAbDuuJNHOcVzyrOfla?=
 =?us-ascii?Q?EXDx1X/I5oaEWqzhrAU84Y5tOAHv374zEfTSNhwPvRzmKSvBBqoA9V9Q/OE5?=
 =?us-ascii?Q?+cV8GbYxPM6jRZ45RmuD4s831k8dnQ7lZ/lDcUbz5+SWK32cnundSD/XVSt6?=
 =?us-ascii?Q?8Bxj0xplKai2UtwFeAc0LBcsp8fBJXleybAcGNOvaqGJ67fMe8+4N0keIYGC?=
 =?us-ascii?Q?qjwQ2KMYarpvvEtAJw7gmjyqUjTeSq3UF9DSJAweZOAKvyO/RLMulCTtcsWs?=
 =?us-ascii?Q?umKNSrT9zubyZk5TLtb4UoApe0xGKl0TgcuIQOCDXbQWTJoh6qmv1jX6e7vc?=
 =?us-ascii?Q?1e2BgCTPhjywH5q04ZFdkmbBlZzOqsDsTGQlMAEAN/s6PUv98Z3AT/CAUMsF?=
 =?us-ascii?Q?CObMxYo0Qtd5tAqAmB633D1/7IUSkOxnhF2jV1G2tWSO3+xXqfnBhM507Hqc?=
 =?us-ascii?Q?rrIMdKQwgytS1zBLVw1ll+udw0AUGHrrLdSRh5OYJnVjBzWLU0oVSihZ6ANi?=
 =?us-ascii?Q?n6xQ4GCSH3QDF5VWLGQe7VRLsNZFHn5+lEaVJbq0WFEmyHF29huvUIFExZiv?=
 =?us-ascii?Q?BJNySDCW5jTflxiJI32yQwJP?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2feecaef-ae77-40f5-f1d1-08d9774aa405
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:11.5402
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uMo0NyRJxZV+RkMMZKLrzUfqH863mKI1i+dMhwM+jKZyf8GyJt4H1jszZRskn6tvqgG+VeUXfzYXxzFonNwM2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6028
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the clock dt-binding file for i.MX8ULP.

For pcc node, it will also be used as a reset controller,
so add the '#reset-cells' property description and add the
pcc reset IDs.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 v3 changes:
   - split into two binding file, one for pcc, one for cgc

 v2 changes:
   - removed the redundant clocks & clock-names property

 v1 changes:
   - Move this patch from dts patchset into this patchset
---
 .../bindings/clock/imx8ulp-cgc-clock.yaml     |  43 +++
 .../bindings/clock/imx8ulp-pcc-clock.yaml     |  50 ++++
 include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++++++++++++
 include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++++
 4 files changed, 410 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
 create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h

diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
new file mode 100644
index 000000000000..71f7186b135b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx8ulp-cgc-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8ULP Clock Generation & Control(CGC) Module Binding
+
+maintainers:
+  - Jacky Bai <ping.bai@nxp.com>
+
+description: |
+  On i.MX8ULP, The clock sources generation, distribution and management is
+  under the control of several CGCs & PCCs modules. The CGC modules generate
+  and distribute clocks on the device.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8ulp-cgc1
+      - fsl,imx8ulp-cgc2
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  # Clock Generation & Control Module node:
+  - |
+    clock-controller@292c0000 {
+        compatible = "fsl,imx8ulp-cgc1";
+        reg = <0x292c0000 0x10000>;
+        #clock-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
new file mode 100644
index 000000000000..00612725bf8b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/imx8ulp-pcc-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8ULP Peripheral Clock Controller(PCC) Module Binding
+
+maintainers:
+  - Jacky Bai <ping.bai@nxp.com>
+
+description: |
+  On i.MX8ULP, The clock sources generation, distribution and management is
+  under the control of several CGCs & PCCs modules. The PCC modules control
+  software reset, clock selection, optional division and clock gating mode
+  for peripherals.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8ulp-pcc3
+      - fsl,imx8ulp-pcc4
+      - fsl,imx8ulp-pcc5
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  # Peripheral Clock Control Module node:
+  - |
+    clock-controller@292d0000 {
+        compatible = "fsl,imx8ulp-pcc3";
+        reg = <0x292d0000 0x10000>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/clock/imx8ulp-clock.h b/include/dt-bindings/clock/imx8ulp-clock.h
new file mode 100644
index 000000000000..953ecfe8ebcc
--- /dev/null
+++ b/include/dt-bindings/clock/imx8ulp-clock.h
@@ -0,0 +1,258 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR MIT */
+/*
+ * Copyright 2021 NXP
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX8ULP_H
+#define __DT_BINDINGS_CLOCK_IMX8ULP_H
+
+#define IMX8ULP_CLK_DUMMY			0
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
+#define IMX8ULP_CLK_MU0_B		47
+
+#define IMX8ULP_CLK_PCC3_END		48
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
diff --git a/include/dt-bindings/reset/imx8ulp-pcc-reset.h b/include/dt-bindings/reset/imx8ulp-pcc-reset.h
new file mode 100644
index 000000000000..e99a4735c3c4
--- /dev/null
+++ b/include/dt-bindings/reset/imx8ulp-pcc-reset.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2021 NXP
+ */
+
+#ifndef DT_BINDING_PCC_RESET_IMX8ULP_H
+#define DT_BINDING_PCC_RESET_IMX8ULP_H
+
+/* PCC3 */
+#define PCC3_WDOG3_SWRST	0
+#define PCC3_WDOG4_SWRST	1
+#define PCC3_LPIT1_SWRST	2
+#define PCC3_TPM4_SWRST		3
+#define PCC3_TPM5_SWRST		4
+#define PCC3_FLEXIO1_SWRST	5
+#define PCC3_I3C2_SWRST		6
+#define PCC3_LPI2C4_SWRST	7
+#define PCC3_LPI2C5_SWRST	8
+#define PCC3_LPUART4_SWRST	9
+#define PCC3_LPUART5_SWRST	10
+#define PCC3_LPSPI4_SWRST	11
+#define PCC3_LPSPI5_SWRST	12
+
+/* PCC4 */
+#define PCC4_FLEXSPI2_SWRST	0
+#define PCC4_TPM6_SWRST		1
+#define PCC4_TPM7_SWRST		2
+#define PCC4_LPI2C6_SWRST	3
+#define PCC4_LPI2C7_SWRST	4
+#define PCC4_LPUART6_SWRST	5
+#define PCC4_LPUART7_SWRST	6
+#define PCC4_SAI4_SWRST		7
+#define PCC4_SAI5_SWRST		8
+#define PCC4_USDHC0_SWRST	9
+#define PCC4_USDHC1_SWRST	10
+#define PCC4_USDHC2_SWRST	11
+#define PCC4_USB0_SWRST		12
+#define PCC4_USB0_PHY_SWRST	13
+#define PCC4_USB1_SWRST		14
+#define PCC4_USB1_PHY_SWRST	15
+#define PCC4_ENET_SWRST		16
+
+/* PCC5 */
+#define PCC5_TPM8_SWRST		0
+#define PCC5_SAI6_SWRST		1
+#define PCC5_SAI7_SWRST		2
+#define PCC5_SPDIF_SWRST	3
+#define PCC5_ISI_SWRST		4
+#define PCC5_CSI_REGS_SWRST	5
+#define PCC5_CSI_SWRST		6
+#define PCC5_DSI_SWRST		7
+#define PCC5_WDOG5_SWRST	8
+#define PCC5_EPDC_SWRST		9
+#define PCC5_PXP_SWRST		10
+#define PCC5_GPU2D_SWRST	11
+#define PCC5_GPU3D_SWRST	12
+#define PCC5_DC_NANO_SWRST	13
+
+#endif /*DT_BINDING_RESET_IMX8ULP_H */
-- 
2.26.2

