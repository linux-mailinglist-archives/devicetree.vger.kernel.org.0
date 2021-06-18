Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66ABA3AC416
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232564AbhFRGqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:43 -0400
Received: from mail-eopbgr60045.outbound.protection.outlook.com ([40.107.6.45]:15591
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232499AbhFRGqm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SM4I+c/MaTODRNcpVADVMRgM8QRBEnAbJJO0AAaxJhM3NvwkcL/APotMA3hZ5y+74gY8V8IFwToWKWuhicxUIsROv9H8KlpWTjbzwVGsKpxza1hVDf+I1nbr5Nz70q0kXOD4fHm6JfdkM/Zlgiw22DJM0B3r89IuZ8Z7f8kAMh6b70a5utSCi2ez7wE2IeMlOkBJS/s1t2hBL0dnmCuX12KoZGSQsHPaHILsA61t4l+3K8douwqQLrvtFttW8Zki1Wos3eIwddNLIlciSCCl9GnLI5bBou+M5sFeP9yWRaJ2NcdixPekK6ip4YwICgAd2eYzsxKZfcqXvXF5CSCsWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XSC8+mN7fWip2W91RE99GzbpZZjoyXDkN8T4tBIE1Q=;
 b=CxvI+DVea0woXy4w/6JiW5Vb35+kl7a7hiUI6aYcYsUI9ssC7Nqp1GUADaWe8a3pTaERIQtdl2qVX3RKBF3+ktgTErwzHjImsbjKEbkqe29iK+h4/7A0XfM8StbuE08v8mH4XUIZ4uDS2/2pZOSUBWMqY7lOdyK2WHFxwFZJHqP3aeklMKAVgX8q1DUvWw1lrllQkhQLcs99YqKy6mdSouQXSElGm8Lt3f/WcAOzr+5YS2xL/poGGZlxziqsL9Pf50wzcay5/i5/CUWemMYdE4kO7RPVefiLapOWeeY6MLVJqYVxPxrET2GU5VneJ3PJKrLaB/k4XlKHnikOiyZvbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XSC8+mN7fWip2W91RE99GzbpZZjoyXDkN8T4tBIE1Q=;
 b=iLhB+DPqwLxfiABgfW4a28QDUxTYKcZjJACr+aa6b4SFHkVhMsx/8REZSa0eK1/XLZucJDX8RiNwC92d546p3D1RmDIgfjAzutMdfXdSr+2RCLpWsA7DUyDNDDQXSnID0G91MeH87HsO+bXOO5syEuuEg93MEvcz1jHIP51f7AE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4940.eurprd04.prod.outlook.com (2603:10a6:10:22::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 06:44:32 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:32 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/11] dt-bindings: serial: fsl-lpuart: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:16 +0800
Message-Id: <20210618065423.3424938-5-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1009c2d-cc1b-4503-eff8-08d93224875c
X-MS-TrafficTypeDiagnostic: DB7PR04MB4940:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB49409CFB05CCD6338316D2CA870D9@DB7PR04MB4940.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UVY/KivVAX0jeWinVjHDXOwHOHhBcQOFU4425zSzn8xdo0GA7Htr+pgqGwWTLcCX/MgrIyjBOJETwU9SyyrXn5cC6GJvIGmJT5Hypnpe6ycZo4HpL/neXEbsrAElUDnNrsvmP2k/bwWxQEajRkCjknTSWPdPP4lrNbpEEBwpYkic4wKbdneW3lduiqTCo/PeQekd/8mDCgH9Rg92uqMkjeCspPsbmakSohZED2AUYT46je9olbBugQay4ptyhRYrRXBqDHDp3TKy6OVlBcBXbxaGktYh4ose4i1zsMRJgE86wkFyqkJQ6SwiwbCdP/B3NDsN+81kDIgSRVcvixv7lpb+J0ifgqK53lV270EvDAHJM89DqDmcJcIeL7G2/qFDZ9Nuwu4LrYOc2XKHiugkvgdIncPAL/KB/KaZAwwlVMc+sKvO+qLm9On3h1c42111mh3JBMCVRf5eXn18UjZxIyuLLsPwByLN0co7Ym1WwAN+5utJnsWS+oe9O738gkKThJ6JmjaBOLvv+JorsXhD0xWsN4+NYxLWel2lTzU9e2BkV+BXzUSxDlcUcMfdZFAczIjcZ2aWRJRFejnJJiMToBiC6N4n4tJv348UqcH+3DjKVBx6mCDXo3+rvPPs1X5BDXQRf6iY8AY/HcQyiuv1ZNydNM/3vwbHKXXrt2/M1Zjs9Gp+4rAavzb6TmDwduTW7e2/1xZPDo7aZ7q08oCqBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(5660300002)(86362001)(6666004)(38350700002)(1076003)(52116002)(6636002)(6486002)(316002)(6506007)(38100700002)(2906002)(478600001)(8676002)(26005)(6512007)(36756003)(4326008)(8936002)(66946007)(66476007)(956004)(186003)(16526019)(66556008)(4744005)(2616005)(83380400001)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X9rgQGEKTAz26fGsSaZTiSjmtMGKZdbl9L+7Ev2M60caEpqAOjkrW/xBicXG?=
 =?us-ascii?Q?a4hf2uDRP+c5OXOyK2mErDynp+RaKVXVOHTlhosYQW1vyEUp5Zmig7kKVW6A?=
 =?us-ascii?Q?OjQBxByw2eWvMTvbf4YlUcMH04uWu2YQlfdZ1IDUrY6hcjnluVWKl+QrMWoG?=
 =?us-ascii?Q?9XVTso7IX2iif5As0q1KQuV/kzNPdGyXhPRQo3L1euZv2WorS+yrqOzmPbuC?=
 =?us-ascii?Q?MjfGqhh1V+o/Dd8YbrWoqSn7KuhkSNcWeJHCQjGKgkI0J2ro92Drd92YTGhk?=
 =?us-ascii?Q?QGmOI3l9qM2kC31iCfb0z9Gr7vRwzpwobJPosaeCWcoz6O7NzT87VPmNeScM?=
 =?us-ascii?Q?RTFrQ8IdRnXeLi+KAX8H3fEVo8SqWB8/vf2KFQA7aYk+IHCfje259x1mr2/s?=
 =?us-ascii?Q?L0ji66F54Cpk4qPNqFfr7vlH9+5BZq6qBKDF2A+PwDXnHqPdYf5hLsBWNRKL?=
 =?us-ascii?Q?LB0BGKa6t3OUyerpaRrlUnVzg83n/gAXHnKU42Yc2GO8md3KtN6H9uQLQMTd?=
 =?us-ascii?Q?6Qy7X5QkqzH6562e6M+kBrzUwrdHVworJuKssiFbY5aMwmndXSm4db0BcPJ1?=
 =?us-ascii?Q?yzpynfCvv8Uz4gbMMgX2NuK/xYvLJEvOzaid9A8ZWmQFySFEU3VHeh1cC3dI?=
 =?us-ascii?Q?QoEotMN08mhvEDTF/QPbzVIO4uF9yPHvXLrv596Q/Of+b4/YyZM1lHuq6ZOX?=
 =?us-ascii?Q?xelGXpb8KO22J+eKQNhcKcGAI7xzECWFXwj5LLlidxwqbKD792vAYBe4VJZF?=
 =?us-ascii?Q?b8zQUICo4BQFvhhdVrlkJa9OUQ9DVDhe2fnwRXyD3yiJjkO6U39QYSddCXN4?=
 =?us-ascii?Q?hG+tAjHTdYbhIchn/9XXkEh7LFJkjD5prqQSCRnjnFihiLY8hjbWs/b4Gb6i?=
 =?us-ascii?Q?4knjA5SoiUhSlFkgoChdURL9wqGkIFqisqqp1HN8x+Q4Bp/kuamNh8Xvd+6Z?=
 =?us-ascii?Q?/EQZDorXyYdQxi6ZMeed2NSxB+8mvmuIM8RTxPBDKpa7YTu2LitQ3RRwDky0?=
 =?us-ascii?Q?wLQ9Uk37jShjF/0mCAzdxXl0c3oTgSOTyHaG5BgWzF46zhzkp3M3kWsTHCnU?=
 =?us-ascii?Q?o3yhlgoCffomi91ABzYb2gz0AaStrC/apF3tuEcIx7gdk4fCGnqU/nq0ZBuK?=
 =?us-ascii?Q?q2aP2Siiw+BGlMvS30AXYmAYksbtEc2jjLIL74eQDUCn40jU1P+jqpejr66l?=
 =?us-ascii?Q?oGbo5nePAEbqtsCNSUuIlRr3nU9dyurtR4BVKdhXmR21WcywOGfHuqVs/U6r?=
 =?us-ascii?Q?85cr7eobd1gx6bm/EMoUV6A6xQNnQ5pznINtxeaievrSvy3NKVaeFi/rVYrc?=
 =?us-ascii?Q?gHt4RoB+AWx+WYvDEqDrj6mI?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1009c2d-cc1b-4503-eff8-08d93224875c
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:32.3620
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y4UVIMhagH8hTxPRsdJ1JT0NN2FeWxKlZISTIeQvWyr52SzuzNc2U21+D7/gQ8UvfcN/l2vCpfDx3fZXhX4/ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4940
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The lpuart on i.MX8ULP is derived from i.MX7ULP, it uses two compatible
strings, so update the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v2 changes:
   refine the commit messages
---
 Documentation/devicetree/bindings/serial/fsl-lpuart.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml b/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
index bd21060d26e0..5d3fde5d4d2b 100644
--- a/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
+++ b/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
@@ -22,7 +22,9 @@ properties:
           - fsl,imx7ulp-lpuart
           - fsl,imx8qm-lpuart
       - items:
-          - const: fsl,imx8qxp-lpuart
+          - enum:
+              - fsl,imx8qxp-lpuart
+              - fsl,imx8ulp-lpuart
           - const: fsl,imx7ulp-lpuart
 
   reg:
-- 
2.26.2

