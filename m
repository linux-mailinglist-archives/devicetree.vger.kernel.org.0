Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1B293C9A96
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 10:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240238AbhGOI3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 04:29:42 -0400
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]:31830
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239431AbhGOI3l (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 04:29:41 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWvQIwo22es9EUxvQX6BSBof9jk+/Ciqo0/lE+uguEETaoTATiPBhngEe7F+eFufAkPccg2YspK/9qxZrcrU4RdcHSB8oqFThqCyQAYBH4MEChXzMIdK1gEXbgh6cPHBl8B9nExXUUmxGb7oKNM1UyjRFJOXkbEUvcKLApRJZDTef6WgblGQoIeg3+WBSnR2BM36kqy3SKmpeKl8fGFL4yQ6OBe0CygC5vjiAHJ9wmin11cJMrRj8GOxYYVXG3A8YTpwm/q0zjhc6bUU22026MmmJN7af0TDgmOlh1jgKJ7MDhh8vezG+ZVrgJG4pXf9ZyE25zvtHKPNBlNvTc8fyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mRHIE3aOapYZCJTlmES2muyzsNdvJtLGYTc/OvjEmyw=;
 b=dDGzVJgl1cfKQuf3OrhycyLqzyFDzNaaLV8jOV3832/0TFP5BsVKhRCbBQVUKIg95USy337v6QNBNr85KRNyUdEyh9PldhSlOzXmCUs25L8himrCabVQQxdHHIQJQufCbBYmIWjhD12vm5Mvua+N7/448HWv10HBLIc3t8K9pZVryXaw5F+llSc9g/pYjQh7LHlx2XSBtNJ42Su1rcB3hpGPWd0muKulKmH5d2PqfKrly2W+x8kmZa/hZi7mB2/B/y0bHmQ2gi01wNQgM0b1CGv6QnkHEOju7rPGrFBoCyBAxxkkB1XCpQQlsPQDs0ZmrKqW462fabShNsbdHTzPPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mRHIE3aOapYZCJTlmES2muyzsNdvJtLGYTc/OvjEmyw=;
 b=Ep1sJjVONa5T7hB+9mnmOB7h6cva2AGQqX4nbqqeDLak7RBdfYlSXozXyz8j61xxVv2UM1KZqrgldR/TgQv78brY6JuXtCuCkPtTWF0P60xgSj+U+kPdtp/dWZKi5DAH2STDPF5KTVIMGmxDgNdlP/a1IJpXGND9AwDvEsknd1M=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8582.eurprd04.prod.outlook.com (2603:10a6:10:2d9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 15 Jul
 2021 08:26:47 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.027; Thu, 15 Jul 2021
 08:26:47 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        kernel@pengutronix.de, aisheng.dong@nxp.com, dongas86@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH 5/7] dt-bindings: soc: imx: add missing anatop binding
Date:   Thu, 15 Jul 2021 16:25:34 +0800
Message-Id: <20210715082536.1882077-6-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210715082536.1882077-1-aisheng.dong@nxp.com>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0083.apcprd02.prod.outlook.com
 (2603:1096:4:90::23) To DB9PR04MB8477.eurprd04.prod.outlook.com
 (2603:10a6:10:2c3::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR02CA0083.apcprd02.prod.outlook.com (2603:1096:4:90::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22 via Frontend Transport; Thu, 15 Jul 2021 08:26:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 825e85d1-d3f1-4c3f-2b3d-08d9476a4919
X-MS-TrafficTypeDiagnostic: DU2PR04MB8582:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DU2PR04MB85823D00E197A8B39CB8567C80129@DU2PR04MB8582.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HteyXPSiS22PUuuc1GN3LN8GpI7kJ/dMBaM1/zGnjCCS+UkhHclWf93KcGdKNwRUShzPFBjGe3tLnk71UstWYfjfr4O9R2e6/4F3goMXmuM/4c3E5ge/QVNOmtNVl7yi9IUf7C/HrJut0E+MD1NQhffxU+lYHcvydpEs6eEdbN42ZMK2EUN7RXCO/XBRozEYazrz03VzgUHXlMRWA11h2/1AS3kRp9JZMOhIrBZ1kXsso936NwBVZt0PCmW7xbTUDQJeDDoy92VM2jeo99aEylT3d+NrOJsjlqzE1b8clabRJln47ngN6AytjKSLnaQIjr3RSn/n43MFVp2QlwL//Vfs6/g5FuDodIEM4/lV/Wf7IWvwrW2MBPlI2YWVYHU+pmlZAXx/zPwbyvvfCy4PA4/+XhBK1CI/j6rwtMK0BNNGpn5g0zT79LV/GJBidGfYkIoZY9Ex8DUqVQoHrCYZ9WKig1/IGuKjaeB/to18HydG/BhTkB3EHD8875jDr7nUrLAdflNc8B0Vcvo//nCzg1fNlsRaEtguz15zhO1IYStrTEeT81oZAALGnroOe6kkqZPuNktCQsDqpr6TOoAMvT2lssiF/+dch1yggTIrkskH2LRiGpFgv1VVzeICGsLNDkLmHWaygIPnSgWvZ40xk7kgDWGy9JGIJW3NJA7Vvop1dusdvcVW9uvmyu6pvOvk++CWR+7XJNigheh4Gv0R4tx8SmdEPF8CB0ZOHGeWHceASl/beYrs8aKLJWSdL6qxPk5P0COxbmNNed4OZ5kXSQhJ3Ctxnw22wVMxCR59PYRhCmcyCSV6GJJtahcbjkdf
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8477.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(5660300002)(66476007)(966005)(36756003)(478600001)(1076003)(8676002)(66946007)(26005)(186003)(6486002)(956004)(316002)(8936002)(52116002)(2616005)(4326008)(38350700002)(6512007)(38100700002)(86362001)(6666004)(83380400001)(6916009)(2906002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pOgryGp6g8XSj8oyGRqiiL/N6Y139pGiMp4j1RVDwnRSNPHf2+hPAV+lFVCF?=
 =?us-ascii?Q?Yxo6++WrMYbUfdBxj+fXf6h5SkqONg96oN90ON2jZfXedXWOzFMu1+Hq0kYT?=
 =?us-ascii?Q?2MyM5UpSpgx07Y58V31XcgYKbZEPjnLiwTLhAKGpC4eVpCrL9zwrflXlTEap?=
 =?us-ascii?Q?qDXpq0iCd3KOPhz2F2E1BL+hw6VU7S0i0Ye6ZLMefCO3REVr1HaPd1ZRlutp?=
 =?us-ascii?Q?dWnEaRUrnDHdGG75fg+fkeFgeQegqQhIW1b200TlHzxuZiDjQM8A/3QHSigM?=
 =?us-ascii?Q?39gDh8i8cpzgbTaWf1zJKwSN39lTm06OgxKbBgaCIeGrnD8TrEinHYQlOKWH?=
 =?us-ascii?Q?izIbkTWaldwdB2WJQt4VDrtthDw8TiblJnF4V7KQlAKb8t31Tq9jzw13tVSF?=
 =?us-ascii?Q?MjzzwIf8cVx9oftZLwnAdMPrRcxhI006A27umW/NQRERC9v1B7YVbVsAzl0n?=
 =?us-ascii?Q?mY0kCg7CPlYsLy5GyCyyBY/OIIdpF3XAEpBYZAJREY3eMGCS1KFZPlJ4drzm?=
 =?us-ascii?Q?5lXOyaNESUvgse5dkWXdPf4YUcYrv+6zAg9Sc9pi4Ozl1r3lSxW0nZkXQQ+k?=
 =?us-ascii?Q?T7J5kHhyfhV9dkdYrNcjjJl7bqCJuCykvB3uqLt8nd9MimUtS2Qs62+siDwJ?=
 =?us-ascii?Q?5MdU8VHevT65/hfpxna7qP+7HdzxgcfUM92H1peCkvCiaDiekR7NIARhmf2K?=
 =?us-ascii?Q?IsaQXZ2n5YNrjT5OZpEZZMN2h2692l+QtKBoj7bRZn6TLc3SANhCgq4fCHQc?=
 =?us-ascii?Q?R22/rWNaD1AlDOavbDSv5syfYIRFgifJbfsSDqfCy2vvmfFevbkf+p2jX2bP?=
 =?us-ascii?Q?LdyknGmJCpciYXmty5YNIlwgG10m4JRApI9gIyumwW6v8Qpr95pDwDOPXYck?=
 =?us-ascii?Q?xjnZ81ITJKruihHrHn6CKvToRj4x8GIJN34w6Zw+eZjc8cGMyRunIUSAWFqq?=
 =?us-ascii?Q?euKSA2SSXrL8+wzb6MPDcR75EAz5oU6/gMxhuwE2UZggKwUCwIFGEJ+XBXK2?=
 =?us-ascii?Q?E703iK1uc6pjUeF5E330AcAPCzquQxzoC9FoIgngb3J4YFZZgzLLnxkvppqi?=
 =?us-ascii?Q?mLNgW6wDd179GAdkxc5F+LARvDfef0SLlmXrhHlDaIn44qUhpc7wQSTjdfYl?=
 =?us-ascii?Q?6hJUuURal9xTAZIoEeHrbNB3XQuDz3O8L+FTqYxHZ9BV00SoGnoLAG4bjHWu?=
 =?us-ascii?Q?lIBwgyGGHmg3MEltxmA1Aw3L8q5Uaowmp90CtGSGTLyG3i3/fwF2vi0oc1Fu?=
 =?us-ascii?Q?cZ5dYpdmdVO3TD6SyT4R1WG2UB9O3BGyeUUBbZBrO6bBNslWvlTx7awCnpKy?=
 =?us-ascii?Q?XC0/IPdtQ6K64o1f6lWGNg3F?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 825e85d1-d3f1-4c3f-2b3d-08d9476a4919
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 08:26:47.0487
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kt7H5XWPTM9aYovHxTXc5bS8pNytQhdbjE9/vidmBwo4toclU+ctDAO/1wX36LOuG3I/fzIW2FDNrZGJaJtUuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8582
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Anatop is a system combo module which supports various analog functions
like PLL, Regulators, LDOs, Sensors and etc.
This binding doc is generated based on the exist usage in dts
in order to fix dt schema check failures.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 .../bindings/soc/imx/fsl,anatop.yaml          | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
new file mode 100644
index 000000000000..f379d960f527
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,anatop.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Anatop binding
+
+maintainers:
+  - Dong Aisheng <aisheng.dong@nxp.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: fsl,imx6q-anatop
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - enum:
+              - fsl,imx6sl-anatop
+              - fsl,imx6sll-anatop
+              - fsl,imx6sx-anatop
+              - fsl,imx6ul-anatop
+              - fsl,imx7d-anatop
+          - const: fsl,imx6q-anatop
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - enum:
+              - fsl,imx8mq-anatop
+              - fsl,imx8mm-anatop
+              - fsl,vf610-anatop
+          - const: syscon
+      - items:
+          - enum:
+              - fsl,imx8mn-anatop
+              - fsl,imx8mp-anatop
+          - const: fsl,imx8mm-anatop
+          - const: syscon
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Temperature Sensor
+      - description: PMU interrupt 1
+      - description: PMU interrupt 2
+    minItems: 1
+    maxItems: 3
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    anatop: anatop@20c8000 {
+        compatible = "fsl,imx6q-anatop", "syscon", "simple-mfd";
+        reg = <0x020c8000 0x1000>;
+        interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 54 IRQ_TYPE_LEVEL_HIGH>,
+                     <0 127 IRQ_TYPE_LEVEL_HIGH>;
+        };
-- 
2.25.1

