Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83EBF3AC412
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231826AbhFRGq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:29 -0400
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]:52409
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231137AbhFRGq2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:28 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZFZagvhAmKmWZFZvzJR76N0TYnMoD/KsnrhJ4kMizLuXf4O6Viya3Ei7c3ryg+f8TLRpf4XiyTQQ9t9GRhcHFm0eeBhop+2C4SY8EZGUGJoJLWf9pnmyOUd/c9NU+bdKIKqkfx73yHxe/SAlY+/S+Vvs+eXJsJt02MrjP+8ExeL0qB9sJBKaTD4fi6ej7d/yob+cFqHFVZZ/ngMOLmUOcb8N4dPwgnw2e29Ar9Z4resB4/5YUG6zdxcb+7AqcECFKHb/EnPfC8n3wgYU+/MFBVhD7jmTozw9JXzwLDeFxAQ08Bz9NuCCm8+YyXgNWqA4USYTxU8rq8jJEVhNgFMUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2j+Iy3QjGqars7NgaPHuINKDptGeSFO3Dr3a2t3UPLc=;
 b=TstYGf7GYeZ5TMGBjXzGHTRkil0FsfRbgb2+kW13EK6+BDcvn/lfCfk6B2iGra5IisscP6rhQWZXb0o2rJ/y/0LhaO5vfoyxhjPIn69MqHMm104AUra0MKSAVKaB5ks/CnniBdRWL4HerSWJFeIz6yITLdfq5ItfNLf8E3HcRMvD2k1vqRoCTcgzQoNsBIBi1w8wexToQZTvicRyLSOMG7495PqoyULVAFxJYcXnq/jGlBr9wT4U7VH8pxYM28a8VDymSuJx6LChZEjn3Kv4leZJ8Bwbfosx8xQ+CmgxP84CoNWqRKxuIMCVC1MkmCW8p1aL92Q0Ht7okEQo/uaLJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2j+Iy3QjGqars7NgaPHuINKDptGeSFO3Dr3a2t3UPLc=;
 b=RhOSSVFRUCRPGf0oYeITUXQPLz081oBWMCnpDKukrDBKgPBzorT5pU1G3wNqBAD5dxSJPiS8XzpIcD4bnP/4VsMUjVcJfXjxDFFGBFoNGOWTw7D0AFq2ylNKTw8EAdqHBuIR5bWo5W0JLSUULMlSl+n2QpHVmeHW0mW8gPyYmPg=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4940.eurprd04.prod.outlook.com (2603:10a6:10:22::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 06:44:18 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:18 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:13 +0800
Message-Id: <20210618065423.3424938-2-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 484fc976-6909-46ee-33fc-08d932247eba
X-MS-TrafficTypeDiagnostic: DB7PR04MB4940:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB494086F9A0001896928B5645870D9@DB7PR04MB4940.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dd4nT+HwxYUKF23fRsWMm6JM+K2pjRygQ+iEcUU6wI9zw52Il2FxNLZSovxOzcujHnnRu7qnPYldvNI1GuXGdom9GOSE+odyGBUftrSIGDPLE8ZK50wknMUcNVaWr0ORn5dexFB3JlO+++eQoEp7oUTo3BdTiZRWU2G96ebFRCNWjqksAgQfkZBQHxCKzFTiQept22n5ZtkAw19Eo38uOGjnfXspNNzSMalnfuugSOJes5rUZ5vnmg8xsjvRRFNh+2mo3un/yU8CnUiytslbq3mZV9kLKZSAUADN2xsTC+2WpHLYJ8py1dy57lE4mOrZ/9VSQAsdJcbGrgUsDmywA7hqZE0SY1ZfkVsF7zcF98ZVieaPa4UR1hQYYq6EVb/msK/E7pnpNQs09onXl/hjkSvkcO5d7Bj304dNV/VZLrf99z3IXGSzT1kMVwwM4Y/gQrQddnwW2P++uk3W1x/+kly6paQQ8f32sEYBoE0RI5AT8KdCuzaJ44JmB5Cnr8k/x57D96iU5U/Sz1OfUWouD6gSxNUSE7QQ1s3fT9rqLdF2Fy1VtlUIi81gjko0qHl+MWyYQF2GJFkQX2uGAanlqEkYe02OeNJPE0GMvz4ZPjKkCvplS8WJl17LGQOg0zHlssclOWNDkGRFgpX3lWpID+Gfg1vUgGTB3oxdeOfZJ1GjV6S6myX7ti6KKpiH7TDmC56U+jeOx8A1vZkgm/3arOUvmmAZXMY1WZ77iSgx4cU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(5660300002)(86362001)(38350700002)(1076003)(52116002)(6636002)(6486002)(316002)(6506007)(38100700002)(2906002)(478600001)(8676002)(26005)(6512007)(36756003)(4326008)(8936002)(66946007)(66476007)(956004)(186003)(16526019)(66556008)(4744005)(2616005)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cNOA/lSJeKBjLP+K7LnlH9dfD5Scwfzv8B0WinaQlyyds498fkt+081ixJ5G?=
 =?us-ascii?Q?DL4K2rvH5dDIJan4hYE9XG+S7PcfIHDc9l1QlnyApazyc0V6szdUIuxCH7rU?=
 =?us-ascii?Q?QjkdQIXdt0GpwjOG/24rdvntOd3E1DWUjxEmRZQlcJGW63JBPxVastkFmNz5?=
 =?us-ascii?Q?u5WjMaC0uhULltOH0pIqB7xF2ExxJWNPWWfcyv1wg/MqIWdG0PdAeWZuSy9h?=
 =?us-ascii?Q?8ekveHHjD8IZG+OdKv7ZhHR1zWKLoAmU1McgKU+nGmpl27UHWCkztvvdQ+q0?=
 =?us-ascii?Q?NDYApIsSLd3xPkjyeq3TYjNdob5NyZFvRrNfloPa8P5nwInnGVmJhglxF1fg?=
 =?us-ascii?Q?XJMHuN8AhWaaXTM4MsEzLiLAWDB7ord116ZD61h7F4NgNXnAeUT/ydLe/weh?=
 =?us-ascii?Q?j87HIuE8gSDK9Z0n9OZDFhpOM0mHCfMGof7SUwH8Tp5s3sHbZHwf2jMszFp8?=
 =?us-ascii?Q?pNyVlCuWEmIqqImCbr7enWIfwRuMAFs+oxf6jqWMsN/B6Lv2ksOhiEDXYas5?=
 =?us-ascii?Q?pPsjLoPzuDA56ByXaBZDEuyw5CJrQe6lramm/xqsEKwoweMwO616+VfHURvH?=
 =?us-ascii?Q?F0Axap1KLoJbT4UqnBOJslNSE8OaV4WWWcJZAzMrQdTZYi/JkE6V9fH6XXHJ?=
 =?us-ascii?Q?2dhDSUtEI6bYLrVPvN7IG0pei2PrPA8KJhuf3ruv+quEZeis+lvo1GCQUuuq?=
 =?us-ascii?Q?R/TZLm3GaG2ICeh0G0msvM6bc9XTJjyL4L/Yflclm6go+BR56BRa6ly5HZmL?=
 =?us-ascii?Q?dSksLBSWmxTVbhKNbBwYUjx8/dI7FZGeJnzSYYSeRswCSqjfrJ5LrzWCkk5S?=
 =?us-ascii?Q?KGzRRPj2aGVgx0IKVUJJitvvxWZKgbpgKi8Xa8MkOjAoyeZYK55q3pFSTmr0?=
 =?us-ascii?Q?/wZBIA4XIjrPPr/g0WoQvXaa1i/e9yDhE8F0817OnpXjTlG+hp/oWhNGaKzr?=
 =?us-ascii?Q?iuQZvVDStBz5rL7GuxuEDaW/GZXQ/pfUyoi2VcR9iKaoE8tzKpp0PHf8ck0B?=
 =?us-ascii?Q?2vF/cfb4KlmCXSkmJM9/tCLrWXwZuoWAHWk9bAvxMIWcxP7mAHNIbAaEtQHj?=
 =?us-ascii?Q?tapr/Cly7INowRHYvpp1ks3K9DwJgDdSqpQxZZ9c3CHwM0NjnKaOOaBXBHze?=
 =?us-ascii?Q?LY4GyC7yodrKvuGcwBebKtlZZ2TpujpnXTbC8hJA4avGinCJq01td3gEP0qV?=
 =?us-ascii?Q?tRW60HWmAHnqSIq9exHqfe29iaob1jSf4FfWllLoxeqLZkOdzuQw9pyrS9UG?=
 =?us-ascii?Q?RkDz7G87Yx+Kfnfv0Bu4SLe32ivfDabqZyiHB5mnIE8bj4xpEv/9p3bsHIUM?=
 =?us-ascii?Q?YZ1AT8vnP3wOlH2sKx0q0uDm?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 484fc976-6909-46ee-33fc-08d932247eba
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:17.9414
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UzvfX6EPMNkBMZ2TyS8Dtlz5JQNREirsnfdpChIXhmUha8JnzVWnMYDN8DbLsDeseRs5wvFfTGZ1TNAhgGrOIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4940
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v2 changes:
   no
---
 Documentation/devicetree/bindings/gpio/gpio-vf610.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
index 19738a457a58..e1359391d3a4 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
@@ -24,6 +24,9 @@ properties:
       - items:
           - const: fsl,imx7ulp-gpio
           - const: fsl,vf610-gpio
+      - items:
+          - const: fsl,imx8ulp-gpio
+          - const: fsl,imx7ulp-gpio
 
   reg:
     description: The first reg tuple represents the PORT module, the second tuple
-- 
2.26.2

