Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4820D3E5353
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:17:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236231AbhHJGSI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:08 -0400
Received: from mail-am6eur05on2073.outbound.protection.outlook.com ([40.107.22.73]:44733
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230243AbhHJGSH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:07 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXC3I0TblReTdSi0caY4Gin//KUpvnxLMY5ZpuK6BVRcGQhR9eSVyC9cRTe7sMLu28Kc3j93qiUJgaSyPX1/tMnfskef9+YjswI5RPrSgPQ6gCFm5tVUIkQbn6+VyBXUU+76sf2Eu7XHFaKAkfiSy6PlzP8oBNxURJnOrzpn4w2Ksl+xIwRdG4+z7oJ+1FD9xsEB1M+UrZ6RwyHaaMhN8myV2oRxM3Vb+OIBOqOoN2u2C6NKCCkZqSWJ83eqqeFZKVFVs2iycUGHZWZwOVc83ft8tN5q4QusDR3zfAjMmxcI1XKdfGnOgFWMsiVVsmXU+plrTEi8ENgHVXlnvwvDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0rB4qKXPn2uqb7jlIlIvXeaQHRBuJ1UJg4cnRtMC+Y=;
 b=NMJYmgx0DoCr0QixPRHvnOBvDfFkR94b44KBxifY/n9/hHdC6RdpGyfLtqiyq3ab4dPM8GU9fQS7ul8L7Ojt8VpDFfyINiDwrUdTiyWhJih6JMD20Qq0cCXYkmpW8ciTvYHwO2OaaxXiElp7biACByyoKEsFjaj3qp3BAeNYZMQnhMNbJEq3/vvmIImKpTibQh64FHXejdM4oZIwmsotDZ+2rXYPmGQnzBrWGZniNQJBQp4tq5kxbKsShkRmf+2H2ImMAdWrBXCoDoQicwrGs3/qR7CpdcKMeTCZApJRxZXbx6vIgBb5KN4BXiezVYMrUm5A45NCqgcWxxk/m6Yz7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0rB4qKXPn2uqb7jlIlIvXeaQHRBuJ1UJg4cnRtMC+Y=;
 b=kAw3zg8ALsudOkfi6ExFhg/rnTzutFkGs//XMsplNi5qx+ZXMs8YlhHD1fVeBKRGy7VF0OyRsnDGtmVn8CW2V4JN1b7R/2k35zy9ktWjKVh86G/v5UfLzgPN9OX7OZyOz7T1GuECv4etHzmtFb2lH6Lqh1XSqmccHhmHgGscYNc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4636.eurprd04.prod.outlook.com (2603:10a6:5:2e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Tue, 10 Aug
 2021 06:17:44 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:17:44 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/9] dt-bindings: clock: Add imx8ulp clock support
Date:   Tue, 10 Aug 2021 14:28:12 +0800
Message-Id: <20210810062820.1062884-2-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:17:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9729abcd-ce10-4261-8647-08d95bc690b2
X-MS-TrafficTypeDiagnostic: DB7PR04MB4636:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB46366C0555D884AE8C8B6CB887F79@DB7PR04MB4636.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z8elaUA0bXg5nB7znovxSRGhdRKriZ/v9GoedhYtzn1QGZOR8kOAvmc6yaorPTJHWGKWqhUOuXTKrQUmRrf25r4k449wul2h47SOJ+X3BW2PflUfnQgBz2OW+4Qkh1RJeSe7eaSnbieJvtuQZvX8L4RrVQFhEFAMQG41TAIugOyuaLcH32vjnKo4zkdZo9Wekgf5GoI2kxM80hpp9zUHO0HysHhSYUmrdJq+qDC7Uv2xUIDRSdS+HO6r/V0pZe/byCXml7UuEwi/p3sc0REC1lKu0J2FB86WKTV+twCL0ykfuFzUx5nuKwzEdHd/3wi6vz7k7QaDDTWIxK1XegN8GDO1eiZu6uMDI4I0yLRA5llld2vANaG1Zlw4RyyiFEWlRrQer40YCjVnFFdMfzLSl5r8rDkIMVerQTxCzx9nZrcnFJ9iyEl7hUy/7jWWXab2obL6+82sfhD3MZpBBAdg40r6hgNSDTwTEy5RVItQoMa/+NFV14BB7yMju3QRWJ8BX5YfZptsEL+4qE/+2b/8gZHH4MmWzv9BktiOhRQVKFYSnHqfPWPr96EZ3Hy0BILRIrBavFFOr7olj8P3YnX8+9D5raXrD8DvVYgFvNTriprN+/u+dx3Vd4hAzOGYXXcw8ONKROWtKsnZFhA3ye6mPsyWRSq1DTMCfHZTwvJrJuGnR1x0HPyTu0qMmsKHFNnPOs39KMLpYWJyxKBPNc8hFMLTKAvejkVzPRhVIX39qSR4jWbrTrIa0SQpp65siIJJYsaK+nYKZj0dT3KQJP7uCJemB3P8iJ0RIXNVFPkQemEwEKvn+KnsCYx0qwVKgdCZCDswgRANl/xxsd2Qsd9w1F6rMC8kIj5C+bestAnTJcc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(26005)(6666004)(83380400001)(5660300002)(66946007)(86362001)(6486002)(186003)(66556008)(66476007)(2616005)(956004)(2906002)(8936002)(4326008)(38100700002)(38350700002)(36756003)(8676002)(6512007)(1076003)(30864003)(6506007)(966005)(52116002)(508600001)(316002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7soGrQwzll9U+uZrJhgnxuNDXPXkm4x2OQswPy1XEJ6J+VZxCPquIbyQsqek?=
 =?us-ascii?Q?Yf2XzElbkegk6vDrShymNiL59RoLAfIaUFubSkrv/GtLnwTajUQz3QdP0Un1?=
 =?us-ascii?Q?fvCL62+iK6E0Z0o6j6lIG88IDWaj+ZLfz1ZpR03z4rTnMX6lxo5BiLevJ5h8?=
 =?us-ascii?Q?6ccuXzfvtY9vCzQiwMILCBmzMiExVZRdnbIVfFfoANB/1dfWR7LrXIq677d0?=
 =?us-ascii?Q?7w+fLm5kjfB1i5ajtHe7yatlJDz/Ei76uGBtgwuzRT+v6uocmKqh1sN6ZLGj?=
 =?us-ascii?Q?+BmL9A3fpg5PF8paG8hcPczMx8QDoMp20urBmu1FDiFgBp4elbDrNuxVVgfx?=
 =?us-ascii?Q?mcVFZmQPSYf69geqxNcfT7+FTx9kV1mrPrSQ2iw49myNMvzwCT5FkdCpjn0G?=
 =?us-ascii?Q?7/HGaXs54jsSKkf3dW990oTlqgcPnfQDnUTpORJLUyQ8QvPwzykk39pPGWqJ?=
 =?us-ascii?Q?YviVm5bARQ3sWVbS8AYDlFxv6+21xZPdlBmkkSulFpTxVJP9OTxQVVVaoaMg?=
 =?us-ascii?Q?b3HfvrFn1yrowrlo4+ZaxKFpcjZCWgXpN8IM45F4vtZxirv7YbVmAlSFcA2P?=
 =?us-ascii?Q?/FMDIXArEo7J3IJSPM005PkbBIO6uJTndlkI2/WC6u1/kgC/wRvJES+ClN0o?=
 =?us-ascii?Q?2WrO6Y6ILlnN3fyWc3TDwSD4TmWYCD7sN3GCXwp6b4AaOitD7RpMtBEqY8gn?=
 =?us-ascii?Q?aYEMoWHH36/XQyOCwooOyVY/rn4BEJrXOomUsvkJ4ABCbXb7cho381IGJmIF?=
 =?us-ascii?Q?kawfRnw6nUqkGozC6cY1iVQ+eFmGTpHr8rLMBcZSAd9EGwqd73LxYPo9sm6L?=
 =?us-ascii?Q?Y5ItOD53OD27puJdwxdIsSZ8q9pQOKw9S8odOujrMOhZcBwQ0twD5ZZZLSzm?=
 =?us-ascii?Q?92bzzZDN/HfokEAG2TXXdbeTQbrb7bsnEYDjZ8RSfLRlCKmdoyK1rUvlP/6W?=
 =?us-ascii?Q?a39/BNlvd4HhRFTrkRNQtC9kNbIuo9krsV5GbAuWVaM3OEMJerLo/ifknjjJ?=
 =?us-ascii?Q?IHTwL/bxs9I5tbQr9LMdRIkEW8IAMhP4KuzZjwuf3mM0R4UDM78ke7gkvShq?=
 =?us-ascii?Q?+K8LglgbLVfFiBiaVcd/PyI6Wu3K4+g+qketSzBXafDFn7Jwxy9ZpxzvBazo?=
 =?us-ascii?Q?W3s0yXIFGcYiwpcuABpZfkAAQ7/6JZO/CZfJrglolJ/6TbB7zKSvsvD++AC5?=
 =?us-ascii?Q?2vbDQQ6AOod/lE2YpyjDOKrcjtWdWNHmKrcPxcsuQTWlhJA6SFqch3ftHAfR?=
 =?us-ascii?Q?8LYQji0dp/f9/Xi3kd0xsR6Y1rtJJ6iBcOT1kopRGV2B3r89USSJzpFaEwbA?=
 =?us-ascii?Q?KgxRuhnC8xkCU3xXjDlbXWf2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9729abcd-ce10-4261-8647-08d95bc690b2
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:17:44.1824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KNRyonaKoG8iy8AtfEzVJCWOJbf0YuVgN17PVXPbEdzqzXa6kMEbGzFa026IE5H3a8buHr0HznmeHLU1z5GVgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4636
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the clock dt-binding file for i.MX8ULP.

For pcc node, it will also be used as a reset controller,
so add the '#reset-cells' property description and add the
pcc reset IDs.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 v2 changes:
   - removed the redundant clocks & clock-names property

 v1 changes:
   - Move this patch from dts patchset into this patchset
---
 .../bindings/clock/imx8ulp-clock.yaml         |  71 +++++
 include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++++++++++++
 include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++++
 3 files changed, 388 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
 create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h

diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
new file mode 100644
index 000000000000..9a075de1086a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
@@ -0,0 +1,71 @@
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
+  and distribute clocks on the device. PCC modules control software reset,
+  clock selection, optional division and clock gating mode for peripherals.
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
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx8ulp-pcc3
+              - fsl,imx8ulp-pcc4
+              - fsl,imx8ulp-pcc5
+    then:
+      required:
+        - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  # Clock Control Module node:
+  - |
+    clock-controller@292c0000 {
+        compatible = "fsl,imx8ulp-cgc1";
+        reg = <0x292c0000 0x10000>;
+        #clock-cells = <1>;
+    };
+
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

