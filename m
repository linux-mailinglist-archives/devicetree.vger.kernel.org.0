Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F8EC39D764
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbhFGIbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:31:45 -0400
Received: from mail-am6eur05on2062.outbound.protection.outlook.com ([40.107.22.62]:50753
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230128AbhFGIbn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:31:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ShEY7/nupMSVlx3Gb6H2L/B8ZHomI0qTP0GEE4FrL70mVK+tILlgOhEuCN1NuPR5UMdelcMilIqWksuA9m0bephNgRIb0S+I376ZWOJtNI43oxWWxiCpzGr1q3Ly02RHRO66jwmvMpzgECg4bOb9b4UK0G+WH1GX1ZoCGf27nX2w1vwjKcFE5HHjRCUM38a5q+km8Dr+q9pVgeEXGmb3n/QuT7i9F/M1EiACiQx25nBLSk11wbagqKrGdkWXgML15/VM1nhtCJXMPvSSiF0XGyS0KYflTBdVeeHFUMIAapOw/Fm+/2JnBm5ZNdefVvz849i2//QxMRCdTx4uOqtCUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MkXF0Pevwv3P2fVWsb9mNj+Z+kNxvGbwvYrdMxIyKNo=;
 b=De3IElwnrT6pYbY1SKTnkFuPsVAFoKjH4uugRw5cs0PZ8gL46a1ekseNtFhbiofL61kPSt9Ic287aCbXwmJzuhVl2NDq4FPZwsuzfGWQMTf54pCSr+jgw98ewT2UkfX7OaKNUKiLJ5M+Z4gDqgHy8sFmSz8zrBcgBWzPFL6CmOymgHRVcwrioVYcuNBmjRedlTPV5UPEh6CPznWDbg71Ah8SL48BGBcTEme9GA2hPrrDvC211O7IS1Ht3OSouf7v+FQ7XesvKi7kfc1UMAgMTaR6QRB4HykWeGZv8oEaiOlp86qsQrQe94Gux7RAWIF9XDSB6oIxRWVH81W2NtvwWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MkXF0Pevwv3P2fVWsb9mNj+Z+kNxvGbwvYrdMxIyKNo=;
 b=Ts5f4ozgxupHVefxzZ0/+RW6p3w4xf9+d9ozxYhKKHLaXMiejpdVrEE12badDXqeLGzSq3NznNYx9lWA2Cv+qVr9RQzOvNPvsw5TOALwMYlrAXvCnqh8gI1TvuLVdQQuJ0CxOS2N06DtjmHO2W7ZaqATdEH8ClixyxFtoynZhOA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7595.eurprd04.prod.outlook.com (2603:10a6:10:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 08:29:51 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:29:51 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/11] dt-bindings: i2c: imx-lpi2c: Add imx8ulp compatible string
Date:   Mon,  7 Jun 2021 16:39:12 +0800
Message-Id: <20210607083921.2668568-3-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:29:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac28b7d0-91ee-4e1c-0d30-08d9298e6b12
X-MS-TrafficTypeDiagnostic: DBBPR04MB7595:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7595EF28DCA9CEEB4849FC7887389@DBBPR04MB7595.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GoS3prO+84Gp4AzVIn+xWlaCgTlKk6w34CRbYN2X2pw93VU4wBR2LWzLw+6aKuwl670CYpQpwZPYS5MytFTL4PaIvFk7PcWl2wwlJQYsp1wjsWSJzeYQetlwHbE85bmRmTFVh9g5KspXe21qUlE0wMCdTyskKeFOObrEz/9ZeN/H6jIeUrHnGTiYESw1ZLs8m2cYIT4qSGM36X5Wme+F+fD/HmiVhwJSbl+sPa7WZuLUtaU/XEby06W+6hM8lrn+lV/xzNhv9VJUOiu8CovOWnahbokzEu0Afs6Lg3UlvPwXj3CRWivQ8t4vMVj1pdpyHKWUB9gL8encCdD/CsB+evnE66u7Zv5s5HaM+MUU3bof/thKIA+uyX/iOPl0e9sU2F1LphIyvhR2GliQM2pCCm733xQATB7//OPtV3O3DYha2pOrcbaFn8H3cd/GttgsA1Y0y0T22tekY6/PaGqH/cvuYJieTJRXFIQVhwDZjokY7VypRnyrpAJE4G5NIkMTFUlfyrrmJXBF0YNK4b4n15TP0JY7stPXy+xm/fCWrTaORk2sUNo6xidaDe/yq23ET8S5rOF/TkaN0ymzzXI8PpXD3sU1YVIjEATjPU15/NmqibtocOi2L3y2FAoz04hs34+ShGyF4qkUGsxorEOH+RwOMKBfIcVhSZTrtrhVxTIGue99W/xpGxZkhEg+ORAVn/2NPr28lK/s0NmAsd7Ic41vomjpEYtmE2c62pav+eE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(6666004)(52116002)(16526019)(8676002)(1076003)(956004)(36756003)(2616005)(83380400001)(8936002)(26005)(2906002)(186003)(6636002)(6506007)(38100700002)(478600001)(316002)(6486002)(86362001)(6512007)(66476007)(66556008)(5660300002)(66946007)(4744005)(4326008)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?pJp1icErQ1LcursALssAvnQntNQW2FElI1GqOMzhcFiaIMRYAaGISazbEF/y?=
 =?us-ascii?Q?QR2Ts5QxWTr61UtP70bdE7MYMN9qFP4ZEXBHpvTmwAeGd3FItPOft23IsG+1?=
 =?us-ascii?Q?rTTLE7sJoXmjy6V2IBGz0LmEmloR8nSCftU3NxIJO5UvrlsxC3D2HQgjEPTR?=
 =?us-ascii?Q?Hzx+M9m5DDvauoJpVyann2+E9Eo5vICYUqC4zMwZgEDsLKGfJvHw1SQirFoj?=
 =?us-ascii?Q?qtarC9w+EroxX4LpitoyQwEvTpn/YqAguu3jNUmjA+JGEUyvMe/vIswNiqu/?=
 =?us-ascii?Q?MXWaKS1zmSCngGKftvXs7tKBLIh4JmyR/LHG5JdkfGYA1jY7CF4sUiaC1LjC?=
 =?us-ascii?Q?mmb50y10lxr9mFEUElJEO0tci1lCK4z3+wWCqecnLUdYKcWxRnDgK8iLiLQq?=
 =?us-ascii?Q?jT7/Pr12t//VLX2oQ5hkRJqLY2MeAS3HEJyfLZJ5VOxQ3tCwQjeP3HF1vNtd?=
 =?us-ascii?Q?QBidAJJGdf91QluqD9CROp95iAS4ZjNVbAhq3461ItGoRyzBBE5fGTOKp7wZ?=
 =?us-ascii?Q?Adu9rAP887frC5Uz1cstUGhXmOcaCm7rTEuflKSg4maomdGZu5rlKTatMFiz?=
 =?us-ascii?Q?ZS3zzOyFVqzogar/pJu5Il7vvGgZwcti2vL7uiapT0W8ZyrhGd7gKx+fG4Fn?=
 =?us-ascii?Q?fYZ9XGPZopu/PFzD2g1dVdmIFyN0xgNWSnTvIF0I6YKby7zOKMWN30v/ZqY6?=
 =?us-ascii?Q?HfdOkp9InBWkhbTnI41cCXNQc0xvhPfp6DsJ3lUx5TlD8cO3dqLa7BI3j2n6?=
 =?us-ascii?Q?h0GqOwTghVQdRJ0vxkNgodN04kZ0XBsMSxAR/GE6dWkJrrtva2PrGVg3+eNL?=
 =?us-ascii?Q?v4enoyOwxZAxms5gfpdQhEqucUhB7VAMqvXed+QGEA5buPOMnK5rcisezsd8?=
 =?us-ascii?Q?EMcQY/IQqCHXKdEQZaCjlOvRITs88WCWHjTJexOTGMxfLLTqhAPidQFy7+vN?=
 =?us-ascii?Q?/I86vaRt7lYkrD3mcBCwdCiw3FA8Ihfn3zG5ddR/Bzc8FYsPFCoSTi/Gi201?=
 =?us-ascii?Q?aGnNznW7yqx50dZpdS5UQaiLyoOGGEp0C+K1AOujWC3DFen1oDt1Tm4Q6i3I?=
 =?us-ascii?Q?e/g/fkxNgRs8bEsKjegsgI0WzklQ/PWZu40sAT5f8x66s8ah7Nr4wgsDfM20?=
 =?us-ascii?Q?p/DDfgglX/s3GJKmSInDsJrRrK57nCyD7FUek4MpPXbc8IeOf2LOex/hYXOS?=
 =?us-ascii?Q?8xmEq6WlZ9XyIX9zgrWNukneYBwz/2dla7eaFqbwzh4Rx7vvOYAo3Ebxq+jK?=
 =?us-ascii?Q?UsLXHqq+CKu2Yq4xZ2meXKdE8LyEau1cdJI6jqXhD3KwH08h0qDuTLsflpM2?=
 =?us-ascii?Q?IYsyJ5cPkIcChYSX08NxvJFz?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac28b7d0-91ee-4e1c-0d30-08d9298e6b12
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:29:51.1600
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1NfMRQ+zV7qSIsy1inovSuYtFh60C2ywzMSWN6X2ZPjQDlnDCf22/4EOluHlHAvlv8RtIeT4yTNu66eFxNlx6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7595
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
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

