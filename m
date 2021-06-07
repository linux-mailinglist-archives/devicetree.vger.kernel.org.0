Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 123D639D765
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230191AbhFGIbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:31:50 -0400
Received: from mail-am6eur05on2085.outbound.protection.outlook.com ([40.107.22.85]:41056
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230128AbhFGIbs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:31:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FweNgks9HhnSgEzCV1HdB97b/+sxFJhmrqeQRsndzyWFFx2uqWOVryakG7XgcWZMbqBzrUmemzOfvjwvbiPTBLoFimmOaQ1hy0Mo66hiGvQIuq9NBh7s6TCMlu/ZHNai676P89ZNQ36tJBtrlFVM5OIXfdw1rLMtSU5QgDqDOdlHhe7ajaeB703zVLLgHBRe3oht2XolYaSZSFLPdeII2IW6dFWY0LquTGw0iAx84B5isnG0YbrLB4QLOUfUoaAbQP16ntU2J/tOq0gANSCsypHHI9noizYL8AvNsB4/A6nFBuCxb3P2kKLcQAYcjZt+jNkWuI6fHaIbw6Y1O/Wpsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l2AXm1y8qjJYdmP9QYRexqd4lDBGcojYYLIpQ8ZMCeE=;
 b=Er7GnvGwM6rydYZCW/9uBPjIU9U/2wDI94BeOTMNH8Fq7a4917mUuLz5XisBLY50t1PbcdbIkvL/vbxkTTiPaCxoKglqbnaCNaU05McIxVadVhjVVx/dWg+V7Wi9zuJ5ymy8B5pYH/lp/usAvNaUG/nbAXILp87n6njMxtpHvzQ+BoEpAQ+zp9tmn9oYNQpjiXVQioMT9XznQjXJSeVGmnQaZ61hZakSHxKJ9wOUzwIh7JX2k3Gd8XFGWZMVY4CffNRUaNmaaLVhAIgpLvts5Fxi76yFD7sX8YZsjgC5EYjd7z5XFztvW9EGvkg89OMz7xtwiRdrZyPJdXEivcoW8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l2AXm1y8qjJYdmP9QYRexqd4lDBGcojYYLIpQ8ZMCeE=;
 b=UmVnHZRlt8H/NXJ8DBT9N3psuwXAkrK423yEM1BPl7PiIjnKXqrXu2Tzfw/ELkOfpPvtDSbSjBYMdF/ZjmLPjymE+PhLoY5EKMse/yyD3oQ8bqpk1ryi4/Tu8mJzTaTSU7FtSaebeWDsMMIq8kvLo+lQa2b/XPbweISvtt8ZyNc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7595.eurprd04.prod.outlook.com (2603:10a6:10:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 08:29:56 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:29:56 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/11] dt-bindings: mmc: imx-esdhc: Add imx8ulp compatibe string
Date:   Mon,  7 Jun 2021 16:39:13 +0800
Message-Id: <20210607083921.2668568-4-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:29:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 750617b7-31c9-4368-5ec9-08d9298e6e07
X-MS-TrafficTypeDiagnostic: DBBPR04MB7595:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7595DDA56703F3C66AF2D9AB87389@DBBPR04MB7595.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wRpURRujtRqWFq5oyiy1fTyLeSj8wlVXpEmMk4JHRrH0MWQYRXB2q7fJieNi70d3NCFEjIVd7IphL1T6dSXXs38Uni6s3krbR3eXXDknwUeq9lu1kX8LDipRPnHeb+Z31SA+lOV/ANFiKmhOp5caGT2Y+ptYSn4as45MTexStKdYQ1OHfSfaIi27EKFaObTdm3VVhGJyChmRWwUQdUixEJN/j/w+/LQPjkw/A/3maiFObUkv9KA7v5ipf2S9DRTukluFn18fwV2BspB6zGl+ZCD6ghvxh4IwNOOX9Ik9X4zPBLWJ8AcOLTLqfRnOa6VsYgrhd5WJnXKn7q6Itg9OP1dmpPCX/ofdrYsddcky3OxlTjlVUaGrlrSAfkiQETds6hD7nsA0bLIs1nBwn++foNUg1cXUDU8QvTasSVb9fVfi9R19ARI7U16j4y/pqo2LUNVpywk9Ak6bPenjniQB7oV8vhcUq/mnBaW/MRSQBAVZRhEHhFY/R0T7q2aLYrkFX0GY088MCDwgjPG74FNrO9lfKZ++lv2bHVgIyc5k/Lz1uiO65ef19Uvb/07rlHZvtKhM410hIm5UsUfqMGE7Iu/ONnB0QhxnyEFH5FJTnYMN1k/uiZyahgWdT6AHdW4+KM5kFEf8XOje5oM3mnu4c2dbpSllg8msqUykqUGaP5lSZ8leuf5vEKSWsiOmwa8W3LoF2Nc1jxE9/lUEzM1SgVmkPTfz+R4GroqYtWM9lh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(6666004)(52116002)(16526019)(8676002)(1076003)(956004)(36756003)(2616005)(83380400001)(8936002)(26005)(2906002)(186003)(6636002)(6506007)(38100700002)(478600001)(316002)(6486002)(86362001)(6512007)(66476007)(66556008)(5660300002)(66946007)(4744005)(4326008)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?A5Ozr2o5D8s3scXYluoZ2JvB3B591bKfsPbUBy5TeUkogv23X2GM4dGXUyV3?=
 =?us-ascii?Q?LExqEvOHbexN54UPjsnZsVOmVV3VeE7RpJwl+vx4ysueBbM7iaEBSmcxb7Ib?=
 =?us-ascii?Q?s57KXmg83vCR3Hve+WP/FAZkQJmlrLUffg2TKMB+DI9rLRLzDehkpi1HSYS5?=
 =?us-ascii?Q?JhJBbxVX3WnPXPBb1oqdZfhztrYMKXgJpmP5UMApZi8/GSz7Ij8T2WIKLhZt?=
 =?us-ascii?Q?1B2R9nB9AKcvMGzDXQLdw2mG8aNJ6cpAwfupoz5jpeRQZGw9j8I8n1k3iwDE?=
 =?us-ascii?Q?mpGQ5p5YMlFfXQECUGfA9zUDEstEWNJ07BAPhyaL8GTXc9VajxVGfCtz4iAR?=
 =?us-ascii?Q?vDhJxga7f0vD0EL5HW7tFXsiIYp5tLb6TBPALt164d6xkmg0b7WzG/m7u/M6?=
 =?us-ascii?Q?G2HPaKTYZZ5gD38DmgNoj/4DuTmWs343rQHvwjbqM/HmxYZtl3Pd3vRPafqF?=
 =?us-ascii?Q?KPOwjSxalPn2DO7iPCBDnzi8jy8Fj2KMCBkur+aJDd1byLAO8qUXZoXINYVU?=
 =?us-ascii?Q?a2gawzHNITI0/uojA3UMotV+OfgQvAR/zWd159N2coTLGUmuoo3jIQPyp1GH?=
 =?us-ascii?Q?MROeLFkJJZ5WFpSjvsTqv13gt4XVVR1+gOTO7h2Xk+7G/cJtcjqAbwo5MMez?=
 =?us-ascii?Q?B+cgPtjGEiFIgMrofSTCdfwbjjbPXaF7YCJSnnYEm4mHBRBa5+OsFJiwav/z?=
 =?us-ascii?Q?5NvFHolSEjsE02mL82thtSS0Btrbcl5VQr36fcwjLzqInt2UNCvcyCHpzGYa?=
 =?us-ascii?Q?GyhklnPOTjjmEE1b3gZS5+7MIG9riL4zsyPJMelURQEsHRxfPsj5wr0L93PX?=
 =?us-ascii?Q?fq/nLaxQkANmqKO37M07/5ZZhy08tH6tWrF0eFJRn/uKLbADRPZMIeip40BK?=
 =?us-ascii?Q?xlEADBNQRoNhw9kg2WsbSOKHOfK1L9HpI1+ka3/4YGryVJ1ep0aGlHgrQl0i?=
 =?us-ascii?Q?7qbp+82nMyYP1OH4PJNpA3XyLPOZchxW5DqHI8XZIbYkklotfIb9pdaiVA58?=
 =?us-ascii?Q?JZCKixNTPNfs2KDuQQMm4OmWnNMbv+M3FDAqhW2AlW2IKTldsCN+PhL+/JGS?=
 =?us-ascii?Q?czg4K+j/EKaH58IT3CeHJ+p6mnc+pz2YS53OkkiFn5f4weRaSKeWzWAhT6mn?=
 =?us-ascii?Q?Kzy4k1hxG470THvT6sV8tQyaraKJ4dmtu6Vdy0mV9W+lPdBLgh2pcBM5/BgE?=
 =?us-ascii?Q?UX87r0MOvuolc0vsizyT5JNiP1dWzqHpZ+kxhs86leRhKNsn2j4KcIQqAsUP?=
 =?us-ascii?Q?VvRIFr2+Hd9EOdjTyvpVbXTQcCNhn0oW0CCZGuzT1JXc+2i1Y4wrIiTevaY7?=
 =?us-ascii?Q?rBzWm8KTx4jXkQ6IcPaBrXSZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 750617b7-31c9-4368-5ec9-08d9298e6e07
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:29:56.1182
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dpz+3MIOArnRLQHVGD/Q90bWOvt5tbfwA7uufr2q9YOjh9H8fVYXZJUkPW8WP35yvsFP/iNhmpOlwuMDW4z+EQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7595
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For i.MX8ULP, it uses two compatible strings, so update
the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
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

