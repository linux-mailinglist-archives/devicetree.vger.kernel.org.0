Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64D743C9A97
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 10:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240257AbhGOI3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 04:29:45 -0400
Received: from mail-eopbgr50083.outbound.protection.outlook.com ([40.107.5.83]:2323
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S236350AbhGOI3o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 04:29:44 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0GeyV9LHuLNf3rjbVk6KtiqrGuAuVKFSyUjxnLMrvdreXFld3dwIBxS3KvtRdljI+gczf8nwvLkNnIsnFSjHRABAWtJSI00F8/SPeaSiE1ce0HRXpDW2bnczctfguhEsInlDaZA2ILWr+TW1/ix9WIJ13zFXg/yiRFQjkEhmgiUdcWWaiCEnVUL45H03SNQYctPd6YPusUKxVvIYBzvp2TlC4cRcg/DOhyv4MuR8zmhv9QqAwIlfONWiy9IrKSBBmuWOLw/TREC3BwWzIHGHnMc2cSsVQICJZT4iNAA5MBkJIJ88FXdzE/PN5ks4m23PHncz3+E2aMdO0++cr++Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2v0scO4WWCTThQHk4e8mITe7syS9BubUzmhViTKhoU=;
 b=BcJdWDEYtEiKe9sa6kVjPeI+sFO1HUUbjNrgu9r3n8tpQbt/Lns4O03qn3mUJN0xS6mA5MFUXUelPeFwoOItsg7YrSGGhtUDRwM1SYnZUj69NlJ/JYSTelf3Dq/zWSXldY8I7RtK0IcLa7L6SEPK5qEY6vuFHreSYvZony3QJPKRwyZmYCfHW2SPw/lVSIH56UAMdJY0t8tACRYpD4rYQgsr1mBa7PxKfUofdDJCjzJe16fTMev5g1G/g8csNdCAEGEBb40EtxqL5c7DsFZiXwdtNvh9Nuak4EWeJ6Izhv9LxNBjpbO/7A1XdcRxb1Ic4fSyr+1/xCJZ3K+sC06G+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2v0scO4WWCTThQHk4e8mITe7syS9BubUzmhViTKhoU=;
 b=VwpA21DlPQoBIe9vJ7njkMC41po0m7dOnQT0GWrjwkDF8Qacxgtms+fEI/6p0AjdIAIy4vHaZvvhEYzJFydBAp1rKpdEsPxQJoPIUDhCDhjJ60D1mBwMU+1RNkaxwjwEwpraYM+BzElRmGTg5ZddQ6udac36aN8w2kAbfxyxivg=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8582.eurprd04.prod.outlook.com (2603:10a6:10:2d9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 15 Jul
 2021 08:26:50 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.027; Thu, 15 Jul 2021
 08:26:50 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        kernel@pengutronix.de, aisheng.dong@nxp.com, dongas86@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH 6/7] dt-bindings: soc: imx: add missing iomuxc gpr binding
Date:   Thu, 15 Jul 2021 16:25:35 +0800
Message-Id: <20210715082536.1882077-7-aisheng.dong@nxp.com>
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
Received: from localhost.localdomain (119.31.174.66) by SG2PR02CA0083.apcprd02.prod.outlook.com (2603:1096:4:90::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22 via Frontend Transport; Thu, 15 Jul 2021 08:26:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f348072-03ea-4128-64f9-08d9476a4b11
X-MS-TrafficTypeDiagnostic: DU2PR04MB8582:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DU2PR04MB8582ED5F5674A83A2B07990380129@DU2PR04MB8582.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LdhSMNI6OdP6N22ips6zf2GpEOgV3JECdlFmjeXsvcNs4CACBYlLPzRTXhNfKQwFVdR9c5MMbr/mW6dk+UqKuA8UnSGRSyoA8Iod2G+dVrPFHaglkDK8zJLR2LJ4QCgftFzdanYbnnXLk6968Ta8Y2KUvlgYb2k+lL5kkxf5Xcit2q8HIaZdjRXgPb/ATDYW0K5ECW29pmHi259XyDKTOYY6HR9Wfv2ltI34RgwTIcH1UWjPSinriH3A6vu2Tu0ykOALobsG8oCUpt8fAluYxawk7JnYoRA/GcaaYWobSnmzlQeWCYfUX1SxVlMHO6IOlyngpC4gXPxnwuG3GZZGzkt6KBR7a8N2xk7os0mobegp+gGekDaA2mBYg1Xpj/pB5055P5Xvhr2HH4cNATWN0gWzV8VYTRdaur8PUGUBgohepD9GK5wDd+73g4CSs7RzXnBoqzNElPJPJ8OfIC7fRXzwfsfNc8Z6MMZ6um+1GJzE7VTg4XG1fdh2MgpfoWcE5vo2QDZCumSAPD4f3hsLfdaVTWqLX74p+336JrbqE86vIvxDsKIFGV7noT8iJjmIIBu0F1tyGmVnBsdm37OKghg9GRd1Sq175gmsCpr70a5L1fjApt+IJO6EnyoQOGVwPe7xJNEM1zVDEB/FoaCoUSOjVI71VGMmk57ueRfT+rq8e7kWL0u7WpKt+X6fdfNzJh/NGqlNjHh7EpEmCns603j0BXKmI9tjZup9aVWgqCnqILAYecTyaJyTq7sG9Gfhe2DYyRArRKziFHu8rBvUhfbFhFyZT6B4gzMReBY9rlTII2G/X3L07sm/4RqJXpqH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8477.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(5660300002)(66476007)(966005)(36756003)(478600001)(1076003)(8676002)(66946007)(26005)(186003)(6486002)(956004)(316002)(8936002)(52116002)(2616005)(4326008)(38350700002)(6512007)(38100700002)(86362001)(6666004)(83380400001)(6916009)(2906002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iEsB5JgO6IjdYXJc+GYt7SpEPHUgCgEK172Mky5iNsgkKfWwLzhv08xQXNVC?=
 =?us-ascii?Q?E8pazBWduEsFC5PcxAMW4rTphJxmOtnOwMrTzlPGjCyYixk1+NIkte4PV+4H?=
 =?us-ascii?Q?SE8meXd9weiNB2pimDxWCDX+DtmWidR2AG5M3Yx/lA3r3PP96fiRR17gs9sX?=
 =?us-ascii?Q?yU8N/VyMDeud0qh9tnIVjll3EoN2TmJ6Y5ckVDEholKLGrLRM3cOjJsf0dmW?=
 =?us-ascii?Q?NkISdsKZvNpCPRsbQ9T4W4PWX1sAfVAVzGb9deTeq3NnnQoi+RhH14Wzub+H?=
 =?us-ascii?Q?Z03foeXRvPMGUQoU1niDxSJR42HIBOwA9pPB1GIu/Pl6zbRzONqq+Hx5T3i/?=
 =?us-ascii?Q?99AQPUNjJlsFQkLMIPnTgz8A1u6iR7/A6tYpjvuOxg9TntZDfYTMriG2KKsN?=
 =?us-ascii?Q?fIThMYHfuOy8e5rWwUco1IUpP3OxyrVM/OQsWxP+Bx+WjufmPQkJCrpFMw1a?=
 =?us-ascii?Q?829WeVJ5JlnAdbns0Dodgnb+h0MiwzTNjORegdZeM5Mqevyoa+8onzD2DtKS?=
 =?us-ascii?Q?sXIq2XR1nZhLo/Iu8vCpsAzWKc7iiRLYMhhErjPXoBJ4X4tqJDXXtdo3ymZu?=
 =?us-ascii?Q?z+F+9X3jyRtwg2NqEqoXHjRYaIz1eadwtn0xiO+/JupFNTHcROhAg55g7VDo?=
 =?us-ascii?Q?TDsVE6Pqn++9HNOX9FQ2XXu3Eo3MmP7H18n/C+oFCrHGAYaVK5NMcc8PyqpD?=
 =?us-ascii?Q?enF7SKgtjpMD0hRFVrwQ05toVzCKaF+dWq3R8JYyCcCg7Sg4MYtK1GtT5UT1?=
 =?us-ascii?Q?w/5T3rSiUY22tzKF05FxsF5WkX6NSsRp3faQfI8ASBQdTAbru3lpofwVenvL?=
 =?us-ascii?Q?8i3m6sWFJrk9PZIinC2MgZaJyk5ULvRFysIXwX0xJcjUe+AqRmKk0nCfDRMV?=
 =?us-ascii?Q?a4pe2HAID8g+4rzEdl+yEf9nxPYw3of28Fkwor7JjiMWtwIVjwe7bg9m53iL?=
 =?us-ascii?Q?UHdCmiHXyhVZD1jTgEFL3qWOpiooZZEtx5ZDm3XUNDZhCQvXm1sdo3MoyPsZ?=
 =?us-ascii?Q?j+LXm29OEBlCL6J3pjvlX5tpiuHig5wlvoGsUUv6YkxmjeCgxjN7XZEFsHtw?=
 =?us-ascii?Q?fkPsPxmKcXsfnycHBrGp7CRONPMKJkU5+zmbEGrzKi/JBqEdMWbMDScXdKQF?=
 =?us-ascii?Q?DJ/+f0lryJLLfKbxzR1osdQBhKTqY56lwg33FAoEdAjUHoUo3ZIoGd2S4SFi?=
 =?us-ascii?Q?cajtiTlRHUDFhm0ChzCuAOAxxSr3SuD4CzH8VSpsQjSdoKIXXK33AVg0fh5z?=
 =?us-ascii?Q?MHVBGzepUvF/o0ykluQnaYguKFQeeh7h5h7XgtYrdXg+pW5KGE+l9jEjyGXv?=
 =?us-ascii?Q?vf/NobsbA/oOBYunoXJR3RtT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f348072-03ea-4128-64f9-08d9476a4b11
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 08:26:50.3014
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b1OZJY2d+D8hRelNKu55nTYbolrPPoo7lujjilTrHqrNu6nVi8wtqA/n2xc5tmcLGYQE4xNdINZfPArW/cKBWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8582
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The General Purpose Registers IOMUXC_GPR are used to select operating
modes for general features in the SoC, usually not related to the IOMUX
itself.

This binding doc is generated based on the exist usage in dts
in order to fix dt schema check failures.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 .../devicetree/bindings/soc/imx/fsl,gpr.yaml  | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
new file mode 100644
index 000000000000..832b6b7e7c33
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,gpr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale IOMUX GPR binding
+
+maintainers:
+  - Dong Aisheng <aisheng.dong@nxp.com>
+
+description: |
+  32-bit general purpose registers - several (GPR0 to GPRn) 32-bit
+  registers according to SoC requirements for any usage.
+
+  The General Purpose Registers IOMUXC_GPR are used to select operating
+  modes for general features in the SoC, usually not related to the IOMUX
+  itself.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: fsl,imx53-iomuxc-gpr
+          - const: syscon
+      - items:
+          - const: fsl,imx6q-iomuxc-gpr
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - enum:
+              - fsl,imx6sl-iomuxc-gpr
+              - fsl,imx6sll-iomuxc-gpr
+              - fsl,imx6sx-iomuxc-gpr
+              - fsl,imx6ul-iomuxc-gpr
+              - fsl,imx7d-iomuxc-gpr
+          - const: fsl,imx6q-iomuxc-gpr
+          - const: syscon
+      - items:
+          - const: fsl,imx7d-iomuxc-gpr
+          - const: fsl,imx6q-iomuxc-gpr
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - const: fsl,imx8mq-iomuxc-gpr
+          - const: fsl,imx6q-iomuxc-gpr
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - enum:
+              - fsl,imx8mm-iomuxc-gpr
+              - fsl,imx8mn-iomuxc-gpr
+              - fsl,imx8mp-iomuxc-gpr
+          - const: syscon
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    gpr: iomuxc-gpr@20e0000 {
+        compatible = "fsl,imx6q-iomuxc-gpr", "syscon", "simple-mfd";
+        reg = <0x20e0000 0x38>;
+    };
-- 
2.25.1

