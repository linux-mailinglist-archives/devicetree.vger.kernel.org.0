Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C26B3B3A54
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:03:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232729AbhFYBGS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:18 -0400
Received: from mail-am6eur05on2057.outbound.protection.outlook.com ([40.107.22.57]:32832
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229643AbhFYBGR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h9dojvYhNriPv7Gw2rzshFS5OHc5QAJvLM0/oWF7bYRWfYXCyAjYaH5Q6B8aED3WEzO5YP/2O/LksOxlu/fVTu098NeAGG4ERtT4hH7VViTAzcDfkKdR5XNsXYiivOzuF54qx0yCpCerRFkGaerrErHxQyMQfA0V2JfJobxE0UdcC1cFPFMRtlmsu6PVjvET6GOmm2SY9C82Uzdcy+u5m6bLrZMeUEfr82EuB16ycg5Nr8Oo0egxjEFD7gyPAgXjXsDexnm5wB9CjM05QMRmUqLQoceql6zYybEr5XEhqdhdl8rRVUMdsjTF1kBxzGSBSwusLYLNLYsSzFceRiE9JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tiRsSGXF5ifVHS37+cfGuHeJr2gVOJSNyM4SF4WLUeY=;
 b=XQz9HLwM9QPOO/HSTr3pWqf4sVbcGsmU9noOZX4OBjpOHuuiVte3GoNWk+PPSmQA7u3SMCLwF288sej/+pgiP53ErtY9XBgyFZXwWXFVcchCC6dYvy75CMbCL6hcdu/XsW0wlCd3tnJvO4XUxuR7zMuBeDrCxJBS8Rkza3RkZZn/m44bjUUEt++opDkffgQ+eKgxX3ys+YveZb54TBFmP7KXx0RRCaQ/rHmg5Q3kWH4PaK6GPCon9ytIALJx6BwBDr6bEHMStjWKtz+8+jrWXdASu3hIWx7CKAqmb2xedBXsxl3p+JHlLLBuKb7FgqEjH5JnrsEn0AwD1PSomCWCXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tiRsSGXF5ifVHS37+cfGuHeJr2gVOJSNyM4SF4WLUeY=;
 b=oo5dnPnhTySuI65WsrBvWD1kbM0X9iVdPoCZDna0IWi0fBSGYURYsHT4f36b0wiOII14F0zNusmo4OniXvyN2o0b4SOyHmsrZaewfS/xHBHIfPaBNw9AvUbZoBCtrjmBIEP4rYSoid7whoQDIZtiU+W3c0eguRu14ZH/MmJ/B2s=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:03:55 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:03:55 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 02/11] dt-bindings: i2c: imx-lpi2c: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:46 +0800
Message-Id: <20210625011355.3468586-3-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:03:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2421f25a-6f3f-4fd6-c6c1-08d937751a94
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB5468B8C0EBD90D75D6035B0E87069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +9f59yVs38NNkcCx5Pbhdxp5uwS5g/Ke+r8tlS+AhR4Bb+THOPzfGBOo9dQlla9O207OLsTxIPlowhlyxJPvFYCujb5ACiAcy+Pf8zzy1Nh1AkI/01H2Sfn48Uu2zS/+6s2f+rl43cI/wnhZssq5aewXuI8ENoCQR2CSUFD7Et7TqcxbWIvHYsI4JdqsB3YYbZcjYslzxrg8Y2tKixyv4+/86onu93tF1dwG703QUuBCWcXyDyr1dM65444hRhIRAs5zYC8YVkHjHaxVTbcWXu89gTa9IYjSU5gqQ+hQfq6YZlrm0gbE19ueWGRYFCC/nuVPhhEN4ThFS68jKiH1x5DfqventTM+jww9kHiRj7CNPmMwWB6Q1hRm1BjgWIYl7uL8uvKq2AhthET2hHuNVnDUVNlU/wGXmFrKCW5bm4xMuPfhEiMNsl2GtG99E51T1TIQbN55CDPV1r2nYjYGMI1Gg3xru4g6S36g6vljQRj3WYhs+vwrWmPIVF2W9HhctLrhCg8Dvf26fGu7pMHhWNLWMITk0HL7X5lcrAJu3xbowrqdDUkDyudyj7qkiP6LFnXkwQhksygHUwLRXPBGPMT/+R8n4tyRSw0X8g/1L0ghkAFKNJb0MOmhCRFcZWR1rQ/06MNr7P3n2m5Ak3Vfj+X42YeG+kM7C4PD4eew5a+xMxUaiI+sttbT9hvl7Wn4l/AuGej1IugYZupRQDqPKJyIC4J9qZF/Z0VQjpm992u5R7HQ+ZBYJdWyX8odx7cROq4+4DpSiJCyo80G23rsEQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(4744005)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vxbrYyd0ezojDhCUAXIKzMwQQTUtZUiCWDBA8mlNifKp3omWONppwIWWq87T?=
 =?us-ascii?Q?Xd8JGOG8zFplAIOFt+U2dAsIKGZlPeXu8+vach/6e/DDMOq7FgLfY1pB0bUD?=
 =?us-ascii?Q?ouanWW83df1hfLzFt+tlM0mqzHtRlrBBuemmY8XmBcY8tWYVN+pOpHbpMxMi?=
 =?us-ascii?Q?BrQ8HvLXsnWLIR4lT345A55G0YsHWJvxvIzeoz9kIumZ3aViLU3/TZJzUZ7p?=
 =?us-ascii?Q?jEZFdqpSIb51Pzj45mv/e01RHNmOsaab3+W70mb6mVGfjyTm5xJwqf9Ul1Yv?=
 =?us-ascii?Q?65o//YEGLRps7Dk8gnhjSh8Vws62PeNWgDxU1eK5ikKwGEJzKel2w6nIp5dd?=
 =?us-ascii?Q?pfVvFeg7mMH1DRBOSfXrsbPMQ2r641/asxsBX8BN3EGe0PcjkeaWAZ9MdSLR?=
 =?us-ascii?Q?V4nyEaccwYudj/sHlVt+Q3C3mkxI97aJA7aa6lTPWFwv99+ei2Q48xyMkAMr?=
 =?us-ascii?Q?3Oln1gdPRPVA/778BQDtirmRW6lKr8YmZS79ki/ZZt80ZHuVMkKDr6/xGU0z?=
 =?us-ascii?Q?Wk6i44zrrRssOd5EdwuKTMGLyR5yNjlGnclpnc4vajsW+07OWeu6iTo615cn?=
 =?us-ascii?Q?kBD53DPCqGvDGH06iZtsr4dqv9vR4wHQ/blBE2G/wb4vi0NfgWx4ZxIwTU/R?=
 =?us-ascii?Q?JCxaAk3Q6GZp7QTJzAiYsn3kMcIZXU9XrbTBrcrWJKmllJFxpAZcz6r8yWGk?=
 =?us-ascii?Q?Cml5fkFUaRnHsFWYn4NN8IIA6g0u6wu+kIXgUhLWf5D0Lvff25OAuWBbgoeo?=
 =?us-ascii?Q?TqON3B9Y8mKNTmTa0c8M5vTieOJF/SHZcrIFfZL/7F4z9WyL3MHI8HTsnxch?=
 =?us-ascii?Q?0wf72zAxlHLHzMBVjwL4rk/5deItIlqbDKSjRNGRrHzVaMKfCFhikEDXSF2k?=
 =?us-ascii?Q?nR3kcCMa4l3nNV82I/WNocSM4L07DOml4vth1alhvKrGJQLp+BR6lweO/Y/X?=
 =?us-ascii?Q?EXYk76sH/LRTmzgSiSVA0FCc7bCtnXSUjCCZVn82ZAS0Yjut8qzrpdIVrqeW?=
 =?us-ascii?Q?INXbZW5KFRj0eRCChJRG40Ft2rIwwwTMfz7gyqALwJZmzCmBGOa/owjPdlxX?=
 =?us-ascii?Q?W8FInQ22yNkZDWsDakbVtkt5aEN1ENhNYgGc3cd/mXMLO6QnzFmEGu4GHvK3?=
 =?us-ascii?Q?hv2UKHAmxBlYtGvn8adCEFDQzNZgtxuaOJ6GxYE32HZQRW0BfS5RBRsZXGza?=
 =?us-ascii?Q?3RAggKFpjPcsYUqfwCYNiSztA7G0b58T+6uBdl1a/+80Cke+jfnihZ7iLxq0?=
 =?us-ascii?Q?qBvulhjN9luDEHkkgQlDn1ROiBhivfwxo52NM9qzMGUprPwGazdnRdT/NcXG?=
 =?us-ascii?Q?whbSuGiZLEbwoprzsy6K8cn8?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2421f25a-6f3f-4fd6-c6c1-08d937751a94
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:03:54.9192
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7khRNzSSzam+vhL5TUAmwRdjcqMa8fkqWeIxHAQG0YHjc3QRMZVp2aw0yDp5AH4glEa1GgyeSWqHQhAiX5C+0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   no
---
 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
index 29b9447f3b84..0875753c7d15 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
@@ -19,7 +19,9 @@ properties:
           - fsl,imx7ulp-lpi2c
           - fsl,imx8qm-lpi2c
       - items:
-          - const: fsl,imx8qxp-lpi2c
+          - enum:
+              - fsl,imx8qxp-lpi2c
+              - fsl,imx8ulp-lpi2c
           - const: fsl,imx7ulp-lpi2c
 
   reg:
-- 
2.26.2

