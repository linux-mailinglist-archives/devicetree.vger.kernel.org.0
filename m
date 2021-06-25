Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9582C3B3A55
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbhFYBGV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:21 -0400
Received: from mail-am6eur05on2043.outbound.protection.outlook.com ([40.107.22.43]:2529
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232850AbhFYBGU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:20 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdvDtJaBHNgIddcNiwaA1yOZ7YPVZ48CJpwzUdWUBOletC42o3CsVFUa9aKP7VO0/b850f5UEXPcV5/8OQ088Vbd7j055jyvaRDPiQkEJXwZOReaLqX77W+T0NqxAyNTiWg+BteaWOzpAuTRZ27aMvnvrhZJ1ECaSo82WZspnH5YJnUjFy/DPxstlmO3N9IpadRUNLC2I5zinnCSPxVJ5KC0q9vQS/P4NsjjRNEq3f+H/vM4cGWxJN3+O3P6Ni6MgQb3g91iIaMz7+fmCWTl0Czs1TTwK+f9lcX5K1n6eSVdnhUT8W4TBRl6shE4xex6oQP1qf03bLMKfk+6QbF3XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFoBLpZqazGJIA6DYFfaoYGqffbkoPULbij3jJp5yeU=;
 b=PEOcTxZTFlqjbDVhsvYRg4cTNKhf4iT1t7QGSpxNs4BwpZNFRTAWj8lmVDMCfncJBdCaUN0zHb4MPIewY6lmuYV/ZzGQtG6TYkC3BnwCifF7bcLYROcRZsMUVJkTnQlamwdkki7p8drirxE6isc0v17qkU0bOs+MyW/lb89ukcNsd7HKhlHFyrJiFiNbPHwoKaQ25Txs0SFW82oHYiHQ6DTXHhoIxEQeo9lbvGQ0oa6BbiYKYtdmq1m59MCu+yIgCl3qB1/Qqsqak/PtsJRvOJQtRKzqjIcVknQPU7cnchgh+unk0twTfwjHwPxgEX1muG9ghVR22V85gj8UaEcg1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFoBLpZqazGJIA6DYFfaoYGqffbkoPULbij3jJp5yeU=;
 b=BdHD5rexPDJA8Q1Mjbh95Vra1rexMJd2TiUKeykxUtNwMSyTo1qzFwrI6fukhg1AyVx33NZ6kkfA8/PVzGzjbeY+WMaPUxAHlxUceDePjgSFGPb4gxHnHHvI3xhn0GA2oSXJNDYItas+Lh9YNNOAKGlV4f3POviM84ibztYtFe8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:03:59 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:03:59 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 03/11] dt-bindings: mmc: imx-esdhc: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:47 +0800
Message-Id: <20210625011355.3468586-4-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:03:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 888bf808-6110-4d89-3587-08d937751d2c
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB5468817BF89C525051D3108087069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cEIadQpjQKfVRlAFcGftc2q7PjxHrr25097XQuePFhC6rV0TVEEkZlkq4d/xO8kA9t2F1epU04/Y1ZMe7wBB5UhiN4iMJ5N3Xu92hOHPie1mHid3QBC0bVTtdxLCP6ZI9pELgOaMmlXz0Eq5vbIdBXFa23DJr7rb3Hnia3OcDxT2ws2lvlozswxoAbDIJwGjNqXmKK/VdOoyIdDMvhumPLEdnkDUW4wDFFDVnenWHV5r00tuWfSMsLHVPUOB2cvuYB9h+DN+xaMq6cdCaP4Cdv2v4yafj5y8Y7sE2/N6UdXyjoGJXHtcpoONBHrc6M6FlftNigUAA9v9GOrrNZSAfJ4oDmUtaK9rskLRcJKRyJ9ko5Y32SE+dS2XR/OEbDCA9kEYRFgXMSad/1kFlYPz1KCGsjhwcIE0EWvbVIIvwcjJBBaJUlvz+daf+2K7iUyeeG0OWWcKpyK6Qidz2KPI4ts6LKG14TSvz/mGS7p8oXSuc4rDkWH+K1CvlnWxwIGblAaWZNTtS3v0zQB0vIUg5nLC6XTZGW28Vz6X75A7mY9hvjul8P/LSgOddM/urztUUyWfaSLwYYVjOYLtNc2FDFTvmQnPRkVcXEhUgfc4Kx0cz/tObhCXzorK2lzvKw+JVhCcSGnxxND7uMAL/nuy0iCpLwiujij9D11mvABDOqkRXA08uIn/z2BmkeiuyAafwI2Ad8PdZoVQm3+kiya9H8dgYqpZCKcyYhGRb/tD0ienOEP4mgVeCCpQIMqnIVpK+8YjeHvQPdrYK5XXinE4WQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(4744005)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BNqlZXtMZPN1Hof5VszJYBX+A5WIBBAJ7omxOt2lr062P77CCx4/Svir6TSU?=
 =?us-ascii?Q?nxPQ19ZPVWzhhUYi6yqwNbfz4+2cVtnjaI26tCvY5RRZLoLnvoGl/XBBei1F?=
 =?us-ascii?Q?hf6N6tbF07bo0qMrNj/hm/tjSrsdqfj01qAeMxyDsczw9Q1so+4AgkVdCbxY?=
 =?us-ascii?Q?/+rnRw8O6bIb1mscGDFLZG/gR4jJm5K/DzeA7bfyDid8mtqMyw7UVGMWUf7D?=
 =?us-ascii?Q?ZXH4jsRRD06N7deS72BMX42/QRHuJ2No7XvPzOneEgTlY+ndG72UKAXQAWK+?=
 =?us-ascii?Q?ADAnALqPSPyJaQw8PyDnCeYEGrfJedxv9d/xAFW0w1ZEZ5bGQeOZ0cvHb4rr?=
 =?us-ascii?Q?UtpYSLoMSUCn8rlw3TaDpxJdSSE3Nitu+GlGZpxJspVDzcM6+1Tvr70MUxQA?=
 =?us-ascii?Q?sfUi9oFdSSNKq2k86+bTBfbuQpNZ+C+nU1rbwAu2T/ufUboUN1N3wNuOot4K?=
 =?us-ascii?Q?RIhgc26JPvdx9CTbysHyDjoaH55BC4mE2+IV4mV9XLbXCqVESUiVFgzUGf2m?=
 =?us-ascii?Q?lrEyo9HTJ21Ddad4CGxftHzN3laedntljb7yXXXkeX9u1lxuVPtG6ur/Oua/?=
 =?us-ascii?Q?gm6antAlR/w1JaioITqvRAp5ucNViprp2gCmmln2sm5eO1R7XQVAYWhamYgm?=
 =?us-ascii?Q?ratgzCYOv73sdjtqksqVs0VA/aVtXtu+iddmrOWqykR0vbvf3wiard5fDGD2?=
 =?us-ascii?Q?tNI8Km+RrHJ1UjEGLCBa7XycMFIeM3phQstJ3IPuyJ6zYnjr0TwV9KDTsngG?=
 =?us-ascii?Q?EFBId17GEEo2gow5dW6K2rheaKrEBA8dB7B7lv0Q28bV+47vUyF9r039ifzb?=
 =?us-ascii?Q?RNMqOBGm2bBPRys4g4U1f8dnNF1bvTF5ZSSr5LhN6uYH+AOgDUSW5P5HKY2V?=
 =?us-ascii?Q?sCjbGYYFAcCAKbypunvB7breXDPcsqAHjND0OO9khE6hFKWXyaI3w9S7qJVc?=
 =?us-ascii?Q?tCK8QhqFtTLuhNU4jWYYhSRHsKTD0I59LznU+ZVzEdM5okw+aJkGqvb1Twg6?=
 =?us-ascii?Q?AaR7FHQU6Yj15e5h53GAKgUozgVR6uA56b2ZCTr5VYozaqF8VnD2ulY7/W7X?=
 =?us-ascii?Q?j7Xn2KYCbqae0kTGBq6CvRLHR2XZrMyZLTZiJnxjvsaFOuWrDUXufVEetoJo?=
 =?us-ascii?Q?NGHiZz4bjpGuYnvLpxAnJeFptBd2BkUkEDAcJKy7QNbqATsWWj9jMYYR0IYz?=
 =?us-ascii?Q?c53xf/4rXOttuhdxR8zu+1mwDvGqVVMW6JknEE5dlTLrGRUGjS2Oc4fhAcLU?=
 =?us-ascii?Q?vNansY/eHcXPjUfcV8LbW8EHbLr+kICZJtjFRaJuhk2CRv9LuIKWY1WGaEr5?=
 =?us-ascii?Q?S3HENc3JWLs/xdH5+FMWpZW8?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 888bf808-6110-4d89-3587-08d937751d2c
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:03:59.2929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LZ4P4+MPugipTH/Wwioh3AqxGTh3nXJ3HTlaUWmsKwXWut+QI3nRqpozS9+wEr+WECS6+Bdks95+I2/VgaIXfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USDHC on i.MX8ULP is derived from i.MX8MM, it uses two
compatible strings, so update the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   refine the commit message
---
 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
index 369471814496..aeee2be1e36a 100644
--- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
+++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
@@ -42,6 +42,10 @@ properties:
               - fsl,imx8qm-usdhc
               - fsl,imx8qxp-usdhc
           - const: fsl,imx7d-usdhc
+      - items:
+          - enum:
+              - fsl,imx8ulp-usdhc
+          - const: fsl,imx8mm-usdhc
 
   reg:
     maxItems: 1
-- 
2.26.2

