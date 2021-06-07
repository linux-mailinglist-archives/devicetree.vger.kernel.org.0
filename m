Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF4D39D766
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbhFGIby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:31:54 -0400
Received: from mail-eopbgr150057.outbound.protection.outlook.com ([40.107.15.57]:43104
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230193AbhFGIby (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:31:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHHHpoLPDiqxChMwsdqBLyQUDYXP7jWXi/jxFzSXurbcr7R9ui17MKDnhnqQPjJTwg1kRiQivdPyzXVvo6jENHn6b2Z0xQk3769Ega6gy/Ij/ec3lvxIY/wNqXLBOTtTYkriR4Kb82vaidXPOEV7CVDuljyq4cQiOIcvIb+pNNt9QQ1kCd6l/imhzcC93cV1tKdqZRHnGaOEAh5YFYNAI+WMNN9S55JMgzp6Ua4ArOJzXtQbAIGN5AajmSaYdiAWMJEAoTdzxR4v1EqryfvzCCHgmDPo2YxZIRlEpK76UPBQgYBxROU1ecZ7XDZhaoWgc/yFgaOEPbq5pAUYOGQW0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayZMmEvb524TyRguDcTZDx2QsYbOUVr5fYueFrtWWWo=;
 b=XvTRALH3ghm6srpKgFzspUvZGP4M2Jw8rbc9tFxP8cnV6OckgEq6RgOCPJBQ1qj2ET/Rl7QwM4J0K6d0PijyW3/CvofSFkM80fVGCEmXnFHKwgxecn1cTkS++jpb3wes4UrLLm0jUUPCM+4huBs3V7e+XHqCCzb4l7PRCoiO/4OTR03VLc2R3bOuZxegJDFMvN0gOc/9QgHcD3+XB1LfWlCEfd+Ii9AvE94IvtmiSz1NN56YluagWeieK1X0GH17xnddycpoJ25+5863zfqgVHoP0Sg7jPteWVmvbmiVvnZseVZQqcNfSQczMLWVRSuCIAVRMMm+h7Uv//yf/iUdcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayZMmEvb524TyRguDcTZDx2QsYbOUVr5fYueFrtWWWo=;
 b=RVOvCgnX4W3wuIIs3Rf0KTVGAwkQg7+QQriddwoDCAAULfASvpEkqyql1RUdWNbkocmnY+z2N66CW1rGkwf40idzCiHsWxBEXHRU431G9zp8uQDSfnUaBV5btr4E/uEiK0rlnkFjflxg+5Q9MA6UmwsZdR/P2jpzbrohpgwfFyM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3125.eurprd04.prod.outlook.com (2603:10a6:6:11::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 08:30:01 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:01 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/11] dt-bindings: serial: fsl-lpuart: Add imx8ulp compatible string
Date:   Mon,  7 Jun 2021 16:39:14 +0800
Message-Id: <20210607083921.2668568-5-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210607083921.2668568-1-ping.bai@nxp.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:29:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44f0570a-34fa-413b-822c-08d9298e7141
X-MS-TrafficTypeDiagnostic: DB6PR04MB3125:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB3125A69C485E2A0C253E36FD87389@DB6PR04MB3125.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EgtiPTWZN/HiDbQRH6f6pn5BSGhE5IT8NGixo2yRrEtYeyLgzzxNCplHv75g4if0IaQ8O1whIYdSrvlsbvW7LF+7vDrVHwcAbobU6GpDWQwonN9KrSN3D4do2PH1AarucQW2FpIG7uMOHraP2SLDdN7w734lj298Z2VaB7PAWUSZMHRJGgdANDu1Xvl7g9V5R0+NcGoHdiOe/2EhAhWBz5e8XzPayzScgbePvFILcBR7NR9W4+adBuls0a1hvV7FZuGk7wJ23GgQSZ8+DY+VrdPIYhZr0B8j9LqQTSh5B+7fiJIa1v3s8FSbfEXIhkpEKwO9x8v6UFHA18LQg17Hw0E5SETnJ1mbaiYakgwqOBqh3DHmku9RcgVwI8J8e2vEm2lfBU2ug2eG+mQblyUP/uxwO+CuDGHagS1czqegVIHKbUa23BMN3XTiEg4VbpjNUkN4NSdqT/mWzOI/3NjlfSmJhVsAUNhZ0gw9/ign3KbRUnK/vMAjRWvZVqEQx+andZAR/kUqez/akUqWuiBqvfxBw29MybU2L9QwmNhbfrkctsC4VTp3b/XwNHj+X7ikXJZ1FSa5gXAvT0+4yeSungNnbOkWbx2X4CHXfJ6UdZHDijclgzqhjB3fQwL9gE9qZfEQwy1kx/rwnm5a1J0qIFMQoulJXPlhrFkkooVW8faCfFK39mQIqgyC1ahe7+aDzUReA6kHNzcZaxzTiZkQ9HD/Yxhz1uoy8Y+YjUjsrfE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(8676002)(1076003)(6512007)(186003)(26005)(36756003)(86362001)(4744005)(16526019)(478600001)(38350700002)(956004)(2616005)(66946007)(8936002)(38100700002)(66556008)(66476007)(6666004)(6486002)(316002)(6636002)(4326008)(5660300002)(52116002)(83380400001)(6506007)(2906002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?wd2kTWzDUeWjp/ce7CExji3//ZHXaLRjYtwWx7Dmkq3wP1aOVDmnFKlcBaJY?=
 =?us-ascii?Q?DLze3DdI8Zerc3wYl+UmYV84hwsFc2KRkBwN/AW77EdFX9GxWbPIGgfWnGJG?=
 =?us-ascii?Q?AOBzzmE/75XG+jDu1R/5ZeAGiGWdTwWrcMGj4G61ZduFhs1J9qkU0Z3yA0ZN?=
 =?us-ascii?Q?IzYnHN4i3K7cJtND3S2IlvUId3CaJqLdo/Mrkj/tWSB/z3BfZwhuBeRsoZsR?=
 =?us-ascii?Q?IPEXseSUqUiHOf2B/XjLEWUWZY30dKyefVGQ920ikyAPLI6qnCMtd4l+v9KY?=
 =?us-ascii?Q?qwrEj9esgc82IVQGJmrRg1N2xF5c8R/Jb75FoqKbj5WxGzz/yOeg9y162cnJ?=
 =?us-ascii?Q?6zUf6hMluUeHwiiJkwl+S6jKo52Afd506+sLeF1+UmTsB+1rcmsqIo8jszmJ?=
 =?us-ascii?Q?DJSmHBwxuS48y6LDxP0jxc3J/IaKgUihvXrdxl6z0S13/TOO0DYf1mGSuwXq?=
 =?us-ascii?Q?jc9UWCVhDonn3Affzh1Zsog7ex5xNf42+DsdC1NVAv1NC16dGgK+A93wcIV+?=
 =?us-ascii?Q?ue+mI8JlgN8Sc1l+YPcr0USxCJkNRwW7ZmVkcZj0ZJiziMlOq19jiPyGX+0V?=
 =?us-ascii?Q?HmCfpFKv85XzgxWinUeSRuWZ2YWHsNDFVSWhH0bljZcGT0rnY5GawU8DrOOU?=
 =?us-ascii?Q?07hFSl56WCZj5GLjzxiPn2sAD83WGXA2zXaR5t1PWe+6+fkAvbI/ImUb1kKc?=
 =?us-ascii?Q?1thS3vOcWHuqcLnwQglP0tpVAfPM9RHF56MyHYN6NbOwUayy1zWjJHjP83nW?=
 =?us-ascii?Q?OuNjh/p+SahTn3nCdHzHY6VFUix8Q6NnddbCtlpZ2WSBSNw/oTnyjJ5okARY?=
 =?us-ascii?Q?dOHPxEV7Osa1DmEbLyJcpuJRBkWQgzS/xcntALEK1q+avg2mSxvDUH8ob6oC?=
 =?us-ascii?Q?lOfy1x6fxe5HmwVS9rG5T1+8GoQ9p7TpOfr3fJKQaLLO6IrGLlBFtRW87wrZ?=
 =?us-ascii?Q?BTM7iKNu9E44D/ym7TWB9bVlZVj66aVzP1O34GgF/PV+88bAriQEZEwFWBov?=
 =?us-ascii?Q?MF2fqsvrCvaXfJvjnjjsj3qDpSGX4QHdnSDQIjUIjMEJ84RLAuCOfPS4pXO4?=
 =?us-ascii?Q?eBuwQMumY1vK62b817JSv5wrRLsYvPP4SacbIivwaLszFkOeiKZ3tRt/8EyX?=
 =?us-ascii?Q?63u8g8E/e4h4wx/KVQJ1v/Jaqj7EFKygD0jAgTGcg6YmHi7p70QJ1i6oHRa7?=
 =?us-ascii?Q?l2zsZJos3UjQOEVQ/ALaIzsqhat9MyvqhsEy6hlvm6BM9X4i6zLVMbDMpfZ9?=
 =?us-ascii?Q?NXlcGsAdDlSo351BmwBdZ7UIUFDYjrLvV3W4jUuIul6CCKZ0gE+e7b/lddmk?=
 =?us-ascii?Q?00mgQoyDduP73LBSajJk1CDo?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44f0570a-34fa-413b-822c-08d9298e7141
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:01.5762
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n4j3BGq6Zl5rF4mRsJm9vAdQXMgIQQTyftdnZss7kI4TPd3b3CvZAdqsQHE51KdeHjrUJgSLP9Bzruy2eDPIAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3125
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For i.MX8ULP, it uses two compatible strings, so Update the
compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
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

