Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA7263B3A59
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbhFYBGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:38 -0400
Received: from mail-am6eur05on2085.outbound.protection.outlook.com ([40.107.22.85]:6112
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232850AbhFYBGi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:38 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eU7cZt5kCk5bqxLcNSnttqRd9IaIazVdjI+a4vON3oMM8jyJ2lzLOiwOJCf/qTvACc+q+2ARxMNLzrXStABfKAt0LadK3L/cxrpiqG3JEiYQKq/NNA/N5WI/MyZbiT6VggFmUOv2uCHcsCAsutCowsHiZmWPrijJG7IvKhaIRyLdzQ1v2/90qy7XoBliSV/FLhZHFzrnHk73IVgCyp5Lc0oLHE7NRlcyGJ90Xf535DCEQHzd6NSJvue3r1hUgNmDx+ntieRjTL+G+bIHU6IFVwQMF+mcJHLSGA9/r7lxfwhdO6OTvsnAxnEoREwy0UyB0gErASYetgrEJFSJDjSiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w+UIV2V/5/DLLqU+0pmyAvDqC5SjE95DEEoHzAQObJU=;
 b=L4va2pJrSAFwUf32rCvQIDQBn6JWvw9iRqY0sDVY5B7VVGJFWBT4HNa6f2obsXT20eLeJgrk/PLIt/qkbjQh6LZtEQF7idUy9p9MObTRO/7Av51boSG2Ma0CzRBKNDcPJ8lfjJpOOiJGZcZfUYpxHV3EHO7vsIZPrgVtvK+dYlh7DzZJCpgNfyEfOnn1/B9Hrnt4wLmy564VIR2W226ZRf29FI5rNsik98sKhb20OsFtgkH9o+fcogctcqhRWvuGZeF9bBW5r29Z15/RS92DzKthAJcrT+h5SQGr5Jz0dmR9N8ZHWNOwTopM886SZwHH/gTaOZH6rcHv4H/BQhrLrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w+UIV2V/5/DLLqU+0pmyAvDqC5SjE95DEEoHzAQObJU=;
 b=XPDK8XsvlN6vHNvW304waJtQcjbiiXeWrYFk93QU031EQjcTZ5tkJbxObmLhrGBcmEf5CNtr87hyLmby1afTkkvc5wRgWY/wVVlr6Hi/9Ww0HaAlq6hhHL23/+mlu/5bB0uwUTwaQG6vfE1TX+0T9MmOH9rT8kNNrp2+8DDojoM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:17 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:17 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 07/11] dt-bindings: watchdog: imx7ulp-wdt: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:51 +0800
Message-Id: <20210625011355.3468586-8-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9e3fd1e-d085-4fb6-2278-08d9377527b1
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB5468F65FF8673C03517975FD87069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nw4QquSHM4jZUoI4iwCkB+Ng6w/tqiLG6psPRaw+QxoJvzJaQUAFJ9Fa4xGoyHilj+ehBkRJ1bVHEL1amZFy77PpcHJH7+dx4bmVi4zJ4myW+IMZMrbpA+LRKxy8PEizn0jVvzA3AgbalIPEHEP3t+wshuz0xO4L1so5THms4mlnbnGqlf4xTTxalrEif5nNlmaVk4VwDq3/AGi3fFrBzTYa6I8kOX6iQq4hiF5n2gdOPuFQkNbk1WFHhm+1/laxH8Q8XX/G3MLCgqEXmzBuj9jo882ml1dKJZ18fF84JI/tfHOl97H6jRvYHX/eTxndN/ULY661ANo35tePBdPLbXo2CEV/LRrDfp8yZcJuOTFwyWdnFYWyMiDhopRhsk+HYDrJcLLNbTVzschfUraEcnMcZ4s6EBamsfrxD0QUtz1xlnFi+HwAEsq9CyybKAY0linlvnujp3jOsNGBhIsBcGZn+D3wtUlq+7ECy/+BkctGaEMVbOTc0aZ+B69ZT5rrYzongmCSz6HGUkcJ7MACfg2dhuXn3NEriappaWx07+yrsVAyElMVJtOl6GI7AAKm83FgRtJsYnf0iRsgQTlJEFKCIBn6eUAT1u6ImgxmPV8niD5YScGjM7LAY2l1vV/8UW+Augnt4LrE8WAfTmlqOIDrHB821NProgMQkynVl8Dd3Bg9IbdNu4uamnkQD1RXhJKui6PgT6CYeYJh5t9y247wu5cvKzf2XWzEbU40ERmK2/WulP1XHjjPFRR5QmKZGDUN56UeMnTOqiO3DJszYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(4744005)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8Gwvpo1PgatRS5UNJVAC0ZLNYO5LACpuRKwuAbo/zoRvj+yin+7w+qPxsPVL?=
 =?us-ascii?Q?+Nrs8eyxaxaD33uy3C1SoWEFYzA6yxBQqOQZaDsJkCzbYUq/LmTm2a8dRrpW?=
 =?us-ascii?Q?C3HM4VUbFdkcJNIie9Layh0T4uqLi/K4/lx873YcrV2RdYbfWUEimsmYkT9A?=
 =?us-ascii?Q?sfXf//rwMdEV+NVXQlqPyHthJti8pBXqu3YWRQdgBf1oSCyzQwc/2qmwZ7RY?=
 =?us-ascii?Q?AV9mnoQaooBl0+YWPm9AobZKXPj4x7eHJIyRI944AhJmrlR+DbOuiqeMgJpn?=
 =?us-ascii?Q?IuxI2aMxXO1OfVxTVwDQ6kKze8DyDilF7gJP+biDDpIRxSPQT+0gkfwwZyeJ?=
 =?us-ascii?Q?JE5CHiICEBGwEAdQS7xxIh/LPqzJ1EG9jKIug/zlwHSjt0nLgNez/uHW3TRy?=
 =?us-ascii?Q?5vqkPD5Ilh7dxMvu/9boCicAOtIxbdv1Tocw5wyoQ+JBrfnb25Znov9e5SQE?=
 =?us-ascii?Q?Wnu1kkjK1D48RUJZ8YzN/NsuPnz5ZjVebu9oX/Ve0FaHIMYiYPti6BDVAnIg?=
 =?us-ascii?Q?5EQEYL9Gy8PSSrx2kNvyydsN1/PnQszV19PpAMIlEfjNkpEoLMT/CRfp9did?=
 =?us-ascii?Q?cW2olkAeRU3axy/URqJlXG3A0ZqWidf2uCx4D6Jz3nLEwXfum1G8C2tZ0NVu?=
 =?us-ascii?Q?kMzSouhmARl52xajTyXj17iRVx0N/z3Q8eZ0cSA/jQFjijTVWYqEOOpgyHMv?=
 =?us-ascii?Q?d8uaI3APfInSWiwrM/yfBvXK4MrFCqa8mTaAWrRksvR7PkbZpGmAE7an9GQc?=
 =?us-ascii?Q?aaftgDc3+mWyMroDb4KqIEb9KQHdPPjFbRno1cFhYkUfc+SAE+fiFY3KEXGB?=
 =?us-ascii?Q?EgEtZ6N62IZwGwardpYpmcYfH4ZYooRHLdr9C1sM7xyMIeajL2wsMRQfPT4l?=
 =?us-ascii?Q?xMLchmOpKhmG6tz7gZcZtsOvksHsBhvb3zaq5vlx9sBD41kXMZ7j7Z9ZJ3Ux?=
 =?us-ascii?Q?S/ijvLECRuRjPCIh3Y3v0vmH6Irtty24eYOPFgWyEjgRvFhIS3eQhI/sFcz9?=
 =?us-ascii?Q?60pNYHLDrAHbpJfTn6W8Z9of1tblIctfZF1nfOSGqkRNVy37dJeD5YB95rLo?=
 =?us-ascii?Q?LPZqlRhm5dSBkypDYgFa3OxixbO0fdt+2SFPp+ZkFv2XjYmE09lki7yM0doo?=
 =?us-ascii?Q?66DQbr5ZxcODVvzWhaTgv7+GsIiY2vVeiLf6/XpSQ18IV6y/z3XFh95Isbhj?=
 =?us-ascii?Q?kFb8RjeGf5xnrIS8Gnk0++bMrwm1TsLMrWJbetNXC/ibBFGOpAOeE+8ZwoB7?=
 =?us-ascii?Q?UqvYRBFPQTNr6L9T57jCJPcv6neI4LIyRQK9ZZ3uLgRKxyF915dB3XN6saxJ?=
 =?us-ascii?Q?hAa2RZpGupw2BnY0ghFN+NUb?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e3fd1e-d085-4fb6-2278-08d9377527b1
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:16.9094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +z9LBOzZVNa1G637PR+p1oeULeBKBEKeW7gqezwG/M4Y++PZjrX4iBJTGj1bHzFjFToQS2rBYiBBOI8ZKzsCMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The wdog on i.MX8ULP is derived from i.MX7ULP, it uses two compatible
strings, so update the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   refine the commit message
---
 .../devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml      | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
index 51d6d482bbc2..fb603a20e396 100644
--- a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
@@ -14,8 +14,11 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx7ulp-wdt
+    oneOf:
+      - const: fsl,imx7ulp-wdt
+      - items:
+          - const: fsl,imx8ulp-wdt
+          - const: fsl,imx7ulp-wdt
 
   reg:
     maxItems: 1
-- 
2.26.2

