Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC3A3AC417
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232499AbhFRGqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:48 -0400
Received: from mail-eopbgr80057.outbound.protection.outlook.com ([40.107.8.57]:37630
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232427AbhFRGqr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KaRV6LYSe9fVqE/KUo5t7CzN5Ww8bA2QX2IryWgwBMkmMCo1s1dWZj0KedBMIsmxDAsFhn6v+X/9FUqlocYJskPlwuiKtWaqo9c5RS0K2izumgX88NJwnIQF5deWGw2d5PJl32gljEwBzTNudjsHrPl52X1auEIp5ZHsgBhQ8iTDvXAFVaJ2DdcEATA1WgCJ7Dw9qBfYxRiMAzFU2WqlVYELz2FoSSp0w72zBx7GSDQFbN/XK5dGfHmyig/B2Okdo/vTIIo3RcuoDzPZlaSK46mNq/NTE3szfaQUpH9t3XSz/baXI9WliEIg0NGNmgt29b2dPGMY/GvqOjJNHAerDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=09QinZ+sf7RxIZFM13XNU/auWGPDIGT7ky8jPz7jHRQ=;
 b=kUf5BZegi8Mv1INsfuVYRUX2eYCOarWvfXoxeIRSHc0XuokmBV3BYRlJRfMkfxnHYIpdsbWO6qmoxW2GXataMY3e1sPggQcMhx3M3FhndGP5uoG9ZaMp/eSvR81KId29qZHkHNBz7hNnRU/aFOXFHiBF7azZO7Fox9IXs4lA/lB4V5eKrsWERnPOB2QcAia6JG7Qv+vk39VJhpUzXm73/wJfSNC/giiJdBqtignaf19dDdEmKjg5x+BBcdDh5U1iv/d05nOnPq+Qwhqu1/78Xb116YZtIXbwfjEUV9C9ni7NZxMvYCZohaGcdPX61A+SZc7rJrvYVz+2Gg2AwK/+aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=09QinZ+sf7RxIZFM13XNU/auWGPDIGT7ky8jPz7jHRQ=;
 b=WPSVpOr+XKUkb3m14YWPvByjJGUS6heNUA3sXhZGDLloPYYpYNqhp800RoEl3fqWD8LwPF8CpSbqcDMZjykBToBih6PWJFf2OLSCL9zofQyMqW8Ko1OKjuK6HGSUPA96S6G5E0fkCDZDHtCRBuHwH1unO2Gxm9Oyt+MgA6XwxgM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4940.eurprd04.prod.outlook.com (2603:10a6:10:22::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 06:44:37 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:37 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/11] dt-bindings: spi: fsl-lpspi: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:17 +0800
Message-Id: <20210618065423.3424938-6-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25066de4-a16c-42ce-c85f-08d932248a28
X-MS-TrafficTypeDiagnostic: DB7PR04MB4940:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB494022DF2698B714AE2272AF870D9@DB7PR04MB4940.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r8p37VnlcjN67x8pOuv12LpywJwt4oCrISppdDHqRKWYHqde5xxAOufAHiOsQsByy1mQUEYiN6Gmg/p0zLwjskLbT7iItUdfHnBNFGUUst3oTeFAgWDvMohkPPcQdmWkFWrT5s4FajfjGdIIMCHzrr49aJ7TCeL7fLa4l5PxCGxVFtWvoBNmTfU3aGW+OKPaoWRKAYxkylDbc5FOF4A/W+TGpRudTEU+YchL1kgLKgxc8veHi7J9TqJQBqFBn2qktmkWlwqSdYnEENuqVo34nVfFv/ZfNfBChFO4W/0zv4fYSGRm6/t92XPnYK60sKR8o9nj747l4GVkzuK4GZf1mOVQ8VbhAp14D8IrDWI6P70r650E+i+3xORlUJ0WHJwksbXiDFr1a+z7GgLDQRqmbunL9ws9BPbGh9EWmKem09/PiC64y5B8GiDwt7E/cfvxFn9TVT+iJu9CvCVk5sDXPYkXBoB6fKIRWchLUU31gRhMFiaiDUYwnnJNHnSiN37bu+6tRIyMcBycr+aOLvnFOi6GFNiFAMrAw3jz65/JzMIOHheKISyrkR+2Ms+r+daF/OYvejfvDoUbNv3ldYR6SieIbO9u51/N+jFKTo7OSD0StXE9x0EWY78mSj9sw60qIIMLcsefbSYISLMQEVXfpT4WEwzkvPpuvSYTUin35Tiifur+k6CuVZ72BeX+7w9ojEL/FwXXsmqU6eoNAs1imw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(5660300002)(86362001)(6666004)(38350700002)(1076003)(52116002)(6636002)(6486002)(316002)(6506007)(38100700002)(2906002)(478600001)(8676002)(26005)(6512007)(36756003)(4326008)(8936002)(66946007)(66476007)(956004)(186003)(16526019)(66556008)(4744005)(2616005)(83380400001)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?48N5BBAarivw9MeCVcVHH4B8lBmxAVUc454NRqA0XxYkpg2Gq8eOW6uUbenY?=
 =?us-ascii?Q?OlrOOp+4f5GjSDzccHMzP3oivAkg86BMEsiC/IDHF+LXcvjq/8P/argQR0bR?=
 =?us-ascii?Q?O+F7SjC1t3EMauSiMpA1mKNy/BCjvn1HdDMAxH6GzQPTX7RiticeTKFrHeY+?=
 =?us-ascii?Q?/kmmJf5EJXsYvZEI5q9e9GambdTu5ENgpCBYkbtIHnp1x8lViWoy4tXx8ZtH?=
 =?us-ascii?Q?Rm5pyVVBqgafF5z4LQkhlQsjpmrsRTqXY8yZ0DRA4NbfwBnjGFgN3WbQ0ye2?=
 =?us-ascii?Q?fEry2yaKXsys68zBj4n1Gn0o5CWyyrSbrG/tq96yOV6Wy+nVodgOFLD167dR?=
 =?us-ascii?Q?VLE+M5o4hvZ4olHkGDSiS7Ri7rNpcIcWS6uL9tEHiOkoB+e3N71xR91g1mdm?=
 =?us-ascii?Q?f2891yPJUskbBeyisLQSOCSpR6We2nWX9W5R84NNX1MWemdIkGQs4xgZbMKw?=
 =?us-ascii?Q?D0Pu/AmJ26PIR6ixjYy9j1yX4X7T6vnDJEH8zxIvFtEwH9HDeLY4rTggYrLo?=
 =?us-ascii?Q?5tde2c6cFdtM9G5UFKlIiXzQjjHaeggHxHs0jXz0DM2UiWaxMXGMaRsfdntg?=
 =?us-ascii?Q?62cKWnShLpARfR7NWRunJKVqzkrj+Pk5lp3nzVYgazkPPSBHNljUuP/raYOn?=
 =?us-ascii?Q?ra4BL36YWV+b8G3fl5QzwooUK7dWDhGEXINTeVf2aDtETCInvagZBW+m/jns?=
 =?us-ascii?Q?sgimtpGL7sVqCgAr3KmlAJb1rgVk2bKnsFVg8c9lb7VIA1yWrloT3h75CaC5?=
 =?us-ascii?Q?N3WcnOf7xd614EpcIU7wkHFwDc41/qLa91HHCh4hjX2/KjLj+uOqzwb2nPIP?=
 =?us-ascii?Q?47vJjdSMHM7BceNfH22y0YrlTbsdcvNr81DxqXPrK88vqX8P6wGvv7ekermI?=
 =?us-ascii?Q?TKFa6XUI1YMFwLWEV+9S4vywk5zLT718TFif8k+FXxYdwhoFF5GNJ255jQge?=
 =?us-ascii?Q?5NWk6q5MCcQrSiILBaOP5CGxWh/FTBBnpFDM2mEvjvjKllxKzkagl9tOGioi?=
 =?us-ascii?Q?LsebhbzoLY1ZJ0MQtwcYKW062OrI5NsRx0IZhWWazehg8R49OHkOOMRcoM9K?=
 =?us-ascii?Q?hd8Vm+ERazBg6ws6l2hvo7sv0qeIgGFT/fEeQR3X67bc5molcnlxfEZr5U5E?=
 =?us-ascii?Q?BoyAXjTH2UNYZrmSI8fH+PTIdgAG3iZMsL+FK8N8XyH4/WYaxdMf130qAsTH?=
 =?us-ascii?Q?V/Bmybr/5b3CxWCTVrKVVIoRBE+lpAROABV9laL0CT6gd+GJogKHNC5/swBc?=
 =?us-ascii?Q?/n6CAEWTR0X+mk6wm+Sh/3m8+QcXsYvTyMRsrkmMm9WsbKI+ZKSgDaUdiKGD?=
 =?us-ascii?Q?43MTfZZUjRh7rcXAUw+qCKyS?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25066de4-a16c-42ce-c85f-08d932248a28
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:37.0702
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MoTuXxGLOi3B1llTukyl6cn73b9x//tqpxeRmR4Fdzrwaq4IrPFCsGTpOP1S+TjMdhTRhy0b9oiC9uOAPTbZqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4940
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The lpspi on i.MX8ULP is derived from i.MX7ULP, it uses two
compatible strings, so update the comaptible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
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

