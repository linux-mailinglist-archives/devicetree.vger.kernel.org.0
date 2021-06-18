Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EB013AC41A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232515AbhFRGrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:47:02 -0400
Received: from mail-eopbgr50040.outbound.protection.outlook.com ([40.107.5.40]:36256
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232519AbhFRGrB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:47:01 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F2HkhGQEnQolM40AbpjKsND6dxpe+o6Dx4CK+Vi7t7bIukuHgKMDBYwQ0EHv3Fx1+qi+vEfeqYKEAMUYr215MMWz11Y5KNjGuqn5V1q2cd5P2INtwvibHoYvGg1Tl95dgEWfDtWFSQ49WyMBAXJvikxR3C0Bl1kib83fSDQaPoRshJ19d6c+NM70aoRfhHvHmjPnDsKt0hSh41pC1WOdRwxbMj1gwidMyynGowtaiQgLbZMwVcFfqRXfmwHjR6UtuDcoRXGnjucFVOIKVf5KxNJ5XoSuEoMmdmzUXKrPcHiSYt8rtq7Rn8lxc8+PvC4vBW3z0zwtCZScVk2xn7GXUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5BTeYk5/ALTLwkoiUnL5TayyE5eVtwqU2RPc+HH6kGo=;
 b=a3KQ+D8kzbHRgPLBlcrEyW7ve9qXcwwCNtqd+bi6DVv/8TfyceS7lGJw+OEev/1HOcYAyimNcRVe3KWPD/xNw3lwlGR/ULPMM5e9GCz+TLTzw4XWdeIl5wzhgUsv2R6Tv5AU2OIcDeOfuf1XOsMYOhF0GNAiqiuw4OJKZjQIRq78huqMIGsTx4dNTNeXONr64fl359A/4ch1bYmss/qatrc0Vq6ZUSLGZNEh4XCp1PlrMmVayWuVNlwXQG3ugX+B+fs8XvqWlUwRvClftBBJ0uNCEDTm6wvix3W3FEm6b0MZVWS/dHvsjNhos1EoXG1t7ea5goMFxuf1zYieg+xNEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5BTeYk5/ALTLwkoiUnL5TayyE5eVtwqU2RPc+HH6kGo=;
 b=pGCBChyQnWmypJrbTHeOqEAu4Ey3sPylybJ9NZsGp1k/t7XpXj7qp/0Y9Wl+zTPPRfRuNdg7CRVPo4GzyJzxnst5/ZGmKWrUg+NdtJMU34frvQdGp5RG/ako5swY+hUbDTgk+Fp1NMR/NtTffkRlGWCZJZmTBBjEpTfHeowG+iE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8140.eurprd04.prod.outlook.com (2603:10a6:10:249::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15; Fri, 18 Jun
 2021 06:44:51 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:51 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/11] dt-bindings: arm: fsl: Add binding for imx8ulp evk
Date:   Fri, 18 Jun 2021 14:54:20 +0800
Message-Id: <20210618065423.3424938-9-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a218586b-4673-4fd6-48de-08d9322492ad
X-MS-TrafficTypeDiagnostic: DB9PR04MB8140:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR04MB8140BBC3B53D5B4289334287870D9@DB9PR04MB8140.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S8+6L6qeXDGlLjfoWjio6nx0QJ+LDWZi7IwrpenINXNBpUsIY1uWN5vcXKp2lcYexTS7exQWzaopbdZS5sGCCojPKHKq6dvRNcensRQVy0Pol9A6S+8zIhHbBbKfbe1SDZx4GnaUEizi+x2Hfd6ZES2g4B8Jv9f2oWzlU4wBStBstcyL4vlGW1ag7leMHKdBQNgqHBlmlrkSCnTq/qKB9nmmGY6h1eqNE6tjtM9K297VAwLUOnDf0pKFirZ54++14RT/xDH9pvqj90SEEkT03m47sbsP5zw7qPxE84FuPJR2DIDRhgMYB6BJa+8OT2fU06hKxYiOltvB+kOspD8KHbjD1wzt3AuHyYGXgpQCXb9P5uSJ69bp3IEHxLRRHYcbiDWF0TmXWxoWGtqGpLAHRVtSXCW8Idp072LwHT5HdN5VvOCQxpEyQU7NJZOIaqZDQv8cUZkgffDpk/Vo0HJfccg7W6uybOCmfcZJ9QEhhy8hB/yFW+FmqQOHfDeCYmFHBNmKWM268j5zEfQElO9wS7vWaiL5rujaV3Sg5ZiGYAne8ajaH1S0zOddBklG9xktLwNznTwrjmcK9QRBNIZlPuk6wzj4V3/d0zveRVOAXB6nvoLxzegAR9qHzrahKmRvqdjNrfC/JgzVaU7ENC06lr5xxpEswqKwAfyqYflfzUuRDobVLpa9FTGRt+5rSSgr+pvE0q0W/UYCxVON/fyr1Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(6666004)(6506007)(316002)(66476007)(86362001)(186003)(66556008)(26005)(1076003)(8936002)(16526019)(6486002)(83380400001)(66946007)(8676002)(36756003)(6512007)(5660300002)(2906002)(956004)(2616005)(52116002)(478600001)(4326008)(6636002)(38100700002)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RLZDQEdQ/FqTabKw5dhziwcjR/1X1uwUKMm9DOv7nYNuq9PGqp34YjVEgWnf?=
 =?us-ascii?Q?ArdRjoPkS78D9mRW8fyUZ15SjsQ38jNB6V4/yjkiVULTqOFOmipWehw9QQvW?=
 =?us-ascii?Q?A1BcwKO2Uhw9uQES+ifyfr42QbvZSmualgYFIV1/AWQr+Se58E+EKyKhUb90?=
 =?us-ascii?Q?q28RAbcsnIFk6Wc4HnIFt5MgN0UY36V3VGXppHB7AyJEk7Emv3cohXk3BZtD?=
 =?us-ascii?Q?pk3U9cRayFeCo+BpNtkx75+lvvwD0kfuGYIoAH+5kgX4/YdGFrbeRcrXrprh?=
 =?us-ascii?Q?JfvoGbyd5xUyFgSOWd3NpHKpyN3AeB3PPQTaIfZZqrwjJg/kLTtZtAA90yiH?=
 =?us-ascii?Q?RwwJEYu0gqEtwwgYRsd5Mcx4cvUNowmSa9PWbxeRw0xEKk1wD1Sa4KhfWPFJ?=
 =?us-ascii?Q?lkhSIspVk21uZSm3S24hD87fShopI4NxG6XcadgqEDLGK3w44JLFJchEiGvj?=
 =?us-ascii?Q?nidMvVyxgwCMdmGWkuE5Zz4CtHiwWcPuPJbceKq0e8JcFvqtsLdKq3NT5vh/?=
 =?us-ascii?Q?OVBYl7JOsKqY5/tKcxUpGDBilIhg3S4ZmAM6J0yVNYJKwknN8CdwTNTnXD3S?=
 =?us-ascii?Q?+Lfql3OmftB+0my6BcLrSlcWrrtNvEeO5tFB2BYC9JCkgQT4BbKeW0LxnCw2?=
 =?us-ascii?Q?rMLGXkjdyo8mpUMZf0R8KINa7+5Nla38V/pP3yW5RP8zNz0On5jviggd7rY/?=
 =?us-ascii?Q?lG04MxlswraaaUVHL6hXoL00pK0JGQrYSXT3fR6dUb6UoPMn9Gd/lbyjtXtT?=
 =?us-ascii?Q?8qldbuZdrwCYww6f1SvXEw8o92U5HOiSkIe6oOi+KEeurGv+oppjwvzb3MVk?=
 =?us-ascii?Q?ef2od65vdSYvrJd7GXoadB1shnWC3DdZqe2UYlMYj/go69Od1qs+2xUsppmR?=
 =?us-ascii?Q?jz9fmVoILNU3nUyuM2cBS5gMTzfYfe3QQEJUBovTWLFFgaSMB7QKQJcS96yH?=
 =?us-ascii?Q?Qf+TXTqr02/jXkmbwM9JigIR7bRa22frdonsw69mliw590PCmemi/ZYO7bHv?=
 =?us-ascii?Q?l4ENALXdBGnSztr3UuV+gG4cvsCtt3opdMBdKln+ndAHDHJqUpOgZxgs/UxY?=
 =?us-ascii?Q?4M4/az3f9ux4Rzf6zLRHgcF8cQ7LelN6UkdQQegq8XiBIuezcWltsJyS37yl?=
 =?us-ascii?Q?wKKbvaT2gQMVUm23dATJz48bEa7neFFRPCGJboHyBSghV+EJn/1WwpTA1A7i?=
 =?us-ascii?Q?WqeyjhRwIGw0OqmxQmlkR7SFBf2GSm25d8X0vrSdm76MIyx+eLcrfe3tR/78?=
 =?us-ascii?Q?fWGSc8lmuYY6HLX6ZpUjrx6cxOAU6K2IzSftCStYnqKE0W1RKyHA8vYb1/X1?=
 =?us-ascii?Q?0PoFqMdddMUL2Bk3gxsqzw6H?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a218586b-4673-4fd6-48de-08d9322492ad
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:51.3584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YGmS63YxyJkYiGauKz7CjUVCGEwDc2wDd5iF0HnJooS8yj0W5vPqHixAkhB43SZqfGNNDphrf41OC+xsTke6qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8140
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dt binding for i.MX8ULP EVK board.

i.MX 8ULP is part of the ULP family with emphasis on extreme
low-power techniques using the 28 nm fully depleted silicon on
insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
based on asymmetric architecture, however will add a third DSP
domain for advanced voice/audio capability and a Graphics domain
where it is possible to access graphics resources from the
application side or the realtime side.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v2 changes:
   no
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fce2a8670b49..e68a1b43b144 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -788,6 +788,12 @@ properties:
           - const: toradex,colibri-imx8x
           - const: fsl,imx8qxp
 
+      - description: i.MX8ULP based Boards
+        items:
+          - enum:
+              - fsl,imx8ulp-evk           # i.MX8ULP EVK Board
+          - const: fsl,imx8ulp
+
       - description:
           Freescale Vybrid Platform Device Tree Bindings
 
-- 
2.26.2

