Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF408581B36
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239729AbiGZUlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:41:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233443AbiGZUlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:41:47 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70053.outbound.protection.outlook.com [40.107.7.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9050237FA2
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:41:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dB7GlWwYtV/w9QHPIGiX31LyiGMQkIQmfwqrBsC/CHfpg1xmMwkF27zb1etdfHJOZ1ssAvK8RSRTg0NOpiBaFrQMbPQOfi3gn1zY/plwzIUrUU5HkkLl5I1iH+19ep31TblfHQbkP8xi6zkRuB6F2yynxP5wOGN5N5O7SvgSxlFMNGLkZb/qTOaaBbql0kpGEulrVwG70fve+bcz0BuPPYxh3Y+gFiymoKTNZBb7PF7tmZ4+7TXGKhJ2RA6retcCMmGro0b9jFCzWnjTh5hXc0hqHTTSf3h4res+g7mxY0+ha3uSyJFsP6u4TCx6YaWv3FYS8yYD6zPwhyex+5NR+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vgKd5oy9KhzHO29hnhhY7+SyjEV2zUMNv9ZsFs9aTd0=;
 b=GSvWTMEyL7Ojo9L3zbszX4OBNiDUzPnQJlDjGufp2bRMSqE3GgWOaMbt8qL4x7NrmCLtocTbDGYmD6izPjnNmcdCJ0ggPbRRRdvgOE78205a994aG1bJ1FGsbXTG3t2SlCCr7YvHPzfimzwu5L2yUd8Llt8ZkqSRenC61jYKN4g0dGSaSxdwhJAyFzQqkNgRYw6TNc571FBlR1GIVtKSc/MceOkJsij+bfZ0y873+IQj9vSbz2c2G4T0OlRq3MGbu0IGZajc++26C/P72fTy4b/+cCVX1jsmrpaH1dZvHeomhEYKqbO2ohlMM4V1oVQTGxBvv/RJqug83fEMrpxcKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgKd5oy9KhzHO29hnhhY7+SyjEV2zUMNv9ZsFs9aTd0=;
 b=EkoYzmeBi4gYkLBO2U+E3WJmv8ps5FTxmHVFy7ltlhO3Ejmt06/zC3Z6LEMbQL0EYFY/L/8cM+oqxW/wPXzc9xkMfxndRgtTZk7FK1dByy1/peyv3qIHtdLhbPG7KixXuBAcCYDGhJD0SuR/JpJOL+Dbee9J/xYrZw9BrhFoFGI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM8PR04MB7441.eurprd04.prod.outlook.com (2603:10a6:20b:1c4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 20:41:42 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 20:41:42 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>
Subject: [PATCH v4 1/3] dt-bindings: firmware: add missing resource IDs for imx8dxl
Date:   Tue, 26 Jul 2022 15:41:09 -0500
Message-Id: <20220726204111.733647-2-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220726204111.733647-1-shenwei.wang@nxp.com>
References: <20220726204111.733647-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0038.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::13) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b609e31-0391-41a0-7a49-08da6f473f08
X-MS-TrafficTypeDiagnostic: AM8PR04MB7441:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hgJrTVWtjMD2J8DDyj+CNe23xOeN1MjOFMUxm24FuoYBNUbFDepuZYq4JDIWXChFNT0gK61/tsPDwY+2z/4gBfSivU24/pkar31tyFCaF4AToIYTkhSJ2qfMBwQuyWXq4xxLhDjcnJ1v3fofFlnnhRmoDPJKFPv1duPACPDdJi0VANIp8hhmSPOwGaPU2/oiMe7Pcab2ucTHhwFDmvtvL0HY44JW+wKrf7Im+6ilcEbnP3tzFizU85iTCWruIcwSNVfAqHZbk22mq1CEKgTshLFoWsYXNRjare6Py2HEMYrO4CF1zXFmJ7R68UWk/5O0Pnb49r8VznbXzcoPgHaSCoXJZif/muEJ1dkC+BHcnXVRgHy6Tzv2oNRfxmJkVthkZgViAdzv9Z7qb8iN/icivkHNjFpDgL6o86WTpbaES3O6opA3iJ1snutGVte7mPSBX48bH3ldc91OKuf6sR7E+w4uvIIMUtcEKt9lLzs4FkkEhvLVuHP4e6M6ouFm0aeeFumeEkeceFwcrKa2+ZuG2K5wkbjB44n3pt9CBYPfuGBhUzv5WdWm64zbGb3PBz3apkKJ10vlpg4rMbJURv+I3+DjTs6fLXJ94vRU9LaAfe3IqSToh0wLnhLF9OBzavXhGFKbG+bvlt7ZjET80ZJlNecN9igq6JntmKVDEOuAmBrynsbWYSB2VfTHjUv/SDOgORYKBENBSUvQ2tST5cq4nqW7PLJplI0IK+q7FiM4e69A2rMopKKtG7/KDsQBTxNe1xWrsEYvX/5of8eMpdUFOl21Qa1z9nGp9jTg6ybJnSSqM3PgCrSxSaa4c+GIn8Dr1hBF0Q+bRYH+jEHiS7bCl23plM8vJ+oHg4U/4N6b2vc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(2616005)(1076003)(2906002)(6666004)(186003)(6506007)(86362001)(55236004)(52116002)(41300700001)(6512007)(26005)(38100700002)(38350700002)(5660300002)(66556008)(66476007)(8936002)(8676002)(4326008)(66946007)(478600001)(6486002)(110136005)(54906003)(36756003)(6636002)(316002)(32563001)(47402002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3ONnEpHTkAOvGcQMOLw6cLJTPn+WcZfOZ0ljPpnW31KfuqjJlJNRuJUKxeYD?=
 =?us-ascii?Q?0CF3c1IKN/Td0Po16Hz00YFp2a8I6g26z+G7kJ7OfkZSFX3ZZGaMZrkCZ84z?=
 =?us-ascii?Q?R5cxNa1oBc1Y3QHnb2QsCXG0G1vA7MXkuRkbmjX50A46WJi3HSVXNHy0OGTD?=
 =?us-ascii?Q?slvClV/MZ+MdTMS58QqrsGxIIuspPbkoWBIjVb2+/eW7V0ITuPJ5fkGgE+qH?=
 =?us-ascii?Q?uQU4ygRs0YjVRjlmblWJ4eC5V7LgbPSE1SDaBxUQhgTkhD4REpQySeUpgBOV?=
 =?us-ascii?Q?ficMN/AF4DXX8GDSFEvPgvIdGAdmySayLItKoW7/Ki3gqvSB2ranX9xzUz5S?=
 =?us-ascii?Q?xn4TsKBVy9KdSuo7/E6432Zizn0txi6A4RVmETXIIV6SsxBqgN0z8I+F+xFl?=
 =?us-ascii?Q?w8RE/jZUUNoivvi7KIr/xYmc5imYCXk3X2vzmn74GCwD8mFz1U8R1ARbdc6B?=
 =?us-ascii?Q?vdeSDO5QVGSTNjvEaIvuMvhK6+pKbl9E38SC++ZwCpPEhAqSYQliffnDgDrM?=
 =?us-ascii?Q?bWnhhaTL5+ngub5Ysh5h4HAmInHKX4cdS+FRyQ1BDZw9xiTV0gTouVtTPLKL?=
 =?us-ascii?Q?aehDYV0XU3/uQvYWjdy+qNv1WGRcTzjwQ17wjJ/YA+O5yZnTBY0jmqH01GAG?=
 =?us-ascii?Q?YxWuDIQ3GydnEnVQF+Xq1M0EryUW/kRwJAkcHkCsBq+oZsJUir0MzOqCG+JR?=
 =?us-ascii?Q?Imby3shIhwLCZoJV8OCERV2ZHrcV9fDyxJjCQ+P4K5uYBSemP+M69UA4NKIi?=
 =?us-ascii?Q?cBTOqCRydpXdRLiMF4vvD5IwKdfiHlK7Bn25pCeQ5oVZmBOuClelg8pCLgMp?=
 =?us-ascii?Q?Q2VePMhJ4x/uZGNXMG91fX+6b02gLGYpibaeQ80kDBrrbbtezOfUgCejaieB?=
 =?us-ascii?Q?cQxE4+zLrWLOZvGFzKE9p2U+zh0TNHYVc7osQChv6XMBpf19LCVeBWHPi1qM?=
 =?us-ascii?Q?yrTV4fUDmt2iIoWOq2UZmmf4quBz48+iazRV3LlQn5LjTy8X6GGc2youwgqO?=
 =?us-ascii?Q?ixgZ/XI2TpFTgMf5Cmc1rQ1EEra1/039jrEL8VQsVXzpXjWCiUEybQluu64v?=
 =?us-ascii?Q?I29JiRirMnOousvWP9ZF9ePYlFwL7YUfBhVMwE/HzlkbFxKnxewzaWU3Zl/V?=
 =?us-ascii?Q?n4cQVAx97aZp344boyUZJdlon8AjKnERvQHr/vF1shKvr2rtuR+YNEZGu4wE?=
 =?us-ascii?Q?Q5b6aV9HXmx/sOTUUn7Srzjc3ejCF+6opB77UJl+pp5nblf9oinXBFk1G7hV?=
 =?us-ascii?Q?ZEC9kbfe1Oc2yUrGUeTj9aYxKozJtj/awHwbYXdfr5ht5X6oeHtZE1w+9X6l?=
 =?us-ascii?Q?eIsixFZR4Hz3a4sJBf2RIOzf8My0OL7Mf7OURaDot76l/NT3sFuZ4P2oc/71?=
 =?us-ascii?Q?BQEGeY2jqkIYsRJIyoINdtp2mgz2UmnskovO1QmJcQ/tjMR+gKYaGxzAWvFP?=
 =?us-ascii?Q?YSGLPUvBwNwXJWCzeAmDqbQS5WbnGU4hQcuWCl2ehIKFMY7wZpZ/1Uk6RRQD?=
 =?us-ascii?Q?uWArpzpJSxGShe3/FntK6FfzpA6/SPMg+zQlsdO8PTPxLFC0COZVQq7k7uRq?=
 =?us-ascii?Q?Xva/yQZrbuMJz6QSbBKBhfloNX+HFF8AIUiyVBA5lNO7qeHxaAYQ1JjQ+3zP?=
 =?us-ascii?Q?eA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b609e31-0391-41a0-7a49-08da6f473f08
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 20:41:41.9259
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tcbdeZ9kzswEJlnry6LCmj6CNgk+haHhRgVT3ZhApT3AzEJGL13tRcTiQiouEOdo14bnbdiugZgz6H/lEpesUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7441
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing resource IDs for imx8dxl.

Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
---
 include/dt-bindings/firmware/imx/rsrc.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
index 43885056557c4..1675de05ad33b 100644
--- a/include/dt-bindings/firmware/imx/rsrc.h
+++ b/include/dt-bindings/firmware/imx/rsrc.h
@@ -37,10 +37,14 @@
 #define IMX_SC_R_DC_0_BLIT2		21
 #define IMX_SC_R_DC_0_BLIT_OUT		22
 #define IMX_SC_R_PERF			23
+#define IMX_SC_R_USB_1_PHY		24
 #define IMX_SC_R_DC_0_WARP		25
+#define IMX_SC_R_V2X_MU_0		26
+#define IMX_SC_R_V2X_MU_1		27
 #define IMX_SC_R_DC_0_VIDEO0		28
 #define IMX_SC_R_DC_0_VIDEO1		29
 #define IMX_SC_R_DC_0_FRAC0		30
+#define IMX_SC_R_V2X_MU_2		31
 #define IMX_SC_R_DC_0			32
 #define IMX_SC_R_GPU_2_PID0		33
 #define IMX_SC_R_DC_0_PLL_0		34
@@ -49,7 +53,10 @@
 #define IMX_SC_R_DC_1_BLIT1		37
 #define IMX_SC_R_DC_1_BLIT2		38
 #define IMX_SC_R_DC_1_BLIT_OUT		39
+#define IMX_SC_R_V2X_MU_3		40
+#define IMX_SC_R_V2X_MU_4		41
 #define IMX_SC_R_DC_1_WARP		42
+#define IMX_SC_R_SECVIO			44
 #define IMX_SC_R_DC_1_VIDEO0		45
 #define IMX_SC_R_DC_1_VIDEO1		46
 #define IMX_SC_R_DC_1_FRAC0		47
-- 
2.25.1

