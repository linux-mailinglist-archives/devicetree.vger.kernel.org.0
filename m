Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 732003AC418
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232492AbhFRGqx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:53 -0400
Received: from mail-eopbgr50084.outbound.protection.outlook.com ([40.107.5.84]:24213
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232427AbhFRGqx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:53 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q23nq/dd+PG49x8cbKStBQVRiYvYl6gDHSe+To6fdz8iif9ysXxkbNy/Kr74TMUMMRiW5gZMwbhjr5U1Uqvlvkz/OUF+yswGq3WAL267e0iGbkfp9iaTxk8XUZKOAIB6zParIHHV+MCT+0T6uA6AdQsFz22eysOa3IcOznEDOJxc9Flf6XHy/SLlo3kMQJpWfBwlCDLJcwi+3r/AejycgAxHuBJ76ixFz3VmXPmpj2Tq/gLEMsZxvwU6hhrfJM0TxB6+1Ed+LTgehLUiIKyJzh7xgz2bqaUoQiyBH8bpsrSbNlChu2wBZDe4CG3Mjei0+aKKH4i8a3hRu9+1oi0PRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XHZptpnpMlg0wNmhH0JWUOVEH7uZA8x1GiJ4UcvQWo4=;
 b=G3SjBpHBT0F+4meZY8wmaFlgyr6KLekD/q4J+3oLsrPrEkfy0hJWaDDlnD5ydGb8HCkbeP+NLJ9f+Prlc7/IZgPp2DDvdVpaMf/XxdkgAjeogVPZRIJkNNivEzHZ2mXv1s8Y1wSh965+sFlpgCV9lK+qGQXL4nxkag8Yt5CEsoatMbvbg/4Cq5dAShhnSx3c0TY01u6wh6dPaSdKL667wnhBFYaLwRk71F3k7ipmXG9T0dfYtivkb1FT26wnkX9i9lzk+JN4Nwj32SPBTRdWkZeiLgeOqFDsqlz3SJ8TCwlyPA5M6fqdFuPth/q+EgqhhJ7kUf+Q81yGccCzt/MkjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XHZptpnpMlg0wNmhH0JWUOVEH7uZA8x1GiJ4UcvQWo4=;
 b=bIAxB8xn+HD5rtNowcezBwdDJKpzbhyyuGlEicTHlVz/lQiMns97S04GJhHNyvR4rC/PW4F3f9FxAU+Pf0q+NbytkemNn6fIZRWHmRO9Me8wusptqmfOqIRTjw1Lzj7sLBx32a0yxRaemUiGfab12fHUHK1xVXiha3Kz2DZKLew=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8140.eurprd04.prod.outlook.com (2603:10a6:10:249::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15; Fri, 18 Jun
 2021 06:44:42 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:42 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/11] dt-bindings: timer: tpm-timer: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:18 +0800
Message-Id: <20210618065423.3424938-7-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba90a890-5d37-4d3c-97b6-08d932248d09
X-MS-TrafficTypeDiagnostic: DB9PR04MB8140:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR04MB81408FA0F5782442DA65D608870D9@DB9PR04MB8140.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AGBnQgB7CkKKDfL4+E/4KkAzV3FAX0Xms66B6iCdKt29Vo+9W6aWMn+S0O6cCErubK5yERdDGQZ5lZ3+DIa8CbrWt5vpXaeIlXGdyVMiM02gdK0YAo9HFtLRq5A5HKLPqjkmDaim/2iacslV8LXtXITftn1JyEosv2mWW/iWKYRGst4DQAHxMNely2mKhnxP9pS8V9a+/ml936r3zX23ks33lRdvTHbXUMu3Vc+BOp2NdQhlKhK4EYXmPSuxLJ/+xFwSii8tlwjUBn7/vNSs+XkwZvac/DpaVjG3NFDhDiqVdNXyquq2uY56CeWCThUDlMTudfpyCuCXtpOefYcgMTnyHXaLGXAfSlbaC41gfWjYUF1wvqfRJQc6rdkh/7DFUUjfSZtVkBL80z4TzF7PfZ1RsuggaWFUq4u3p0MWH8/ptK/p/oO4kLbd9zXf/l3WmpS3ypB9bo0uybr8KEuxIvPtldPvYaxb/zMaQciWXszEVFRdTKVeF2aqxsLCgDGEMtJP9fYIgdXQB7V8Wc9qFTQbFzle/0LvgnmGHwyw1scyAmfzh6nNHotdu/314axSfx80F/P5W10bP6dPSZ7P7yAavfudvetHx++pWk1GMUNhByRt2zCBvbfunXVrN0WOesKIS54CAf+snyLbhzGNLhvbqod8MscKb9Lie9Jul7+cUOO5XL5fInJVUUfYubQCGhEXA62EveElonl/hLVmvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(6666004)(6506007)(316002)(66476007)(86362001)(186003)(4744005)(66556008)(26005)(1076003)(8936002)(16526019)(6486002)(83380400001)(66946007)(8676002)(36756003)(6512007)(5660300002)(2906002)(956004)(2616005)(52116002)(478600001)(4326008)(6636002)(38100700002)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4H2tNtQ7QXMhpQ/U0eQ5KmuLHRuIP5tCCP4z7kUvcuhkxudFU+CYmUyRs2Sv?=
 =?us-ascii?Q?unH2L/3xK/QEJ1SEbdsUMWrQnzrjdXj2NGOfTKNhc3e8QpvXiQ8iZSsVISZv?=
 =?us-ascii?Q?ywliSGz32wZ3gvx4WmGxhb4jCLSYHBTlpjRzBAAO9oy/Wbl0QGHsO8d0Pc7A?=
 =?us-ascii?Q?CvS5w23XdJ96gEGpKnwQi/t57E/rMogaBxyvWfDfG7moReNVifbKY4cSmyBC?=
 =?us-ascii?Q?Dudld0QVvSxR7e2vRhoLeb91baYE/oRjBAfHF7MLCToMESMmtKlZjoa3ck03?=
 =?us-ascii?Q?gfH+XiWda2Yuf7cJm4rAEnMWqtB7PP0YRbGR+mzUTXTFFJ/4BvF14sP17sx+?=
 =?us-ascii?Q?OqgnTeeTxacCosEwA4BdlRVc4jWLc/RopQOb22No8fMMOUEAABRrOtPxIUYc?=
 =?us-ascii?Q?z6SWWIoAjd5EMV+FarVgDpCfa51LDVWzqZSLZk1DEuuY9N4G1z3qOlT43d02?=
 =?us-ascii?Q?faTiJu9ncD6nuWl60pM6YNRh5fFJxOAJ5EqihAqbev0FrUN7lc3i+iklceWQ?=
 =?us-ascii?Q?UDWwzaqLckt9P5sSteDGM9ibjY+nOKKzGz2w3AX/bWNX5rfO8FvZpJHaf/9g?=
 =?us-ascii?Q?+vfcuLgjA0g6h8sYKYMt7hZuWa7JVNvdvaXF1YTZJHNFpk2LcMTTo0mr7PIq?=
 =?us-ascii?Q?ziQlMUyq4ODGKqjMYO6gAtsEwkk/zx6NT2q2zSzFBaFfRo9Yo8X2xNuaSbaK?=
 =?us-ascii?Q?bd2RaBkWiKooMrDUg5+MszXcHaGF6OUWKQB80Zu7FB40NBnnoKe5Zd28XJVy?=
 =?us-ascii?Q?CxNhguU7uUusStgtbbchMwhccmgMwxzTKj1Yq2sJFpTgNCTJ4qDMJhGY4V3n?=
 =?us-ascii?Q?HHD1UpLk0AxDqhS6UY7dOmKhr1JDKV8jsvj2wzjTPyDVQ/ZP0ePRQAH6a4sA?=
 =?us-ascii?Q?a0mzhWAlo0LIMB27SROBDuL+NrgJYzvfGzFwc85l+RZrl3c4p7VtmEzcGhyN?=
 =?us-ascii?Q?MmjOzeGXF2yHXphk+Uue/eauJYGi8JyoWwJxunBrW6su1u4T97GqgcjplQxz?=
 =?us-ascii?Q?TwMlRcgbk6SnDKNznlEhtklj4wfaWcn4ZLcdfm6il8KmMVs9LfP9gbihdpP6?=
 =?us-ascii?Q?3N5QrI8b+GA5Lt+Kkax4j7M81JCy7RqAaMSlbRiOb75usTTTnZfozgtlkYWB?=
 =?us-ascii?Q?DztynuEcT3BaPZMUgU7Fl+PDJ0Tdbr3WFoDmZIAgkDZgDY+XTcjDucDc0330?=
 =?us-ascii?Q?QVQNi0SeqchfAskazv8pXornqHZ085xH4BexuG6F/EKogdQ5trm+ZVHpBMcc?=
 =?us-ascii?Q?AYudbNgUJ+gU8ADiajrV6/HJw1ysUKTAOkrk4044lUUEF//6sEdnLOmSaCpJ?=
 =?us-ascii?Q?ldcxSFUaCdVyeAAStH7QUqm+?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba90a890-5d37-4d3c-97b6-08d932248d09
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:41.9090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cRCwyGHvFv73FWOYrINXgLDRAmPAKc3eKyxGXEYkN/S6hMBXHl+XQ8VvoQ2F4ibX/ZVDG/OwyJBNRcj9qE05FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8140
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The tpm timer on i.MX8ULP is derived from i.MX7ULP, it use two
compatible strings, so update the compatible string for it.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v2 changes:
   refine the commit message
---
 Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
index edd9585f6726..f69773a8e4b9 100644
--- a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
@@ -19,7 +19,11 @@ description: |
 
 properties:
   compatible:
-    const: fsl,imx7ulp-tpm
+    oneOf:
+      - const: fsl,imx7ulp-tpm
+      - items:
+          - const: fsl,imx8ulp-tpm
+          - const: fsl,imx7ulp-tpm
 
   reg:
     maxItems: 1
-- 
2.26.2

