Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 310AF3AC413
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232422AbhFRGqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:33 -0400
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]:1877
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231137AbhFRGqd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1bXaobUVeeANynnRulkH+UC9axmv7rtoZdXEpmnu26+FViBSdY5fAdEdOqiWN9EAIUpd7xSbMYP0q7GByEy5gD4y3waOFm1uOLOIsUl0MfEyU259C+FKTLs+S5J3cB5ghzYLgLtDmJqhZExDuWtopm8o29Hmh2WSACdZFLsvVG3JabKXsG2paPCOuznsjJ1rsJb1qyGH0C2NKdBLA8KIlJe+YkytD8d3/lEbf389oZt4s0ycDiM6LdXT4vChLuEcX8PLNOudwGO28kxzkJSkW6hQIf3A7eXOf+q9eiuHZFfIsfFVdvyexCd3Xq2DsFF79vwts8qUdKEDWjdVM4+6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HoVealgDXgWww3R+6ktASc02jm7oKT7iDiVyUSx04HA=;
 b=LT/iN6aB0D7MUkenePFtRb+ZZ/6CKmLCPna57lYqv9+1I+fcsPExjlXDA7GTQ1Y+LQBIPCKFwNEz88eNZY4KNfi2t8bBjtdypZ0fhoN6RhdOBCMCjYaise5/ybQ5TuxYmywsSD7+Zdexbi+P7ACYVIWQb5XXyUWCbc/MP0Op6f1CNpuFXPyFSyxZrdP9PcQSvlRvz+eTmi6y5SjTsnmdkicOHQDvuXgPDYyeESf+MCwMIiISdoirPWAaXa3cRcXHNmX9ftDodieEuc3HPEwnl/gvJk/q9pMm+zbP5IDeAOLGS/7u9RwHToXb1AwHF2h0H4ODyMWds6i8W5b/3Iex5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HoVealgDXgWww3R+6ktASc02jm7oKT7iDiVyUSx04HA=;
 b=SYTjpvB/5Ei49jmnTQ8XAhNIdT+HEPtQtePE37L9UMqGUsaed7lms2hHiuJOOecmpKKgUAbAcrdKbPCq3WCV+hRKy1XgvQEDxvcaljVVRks5btdJ8/1pvezba4KAXa3fxkkoiT1x87UPXpuaEFoKFIF7LtwmUow3mAsE8pTy0Xs=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4940.eurprd04.prod.outlook.com (2603:10a6:10:22::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 06:44:23 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:22 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/11] dt-bindings: i2c: imx-lpi2c: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:14 +0800
Message-Id: <20210618065423.3424938-3-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 00b414f9-ff5d-48bf-fa68-08d9322481af
X-MS-TrafficTypeDiagnostic: DB7PR04MB4940:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4940477F12CB0BCC1D7BFFF1870D9@DB7PR04MB4940.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: luSX0KrRhKief3ck8FWOsAgC6kF0EjmZsiHP1qaxUK71FmFaR0se6as1wmDDEtAl8NKvUdKGAK206tX5lINwPVUvObt+swM5GIvHJaKB3IcvFQ3pe9RqMoabJ19o4JF0+vS2o0W3shcZ1XF6I6xmraRAzF2hoKs9t3z4jzNsckuUpg/hIEQt5plzikSo3NErxi4JfHqNR9cn3qLcWuLj/Bcbk/qfQ2VpFPmNaEoeYq4x9eTfS7SKEcKxJSbG3PNISI8FYszzreARtspQ1Qo0kOz2Hc12DQXhAAbo4+QCMaBF30OXFGd0Ts1T6TTef5WNaX20j63hW2NxAk4cN4pP4ATBEcMlaKQrE3lrt+wPqWboJLBbuJPZmUXtPwF6rXGc2B6aV5L/x2F7cOL2z1tDGTh9G4ijyBKdfa0McrcimnFW9j3CqMMTobsKwAiXLlF8In7sPbYSxG3M6yLSCw8C9DdqH8zGzGB4sC8WTjTFSTT288gam46/X2c2EZZ4cdYOE4BujTSUzhCQIGWoWSJQhP1g9Q2rEUSiiPLM0ybablLfPD/5IsubPJ3CZFbWNVQBdJ5ZrJiTPxe8I2VpWcxtOP73C4DzrsJpIGSc2TX960d8IGaJmtWl9FXd7d+GmTfVUCfCuyDpnlYEAEvK77Z7JDBKOG5te0ZLixSxELF9JfAdOlw96OQv03g2CF4T/WgBdflF2ZDykkHQ8IphedH5XA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(5660300002)(86362001)(6666004)(38350700002)(1076003)(52116002)(6636002)(6486002)(316002)(6506007)(38100700002)(2906002)(478600001)(8676002)(26005)(6512007)(36756003)(4326008)(8936002)(66946007)(66476007)(956004)(186003)(16526019)(66556008)(4744005)(2616005)(83380400001)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QhBQc8gWfWPZIHNLxuQK74CRJlaKxjI5j3hzRsV24DXu1s03GtKUmUkBLUXI?=
 =?us-ascii?Q?EhxqI0Rr5Wflt7OG4Rm6RseVEdpv8hTMvZAefAWnG/sPO9De7DiWQkLzMFPm?=
 =?us-ascii?Q?5Jg1EatuYMDH4EeJ8/APYPX0xjqeW7HGFV4bQwjtPhlXYkJkgVezSIe+9V4e?=
 =?us-ascii?Q?Ew0Qkip0es5Va4wuYa2qm7EUXuJeUFDwEiUCPUQv6FRXHLdx8COWlIYph9vP?=
 =?us-ascii?Q?PeE9icyJB8RZPkc/y4glXtw/lTiqB3Lign/MkXIO2sMY6uh7es1wpsNtz2s4?=
 =?us-ascii?Q?XWgx8lM7n4CD4pv+PCHw9yH4L3x/hokgsiUY1YLhP4gddMr2X+ZVxjOfTPXp?=
 =?us-ascii?Q?ZnLBxYSgE39WuJDsw+1JVSW/j0XADakh0AFawgOhkpZM0eIObwwtsu3ytpQS?=
 =?us-ascii?Q?RfIsy5MOB/+YEFpRtkhR4SxkG4AUJ3WRiaWzDOCmm/d7cQq29Lr4IGu5l9WC?=
 =?us-ascii?Q?EPIwbRgqLUiLb3vTlPmdpmMCN/bITYH9lvSU+7ytsliZsWxByI76DjV5jihK?=
 =?us-ascii?Q?6BICYTQdgO/WdSGXjuujgB3n/yVdby356TsP3E5FmTs3sNl5ghd8eiRkRUln?=
 =?us-ascii?Q?jfJRTACxSS7oEgVCZl3/rJzLdb/3srxVWKMoX7tj15Li/5xK/l4Dw/CK2CMa?=
 =?us-ascii?Q?r9wwuFFY3aO68V6GgoVXCuxvzJVi5427I++9ME4wWRrJYVPnxZVZV4YAunir?=
 =?us-ascii?Q?O7y6KVv4SuROdF1kNwkKAweu539OkPAlP22pAy0Q/QQ4A7F6m+JvlXDKJ2Lj?=
 =?us-ascii?Q?r5cPk72xJZJs7bWEvOVbfdN5vUyLnfaQjW1NdXW6HrK2EaH6IsIDdPUHvtr9?=
 =?us-ascii?Q?8c02VZivO+Iw4r7BM4a/bewa74R9nUZ0gz0WD9SJ3teNz4oCQWYJz1J+BdpZ?=
 =?us-ascii?Q?/1LvtXmbUqmaQ/tOhEA+6AtkuKKvAhXga1T5UXOm59qQIEeDLY3xKIDmtseh?=
 =?us-ascii?Q?x/9YmA7ZLxJG+CTCi24CQLahT5Ryf5hQsOXLYY6L78HYNnGK/W1Elm3nuUo7?=
 =?us-ascii?Q?D7zdzdjPj8PY3bUg/e+k6X0b9AX3sPFdipk33V2iiEniB16A5+Xxv/dLikh4?=
 =?us-ascii?Q?sU08M1JL591MmJWNHvBjBG976+BVcJPgOl1qO2JwoNytF8dOwgR63JCgNe6a?=
 =?us-ascii?Q?Ag5RRAeY9G1JgdbO5HbEna/pv9VWxj+5zBfyH4Ap9flOSMTxt4friAREb0Sa?=
 =?us-ascii?Q?qFmT/N/iiFwZ/IfjG6A99orgohh6u18h5oc5q1Ghb1hE+ZgMHim4+DbtXWFb?=
 =?us-ascii?Q?ip3jcR7NrvGMPJ3BkX8SUvp5vCb4gqUDT2She8XoOd/M89pILuEav1GoQ0NW?=
 =?us-ascii?Q?efW8eMnY67Gt/xGAMOyhPm8o?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00b414f9-ff5d-48bf-fa68-08d9322481af
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:22.8637
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I4Q17UStpJ9WG0T7GOQLLORi3YeARgSpdPQ3ZVSWvmf+I4Rsu1/J3vJwFj8LFnT/8byK8Z8Outvz6RF0LnnKOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4940
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
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

