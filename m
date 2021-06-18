Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 751C73AC419
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232427AbhFRGq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:57 -0400
Received: from mail-eopbgr40087.outbound.protection.outlook.com ([40.107.4.87]:36366
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232519AbhFRGq5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:57 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BwaaA0FuzksLdVeSKKm+T2NTxo4pjmihor0vcx6FZ7+Pjv4o394Cj9FlOF8nohASLguzBji91gg61IZtSorfNz75TVK0i9e1Zkas5rFJSA3nAgWbiCg/XQZ4YJKDRjFvu8Bc7QsCOCBAfRV4q4vAZfKSZ60EvuhnqaRvk5v5PLoTqwWFTqgek+4EwfBG0LtzJEs5NRctfKngwocZM8ylZbtmcqsusZs2VKwpp2lJXIIzbBRJ9hSW99HMR7A9IzBeBNDdYQEpXvyvYhiYbheTdjJTMXLmcgKtAmgF+F7k8VyZLwiVNo0e8QBrN7uxG501w8qAOWvXjCAeno42Jm/9Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vKVYBake9Pn3QOo9ejliBdcEJ37P+8d/YFZoRN79FYk=;
 b=DE8NWVDVHsWmDhAq338zKeQKsL3AjoYaCQ3dk1rdZaCjB5j9giE9axW1Dh/o1lck4oK2tKWcxPHvxD3ngr/A5Yt73aDSchBH9n/UcYNZfrLWpZM1oIFKfsafsFwL/qh+TqAnJtYD22QDWB0CAnaXYW1eEDmdW/OIEJEnjK8rJSeeP7imfwhRjzEzKT03XL0T8HBTwjdIF3TG7Bml5Iy6ms6JdWEPmGXdZKhZzcD5R0mqO65t/X1OaRXKM+iOgpVV38bRPAL3FAterKUr/kiQWQprGf/iAMYplDyYXD48KIjM4F7+LHL6cUswTmTF4uHijcKhZSkh/bhUJy4bBl0lcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vKVYBake9Pn3QOo9ejliBdcEJ37P+8d/YFZoRN79FYk=;
 b=gJz6qsp+ukqMUVnfnLSQSlwpieqBcriNrC9/jx0vaXgK+5J05b6wWOH/CLCFlBYDEJX44l/G30ou9bT5VdHDvJvowSojSIzC8GxJ9jcD8MdOpHUikeq5HaPtLprduipYwBzEjP9cnA01IyjzoB5EDN44z1h1VHQ4Sr4gWLzAiuQ=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8140.eurprd04.prod.outlook.com (2603:10a6:10:249::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15; Fri, 18 Jun
 2021 06:44:46 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:46 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 07/11] dt-bindings: watchdog: imx7ulp-wdt: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:19 +0800
Message-Id: <20210618065423.3424938-8-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 59cfb953-5350-4118-05ae-08d932248fe4
X-MS-TrafficTypeDiagnostic: DB9PR04MB8140:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR04MB81409D615591278CD5143851870D9@DB9PR04MB8140.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EBzPMzQKqvu1c6mppjirseaJXPRbdElEzjgl6WMktv31VlgOZSVQ9ljEDYnlMjqziMm2iiLfwzzC7zeXaPJyhQoPHUHaqPAkKN66nLtuVqsCTrkxlYLD1PF3saSM1Pz9CuBuO7Kd46wbSfidJsPB5wsdMA2QTLKApLBPJZ6QGvosemPYW3AnZHS8F90hX2xuoe9+UIX65tBfmCOlKQm8hi6J0MksK1RYGjelsnjTU8vczhIfsbvgt5zEI6rTQDjRLhcaw3fEjE0aB60ZBHRSEIUW+pfP18Y/i8A8lQis3NV6XwzDt1vd9WseCR1yQS5uty0bdxpKKnD0/PiUp2Z2B3uZKQj6oh+wzIzQpbBkEPzoSj0AHsMwesbr9ydOg3r5V6vfLUoDKPvwBLtjlep05YSXEToXD2gLUNlC4+I6A75dvToUv5zDk3RcQnUXGCNXC1INYqrxNBQ2LzE9tOx01qXqrJGGVAzm0wjKKlyL4LbMFeAlWUASJa51QVbUXRs0iYz2cQnBrWmgUkvZ/psASSZnxgb1SPNrTBSbKVzJe/ya7yFAu4AUowsc4Xixl67ounUIgYexb+cVaBoAyvFCHWN+QBhYz/kPlgvJFUTBNsjMrZZ0gr5UOki8BSzOXNY22s5UvPu0UpYAB7kIA1QyOPU6MO6tT0sYSQAhHuScwlgFZm2LZBLiHFsFtZsFNp9BpiiJMXcg5wlBzCmNjY1pQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(6666004)(6506007)(316002)(66476007)(86362001)(186003)(4744005)(66556008)(26005)(1076003)(8936002)(16526019)(6486002)(83380400001)(66946007)(8676002)(36756003)(6512007)(5660300002)(2906002)(956004)(2616005)(52116002)(478600001)(4326008)(6636002)(38100700002)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MX7f9gLtttEewqcHIjBpZeLess5osuiU6LQxvnAPJedxZib5sGWW9Nt28Fj0?=
 =?us-ascii?Q?jyMkboOS1/UI2wvT3NaG27zlMPu/upUzyH4F3nx1YbDieQPtHk2jPrKLi7Fl?=
 =?us-ascii?Q?vYNUX0zzxmofDqYI1kTuJrh/4cLoEABp4MkjSGjgZ0lRZOX++uNmo1TL0MWs?=
 =?us-ascii?Q?ROcB64MrgISnCK65B+ol2x1Hia6HD0BOqkDulXPEYkQRgrGHpK1ReVw34gzA?=
 =?us-ascii?Q?ct7uRW9dH5DMspIR9hc6QdVemC8wUrbQavGD/fNh2fN3ijbulx/eNK9Jjmky?=
 =?us-ascii?Q?ppVhwRLr7y2VplYVQYQQKSrloCo91J934WIfq1ygR6e8nCGSE38dLmprNk63?=
 =?us-ascii?Q?udQ1LhFPOCRer1ZKZ8PQWO7INxKyJ0dcXR6GW1zqbqnRaU8HtQttEULeg/5Y?=
 =?us-ascii?Q?0D1MNr74KK3Mk0XVqy5OHGimTCtJFzVxRazX+YlviWmyEJnJMTsX8VLtqSx2?=
 =?us-ascii?Q?t6zEFYJH3pgBG/Jg/GS6VxYYzbsIy/7dIp136MZbAgnxjMNrEGZpmXO8RmNg?=
 =?us-ascii?Q?JlKi62kAeE8f6fcNKure9aZFJJERR9EE2X5+sL7PUHOvKpwGODIIwPPJDNqL?=
 =?us-ascii?Q?p9CH2bC1NppKkLOn5xqmsShl4DOPkBmhWFmjdrViDNjolImQVQE3BIvJT35f?=
 =?us-ascii?Q?7Q6yOfwBu0O/yxZyei1ywl47EqjTTLZU4MKw6+N2r+PfaO8a+ohTddcI8Cy6?=
 =?us-ascii?Q?+Pe+hH4/nYgp3NuqXmi+LqceRNbg+jtSkc13pdq+jTxLBKHVT2qq0Q2mud9c?=
 =?us-ascii?Q?WP4Lb/foru4ln/dBa3DtFQOxFAUDCYhR+XzvWvxMTdR1bXTGMgqco9iVCckz?=
 =?us-ascii?Q?2PWxEJmpI06JoCB7q6bLhEHNmzndNQtEqjsPu6AuWnm+m+yFmfBr3PdynyfE?=
 =?us-ascii?Q?3GenSuNWk4EdlscmkgCLdqY01/cYCHae3hFgHVemUwe7q298xkHMx871yT6N?=
 =?us-ascii?Q?GnAkYC7wUi+Ieyvu2VRM0R6u1S3PJJxxrF9klTxs5IqRCkmVyXnJFaveQpk/?=
 =?us-ascii?Q?iQ2fQb9W2oVbScK6N38ykf8nT4T2bmVzTI5EqrockII+YmJpDcSeloI4ZCnK?=
 =?us-ascii?Q?US65rZ1xSD2bDsCpMuvPPaj7Qb7XZSUujmg5LbFy7ciW1QZ8NqbCSm2+ZuXx?=
 =?us-ascii?Q?ySNK9M7v8EoewjU0VcI2CunTuueevbxDjVGLoIuh9Wc3Q7cNTytPVb4+cSai?=
 =?us-ascii?Q?DKthBorNOE2nKmTvnfIPPLJtv/yWTLO0curdDFuirFYc/u0ybLoVpReAUynk?=
 =?us-ascii?Q?BrNvygs6MBdO9kMDEF31jEvsLlASZwFUFCNAxTh3h3rx92VSwAU1WPAE3TNA?=
 =?us-ascii?Q?T9EN3gS3PrKm82bwYT52V98r?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59cfb953-5350-4118-05ae-08d932248fe4
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:46.6820
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vj3l2WLrTAiijj8ql5eTPA+3JRR5UyQfWTjrFHmlfT1lMrnd44OdGldId+AzTerq+agHXzFxGvMYlk98pnwDMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8140
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The wdog on i.MX8ULP is derived from i.MX7ULP, it uses two compatible
strings, so update the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
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

