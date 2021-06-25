Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D15D3B3A5A
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232850AbhFYBGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:43 -0400
Received: from mail-am6eur05on2059.outbound.protection.outlook.com ([40.107.22.59]:6881
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232942AbhFYBGm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kykyoI4U9dsm5HGkpAht7NA/N25oDpObKi4Z5D0Y1liEiY9yTvk7LIroWWPhBhfjJHw45s7k8gfXNQAJy45RK+62E+FezLbR06DS0blwdHcvlq9pydQsZqh9tfL2wkgm4D/whM4lcMVaAFylwqkINKkiokknb1QFKAGETPfGR4Q0H1BFhs3NWme8OGDemquu7lTlF88iV2d5aZ47bk1hInMNzCok9Ye580O3fjHAm4p2Ixf097umsCKZ21bBrhH0PNL9VWetYmVHHIfb1OiUDLmbDDTaTThCPC+uWYDxr423R8+4DUmgKsyjtOORmH/ZFhWmet8MPRcjLgpOAi07Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z0PxC39lLrHZXWEC+O/wqag9ooIEQvNCxtPQDvnn1tw=;
 b=oHXf+QSHtyX3uceDFFTcDmhQ953AbFDlq4kGBCCoGDLV4HxjGBz30godlwY4yuJd85jlEJGhcJtwy0rwHHaloziPmwy79lzNcFYkATUOBZid7s4eYe3LF6/s1nt1HMyqLR1mX3iiB10SOyvB9dXZkpBm8umVPv6puL+MkCT54yuqKg23FNDHA5M/4MQ8qsQaKi4dPeDi7LiS/o6JKgQIjNrM0XQsE6z4ORwmsD9UY8vwgy9WDkY4042Z4hehsScYq4vXJI6Fcg3oRYYuUMAanmxMw9SZP7UCHySOsIq/H5BPupV2RkFGR82Z7/yREQWWWsM7oZsR8+WHv02CmHEwcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z0PxC39lLrHZXWEC+O/wqag9ooIEQvNCxtPQDvnn1tw=;
 b=r634OBUILtTfpmJtmIlztNrITHv5jXHocEqq3EIBSluq8atKphoA2oa9zZ0CpXfzltGw1cG3K8Bu/+9KVhzO3ThovNM035gbS27Im2MxPCffUNIhWVFFsI+vW0J1u6R6aAPwfmkoOx+b5ihH9weDYBQzcpKDtS36ITKz0aj0V9A=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:21 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:21 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 08/11] dt-bindings: arm: fsl: Add binding for imx8ulp evk
Date:   Fri, 25 Jun 2021 09:13:52 +0800
Message-Id: <20210625011355.3468586-9-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 901fa992-a0ca-45e2-26ca-08d937752a57
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB5468135BDEA6C8008546759287069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nS3j9yPpcFCFu/j76aJXOy19JnFnApFeEX5A5/nRp4NVFHvA3o3npsk2CZ1Ql+iiPmHQhy0j6xxx6cYVqHYvWG0idH9AiAQBj3JLPFd7i0UDguVHEtBVGz2WFeADks4EsH4pKUpTMH7eiN7OxJ6nGeh8q2ruXhAsGwupiMrs3HptZYgISsrxmwZmBrq/mX6pjMORb1kqS8fbRiNMXGnnTvQ+0bXVSKuCKU3eob7/Was11q2ewHUE1VC3wYLko7V8yq0v9byW2Op3bBCZ5eTCbxxXYnV0ohhyFVG6fmzdQ5L5gTvSorK0I/mdtLYSBo7Y/SQrRrPJ249dnFpX1iAbamdP6ybECfCvwpjrWu6mA6jskUZYQ5SSEZbXFt37fh5LCECw7nOqb83UGvAf0Q17iXqAgmLQGeqLsyMmTLvGs2elAa0SlcZNpflt/CqFIuQ+6W8+a+9DZ/zIGjmVXurw6FOZMTOEplaK5s0MFu0A+GDmfNM0wend2ARxHpWOj+O+8Ex0czvhVbXHZIU3LS3ywS+XzXKBClA9wbvhlQ81A1AuCQlpjeUS+vIy6pouo+C56hQG9pYy+/qgpX29/zhduAS/t8sRO0GUKclnbFM+Djueq3HQnvalTqyMm+B4RCvCQs7wuOuQTADZF/pCHmoL8URpPra7lHZzwloQUk4KVgJMkEJpiSXLrcoQYDQKee/mnCcOceQHO4UhajX8a6Vl4k8qCq2e+uPXUwU/WiHlMNtMs+WxA3ms+BH0Vx131DbmeKePR4BpaOdBNuBK/Bt3Bg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7nPGf0pFJNx9/GQ7tGcAvC9JSO8KEgYrI/DcRJ13ZmwB+wDP6ZbJMxTgH7UZ?=
 =?us-ascii?Q?Mrxerhw7+dYhsozytrknyPb27SN6MYVbrw+pEYVZ3mEyCzE4fKkI9qXyFK6H?=
 =?us-ascii?Q?Qkcn6o1yLt1qllX/An7Gmrlb9upm5NWy44uJHg28WHOBwa+I/mujxJw/7SY8?=
 =?us-ascii?Q?xy/H/Jdv3nzIneOl4vme3FqodoOprEM1pwScj7hf/8L6x0jscpkQT71LvKR6?=
 =?us-ascii?Q?0a1dQKoTobwIaXMjQWMo5kl3mJyShRTUCkai1HMRuDRLnVt1SoS/h3NExQ6T?=
 =?us-ascii?Q?ARySfwjU3PZqnZQGOjPsp9EAKaPlqFF8iFnQ87eesiP7Z3RyNBGnKK2gEmjD?=
 =?us-ascii?Q?oI2pchM/kCDua9SLKI+E5nP0n/xNrgfl4lVoqRds7m2b98HXz2erRfSPK+u1?=
 =?us-ascii?Q?M8/KkZUgT9H3GKN4s4GuXBdPYsHF7DUwE2q9cZ56WlG5cfCHT4CyL9Js5Tmz?=
 =?us-ascii?Q?mAriRCKB3ALAyAlpsO6KpxdTNYyYnCLhNmkdv7wBwgJdvs1Z6kJwpHnvMj90?=
 =?us-ascii?Q?b3LIzac3qq6ihw/QiFZ0A6uzVCFZzJCmL+onao8nFUkY8G2P6nJQsbIdoNQ7?=
 =?us-ascii?Q?g9SyTo3Rn8l/5mh5++GD6+x/VN+8okTm7FYqyHQYgBlUcrRJnbAgY7Aa0btI?=
 =?us-ascii?Q?bo2Y5eOLTEBLu4meJiv3E6iWhWv8rDAUpwkrxISSy85L5UBylgCNvJKKn9Sx?=
 =?us-ascii?Q?S+iSOgQE16lCiXxW/+Vm4+ZERSRkHaWtAhJZzU1J3cO2D89P067Rj1Qbq9Wq?=
 =?us-ascii?Q?G2fljSsL46oGjwQQTiVmL51ZbYtouJQWvhbiPRA5+H5mKucecQR+kntPzaUc?=
 =?us-ascii?Q?7h8ldzS3O84KVxL4Y9ZgpVk7N4Le2ptKBsR3jlCUUCfAs4/JjNmLTUQG+3hs?=
 =?us-ascii?Q?jeMLsgrPVjeu3uE2xSQIdgGc+vU5knVpcjZflPfeMd0kriAIpog4Vky7J9ft?=
 =?us-ascii?Q?GjvbOIxya4VhoP3cECCvclF3OVIMkGqSHPISjbX8pmVdunl4iAzLLpLaj9h9?=
 =?us-ascii?Q?fPhSTvsW1HofarWnAPIUrYJX3IPxZw2u4FUj1PfQxjQ212naKKQpHcqPrOdG?=
 =?us-ascii?Q?rlrmmgNwnD0nqhJpsO+KVW1qPS6k5pnV3X5lKU0mn2XexsCO/nMiv3nhSQ+i?=
 =?us-ascii?Q?E4GAmjy5r99tG+Bqds1BYAgykIQDjY4r3EDWKhS52qou13mfd6ZyjyznF8aj?=
 =?us-ascii?Q?05BozyVlIcUhhNm5Wd7WeAtxVYSa7rn6dax6bAl2Ons0H/XQ5qQw4CsvB5p6?=
 =?us-ascii?Q?BgPkgqfTj9h/asS8Qs+fbYjNq0zD+rntFpnAPAR0L6M4pPAIH1aSAFVrWVwR?=
 =?us-ascii?Q?nUbrFxiTGJJNepfZYzTd2OTY?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 901fa992-a0ca-45e2-26ca-08d937752a57
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:21.2354
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Am8WKP2K6Iz3MeuyE0RRCipmHODGCz/1MTR8IxFaLouH7dZwKdG7EfeP0yvOQ1jzEELNIb0aXsxKqrxMwtPHcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dt binding for i.MX8ULP EVK board.

i.MX 8ULP is part of the ULP family with emphasis on extreme
low-power techniques using the 28 nm fully depleted silicon on
insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
based on asymmetric architecture, however will add a third DSP
domain for advanced voice/audio capability and a Graphics domain
where it is possible to access graphics resources from the
application side or the realtime side.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   no
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fce2a8670b49..e68a1b43b144 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -788,6 +788,12 @@ properties:
           - const: toradex,colibri-imx8x
           - const: fsl,imx8qxp
 
+      - description: i.MX8ULP based Boards
+        items:
+          - enum:
+              - fsl,imx8ulp-evk           # i.MX8ULP EVK Board
+          - const: fsl,imx8ulp
+
       - description:
           Freescale Vybrid Platform Device Tree Bindings
 
-- 
2.26.2

