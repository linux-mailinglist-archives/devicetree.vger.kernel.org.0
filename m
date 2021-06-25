Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2AC73B3A57
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232906AbhFYBG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:29 -0400
Received: from mail-am6eur05on2060.outbound.protection.outlook.com ([40.107.22.60]:17204
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232850AbhFYBG3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:29 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CCIu8GJFxUqwki62Svwa7Zj4Y9c7kKiOjRYR1U7dGqpkxyg8hhmCgzkXjDPexkpMZIJ+vkme8yq0CiiE9JTioNPnOrqUKidBeTnF6tw4oYIWSn9IvJPTa3VKn6zSwpsXVGKypcOpvWWd+PjeJ5Zb/CzL6rzQpTWIVBi1qe0G/ugORLseuohyrz1aRkMPH8+3MUCtvzSiAL9p8MMiePs0KtmQ+GCX0YL9okKV71NRuuEsWMBuuKONNoR9y6Hsc7S0gplh6qRTbIuHWx9b6JYA22HPGQfjv9B2ZJdPYyYRyo6fAXczsJ5Xijr2bEEvzgyyZG8BL5pqqCI4LtWPUIB7OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jc6H6HO+XPLtzV5ICINj/ga4tI6VLNDkmpdQHUU4Orw=;
 b=gEMmlARv9e7+KyYU+rEFGuBsDM76aD1L7Pur+Y4slj7UsPF+1VrTjG8Pyfmr5SUfXKQo5SSchZPHZgvNPQ+JupEOPG80rBSkVl1WE3fYZgwdvJTCNBLlWbnYOlS9ZHYUcx1Ks6yQeNUq5Lfro8bytyozQGnpReIeV6aZkUMgtXFAUH2eEi73pO4w5rY+bjzvfLrCW3V6J6oQa5ALvFQECNLaFAI/R03agFtTyP/TSZDbLvyM8wzARfNSocBH9CdtX2PlZVWX+3adQnF4pm7AOjU8iZ7wF/hjqMjgwR/PA37a9mC2ke+EDPIn36FEZLbPeD70mMvzQPM2l72Vcmv7PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jc6H6HO+XPLtzV5ICINj/ga4tI6VLNDkmpdQHUU4Orw=;
 b=dHxX4kSJ+oHhXq9zET5cIKJKzgFwJmUQzB1D0+xMjGg64Jdqrro9D7Cdp7YkmRUK60qyMMwfkXi21dJOh46EBwWAWj8fJ2QKwVH+Mx+XXbSbsVabO+xR7ngpM6ot1DLReKE3fT9nu1MumJp6KdSAHB2lf+XhOCXmgR6D5RMYSXk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:08 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:08 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 05/11] dt-bindings: spi: fsl-lpspi: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:49 +0800
Message-Id: <20210625011355.3468586-6-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 344936db-6041-4b61-8741-08d93775224f
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB5468AEFDB3E7A22641104FAC87069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9VI6pfrsWZ9s8dW2FuwgL8dCpCttCfYnqJ6Q2Ixjds/nn3RWKQi3hmCZ62SbQURtkZrJoAyjtXct8ahcwodQeK+WnaArf7qu7/OrVsrrNOIt/BHSttLCq/8tzt+8B3e6zO0S72OpipqcpQNChbxUC4xbcLUg5QpIKNgwPv4DKVl1ZBhWYWurte2/jQAxxitK/v/Xv3E6Tnznet2DHB9iG1OsH3whnx1eKxW9zzzYNPSXWhuk5fR+uSAHSdn1CaxaFiO34avkarBjlS7HX7qbJ/QSs/UXlSEoarRfHg+8bGpjChxlaVMtXBEuG32gKfqBVccXOxyLGHp9mpuMzbuICtDQQCxWUEgqk/eQc89/PGmJE9OaLJOfhrc6phW1n+VchXFAR1RHj4+1ZnUOacI/WsW6QyUqLvnN4MOTw8MXAMyhk9ccvGn/iWlgbeH3ctW9b2ENvCA1bOMFLXX5eYyxoE1HdKfxqPpYnmnjJlX6WnCT7GmtV/+KDpaIAqKmEW1hxWGpcMkUZPtzo8VWgrp7ltDVAUR0WJy9w01ooEHLeISpHG10kGV4XeYwGs4VLoGHbguG/o+tlQW5NH1tdxexG27iOmPAzq6H+64Vo+8N0slTewmqaoIlCUkO/w7hSU0kqzRt0Pf1Yv6wevVVmsHIb+WYEez8LKEmhKI55zmXF++MgqZHBCnD2xTH+ZQjMGQwDr9DPIZF9k9fz/G0HPHqpfLxQ+ZXeYYDPCNBJWbwvnOcSxpgYeNK9RaPMLgrs2UA383RUnR/sb6jWUV5D/tcMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(4744005)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Td2DPC7EdwD7dHNOOBukjfux75oVnIcU+ZSDCH4dPQgtO8zPZINwXlioXNbG?=
 =?us-ascii?Q?37kWdUy8MLH7+tfvx53A782Gjnzfe1ciRApEYr3bQu4MrVcLNO7wphQuHW95?=
 =?us-ascii?Q?HP6+IQZDgODkpmd7EQQOVKVE5K0DfxK5RF6kQcCbTgxcpSBS0LRtIwM1vAfh?=
 =?us-ascii?Q?UjhmPUp+Kip7JRwYJPI5oQLVqM55qoeN5lQssgDZR7y/KHM+R6nh/5M/d8/h?=
 =?us-ascii?Q?8XsTmokpjtrv9YXmlA8Diaexbqdpw1CzELLR3koOgIWSgVC/sn2YljHD2wlw?=
 =?us-ascii?Q?AImK+yro/lLiKhswr2K3BnLCAd81pt3Fb094t++nEaCrEy4k69P/AWsoy1NA?=
 =?us-ascii?Q?3MeN3adtYjXYGKl1Kf0XkihxLu4b4P+qPILCmYzQu/36+ZIDDKEAoNyOFdiB?=
 =?us-ascii?Q?EOeJrwaacZeKK3fv+fDuQS4cAbgzKIC+/JC+s5gHHuF2T2PF+5uE6+QLx7L4?=
 =?us-ascii?Q?Adimem/3NM8Tamd7m33pS4PXi862lzfLjG5K5Pjdm6zcxqZ6ob6OCLcqvjIy?=
 =?us-ascii?Q?VGQ4OfxOEB8TqQK2rEjLh9ALVhg5YYQlLLqyC60YiIE3PIuwRK3RzL4FwLo/?=
 =?us-ascii?Q?pXT/o64fWrE4asdD0E1v+9DHBKty5hNW+2fXwyJMtXYuUWzdUGIijPVJxcDW?=
 =?us-ascii?Q?TWhAyHvbsMOZd09CgTs0zv+K0/CqzdakvCVHNWBAQb4+6fwYKW2UksqcKGuO?=
 =?us-ascii?Q?DG9vtbGb4CMuhJURRk8vOSRKWxkroBTsfuczz0caNim7ppH3FrwfyPzq6s3q?=
 =?us-ascii?Q?WsexTUXtGQ1atMs/jnHSdD0E8asyb3tXVTNjxtZxkvP1vubfHl5IAGWV1WhN?=
 =?us-ascii?Q?IojLJbCfMrNzTmvmeMkVWmETJagh0/37kGlZhTDxzIIuO7vFGzC4hN6kBWPp?=
 =?us-ascii?Q?vWnlLTZne6rFhEqm4TRxqTw34sldoaxJl9zT5LwAfOKWifWa56LXwh0l+C5+?=
 =?us-ascii?Q?ZO3cwFlXUVWZFYbW2GiV15aZ3Nz72B8T9EBtJmRaxWpfAAn9TWw71202Iwbh?=
 =?us-ascii?Q?XZeViMzZKza7LuH+OXIh+Pyj2r2MH55uKpop4LSlY0EBFpPgMBKFjZr0Kpa/?=
 =?us-ascii?Q?evvGcj1S4XzRozvrhzuq6hR4N6ifTbjqLBoKk51VyZ0/lSzIRc46++ban2Pc?=
 =?us-ascii?Q?mR7vQ7o8crYLQiOJSK7LkrvY/I3IjNBPgkWW7AOrd+7JNax9nkgbeN8HXAC4?=
 =?us-ascii?Q?3Ce0wOt8y2O+3az/Le1UIB+ox8wkzcbLBQEjJJNsSk4mUe22yWFmr6LmQ1vD?=
 =?us-ascii?Q?cvqh1ew22r6MYSVaHbUIYr/7D62+2THWufsC9fqhELb+m10F24gTXwNbwOM1?=
 =?us-ascii?Q?UMSp1IQ1g3Z0dN9b8KwK0PqT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 344936db-6041-4b61-8741-08d93775224f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:07.8941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rg6RkFhb6YqQspuHBm2au55DajmSI4kc6+a481tU8qTRL9Wxz65ZpyX2NyjAZCUCfMfzY+Osgtpzidt76AAD3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The lpspi on i.MX8ULP is derived from i.MX7ULP, it uses two
compatible strings, so update the comaptible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 chagnes:
   no

 - v2 changes:
   refine the commit message
---
 .../devicetree/bindings/spi/spi-fsl-lpspi.yaml        | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
index 312d8fee9dbb..1d46877fe46a 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -14,10 +14,13 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx7ulp-spi
-      - fsl,imx8qxp-spi
-
+    oneOf:
+      - enum:
+          - fsl,imx7ulp-spi
+          - fsl,imx8qxp-spi
+      - items:
+          - const: fsl,imx8ulp-spi
+          - const: fsl,imx7ulp-spi
   reg:
     maxItems: 1
 
-- 
2.26.2

