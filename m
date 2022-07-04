Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3F1F565796
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 15:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234771AbiGDNnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 09:43:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234459AbiGDNm5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 09:42:57 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60058.outbound.protection.outlook.com [40.107.6.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70C082180
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 06:42:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNYnk434BDHtv2JWKFCxP0onOvfdyT+mMBT20zuK9ezSsLmNrNTfP6gqCP4Op0hZPEPtffIdRrSnlf1GI2KKoXSDXWydzFuza5KukOX00BJf3JWJB5MAfdAka4HtGWxjZtQ8msIIWQJCRZOKVb3V5ypqbBpDKFkiRUzSi5kZN+W7PDPxjkr+F3bZMduAlrZxRXS2RatmMFjtAPLSi9msxyw/X0EZLxcOFSsrEfjt27SqfsQ/mYTdt6aMcW3cKzuIbmmA9g8b//4/UTTGftuKogkizR5/Yn7HDDENXbE3GcMob2ZvrmMpIPbRVeudk9Cz3EUbCJvGOH2cdiJR7y5XwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cyqQlN0jbBi7m8+P8myzBM1xD9tIwqm0x92RHu3ODJ4=;
 b=RAJhWmpbbTVywGP0UgKsTrlRWfhHWAOIzD3Mzx0/PHeCVkn9O4XZVJWhmkjuj5KhLfuqIsChi1JtNheo/qX/V05SyJ/+5boEacFps+6gowLH/d+y2o36mvpZ4ZWIOYP0AMrKB8HxXDTEqjkDWbxwehrfD/NbbkDMhX33l0nnAwydkfkMkyugNDFEnNaygxqZEiavPwM9eNw1WhrieqA/ykzP01yKFJ4EI436HQFUYoi2FjKBaoldsJDUUoRrNqMJ47gsfvHQb43Lm22azHsFAjBpTVmb+IUEOLaXKoRpFcdVn7zIMISNaTYGvWKQVyr6IR0ARpFdaCUw4YurR/gtcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cyqQlN0jbBi7m8+P8myzBM1xD9tIwqm0x92RHu3ODJ4=;
 b=NPbpP9I8poT/xHiZf+hRisiI/LReCrlytiDBjIG2ucLkkC00gh2O6AwollthRawZRU9p3DawfSgZvzykrXSEt3u4UmTjzL/u5QkbbPsAtkKE/2Su0LS+4MQafJhOs9gY/00P/JCi6es0NbAp8WA4CGk5wTz7Tw84ZvYTJrECDu8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22)
 by VI1PR04MB5888.eurprd04.prod.outlook.com (2603:10a6:803:ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.19; Mon, 4 Jul
 2022 13:42:53 +0000
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4]) by GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4%5]) with mapi id 15.20.5373.018; Mon, 4 Jul 2022
 13:42:52 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     robh+dt@kernel.org, linux@armlinux.org.uk,
        devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v2 net-next 3/4] arch: arm64: dts: lx2160a-clearfog-itx: rename the sfp GPIO properties
Date:   Mon,  4 Jul 2022 16:42:12 +0300
Message-Id: <20220704134213.13100-4-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220704134213.13100-1-ioana.ciornei@nxp.com>
References: <20220704134213.13100-1-ioana.ciornei@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0071.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::7) To GV1PR04MB9055.eurprd04.prod.outlook.com
 (2603:10a6:150:1e::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb616569-6977-4199-d2e1-08da5dc3179a
X-MS-TrafficTypeDiagnostic: VI1PR04MB5888:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RbFzN2bdYRe/+dUCd1sMso2Q8NjpPsHHAYvZ9pT4c/RmytTZI07rmNwdOFw3IRxSPLJ7cCj30v3eRRPJ+iP9yw3yGc9dNhosxFTSYMUwsULHtGwc6jtIAAMmrbLHbZ4PTYtTgxI6BskpOP7jQfUfCS0rVC6QyR2xoR44J7rnmiw/tgcZ+cGM6iESSNafj+y/J6jvGmolgsELiKfJj2+3t9dUFO+0J9HEQ79h/3ksJlWSEjkv2M9R/TOfts9b1BTtG0ufPKUgnzyfcgzAPBOVBMngVENURO/ja/aghz/+LG4+Yp5bm+AJhF77gS+XSeoteKi6UrNpgTYMtwACwWoNLsibi80q3pJzWJgxA5YYGUJUFKiMG+Am4HrU7gAOKtjaw5f1sXfLSSUiPG37BhSfJNyyxkEdnCqC0+Kqn+qrtT5UyoD3f77GZhRMNQ9rJeDmDoBkfnoXyGbyVs27MiyeNf1IXWn0U3ieLEsLx+gKq+GhO5jZ/qfo97kHvYmRjoVpVQ9U3a3g0oZv+igW1+mdPPMTjQ3C2k8pwc4S9M0G4Zxg0fYB/y8RwBI1NcxOLpviZgLMM14KRR32CI2o+ypVsUZuv7qurJp4f85qTthgq/7bkfV4mKp2H6fEjZ4VFF0Hs1ax5hf0jQJHHLfMggh5QXM8eBPUCjrG77G0Au901hYddUJS3ScE6qOZS/Hvl2/PVcjRPv1p2oEhd3euFsgmv1hrqDkRrc4H0f1Spq71knwI9ZaTgRELe43Plzkjb5tM1o7tEU9eGUwXQN0sRy7ZLz0t8QxOrl2Tp3vltzDwHZhG5NjX7Fitnqi+5KmXTrdM
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(136003)(396003)(346002)(376002)(366004)(36756003)(316002)(38350700002)(4326008)(8676002)(66946007)(66476007)(44832011)(83380400001)(66556008)(38100700002)(41300700001)(478600001)(6512007)(8936002)(26005)(6666004)(6506007)(2616005)(1076003)(5660300002)(86362001)(6486002)(2906002)(52116002)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Nlf27VzwgYiZohwhbcRq71LS3zFpyIuO5rypTQ6vqENuCF7WoIM2hI87DTwK?=
 =?us-ascii?Q?btS2OZ7quZuFeq0ctBAWrm82X9nxCoUcSSmCmPCqMUdKyozqA8P5M1kt182P?=
 =?us-ascii?Q?G7sNe2RRYUC8UmKLOu2o9ZvBExWSdcDaWsdOJjsmQKdJWNSD5bmMvdFIlqv9?=
 =?us-ascii?Q?LNE0GJpaBJHpkatNbgEXBCaE/g6X38RVr3J7MPSgOwjB19Lm4J95+kugUrdk?=
 =?us-ascii?Q?ICiyZexXkCvJY6asSj8lNp4N/5I2UGm9WouNDAeZz4PvMlmblzPGHNzOtJbQ?=
 =?us-ascii?Q?2y3HgR4hfxaySWUZ6Td9lEns4zhlhIHSUTz29OZGcbsUMZzTJ6GrkPl80tnU?=
 =?us-ascii?Q?SXiLBxYaLoZhz+tI/OMiPpM3WrG+I4wfgWc2JyELtDARsVMIdTM575CF1L8A?=
 =?us-ascii?Q?v7AeekQctAv2lXAnkiVdU0hekd03Dqi/6CkqPjBfUHL27VvXNKYtEAh3jk/2?=
 =?us-ascii?Q?Ilrbyh5lSqP1wW/82os5p7WMH4iFSrrS2qkYEEg35034+cyHa7tjNKEXegPz?=
 =?us-ascii?Q?zsZdvjl1uvJOkDz+NbNw4QGLDIap5R+36GJrgjhRvrBLnBxGJ8wLcmwefhMS?=
 =?us-ascii?Q?9g0xdYnhRvxALtDIWk4sVR9isQF0XQOJbxbOkF1TgNv0ud/XDCJhzxeoqycY?=
 =?us-ascii?Q?QKlWea3eaEBhWrW9t+TbihJ0nDDTQi5aE60fUQw8qK0xBBeLvP2YzQp3Wih2?=
 =?us-ascii?Q?t8MRfQPzO/OprCkC9QYLq/5+Qlc642ivTBDySpjS7Ggm5H7TwNdUl387RD8c?=
 =?us-ascii?Q?V0KgsxEJxzgiyvn+97dHMPdL6r9+6KDAZEUcVZEzfy27quF2Eq1SzaPDy2RJ?=
 =?us-ascii?Q?tlRD4MJqRkMhC0fYU4K0jTcKFh3Dkb0iYXuMfmFcGe1NBe9Bio/9HNghSQMj?=
 =?us-ascii?Q?+lnSr73PNiQg1Bn7TVo42zUC27sVGRAq5ruppkxAJoU7KGM4lSvaRDiQB+zg?=
 =?us-ascii?Q?39iPAQb+/S2yAUd7b8t/F2LjKt63+NVc6zyZNLC7amdWBnql+ehWhai1v+dj?=
 =?us-ascii?Q?9OfhGmBM+OrdA7NhdWjezVmEHHcXUjSmzkr7Ao2cGfqiHz+2luPA+8DIl58+?=
 =?us-ascii?Q?XCGvWKwdNqI2FOvZt0B5pRulAMpo9lYBieNuSVym3qjVF+adndg2B6jH54x9?=
 =?us-ascii?Q?NhsxuVZ3oyCHmb85vepl0k/AW8ehqESYN/GBuyfdh7gaEtK+XQfJU6PXU+fE?=
 =?us-ascii?Q?g+zDBtK+RHSNbtOSob5Oy+xXn7icSE8Ni9BYeMuT37E3xEPralbck8EbCu+g?=
 =?us-ascii?Q?+58DwK/VlkjUEOIsksYhHUJzkz+QU8jzBT0w/dgzSXG6JQaqqFgwo7i2Z3ev?=
 =?us-ascii?Q?mZijHCa9I1fgyQdQYp1ArJcgNTk6SZCZiindAqYRd6YE5fTeA4XylnPhlRZb?=
 =?us-ascii?Q?fcuM5HSfERPMybRyoNov1kvIEXspI5D/GbJrsORpzaEUJ7rOWyUl/Y6eu6I1?=
 =?us-ascii?Q?+EVyWhfm77Lv0Q6YFDDYLNK6RLpTRS7OO5AIUZbujCU4/ihaGMEUtc15sz9o?=
 =?us-ascii?Q?zJ3+iksJYeYpi4kiFdJkM4vvFJ9EDzbLWDroaMV0PZU1WUC2n7WuXtvQsp9+?=
 =?us-ascii?Q?oIk1GsCF66mcBkLOSBkZ0ryVCYgESL6lXn3rQVoe?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb616569-6977-4199-d2e1-08da5dc3179a
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 13:42:52.4093
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1rjNswuxb3fqSqRslS4F5y3DhNeDUADGHpm11oSC2x6Tcx7T4gkWhVkGsKRDauQq6Llo8D34IrOiTxoOrZmCiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5888
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the 'mod-def0-gpio' property to 'mod-def0-gpios' so that we use
the preferred -gpios suffix. Also, with this change the dtb_check will
not complain when trying to verify the DTS against the sff,sfp.yaml
binding.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - new patch

 .../boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi      | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
index 41702e7386e3..a7dcbecc1f41 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
@@ -34,28 +34,28 @@
 	sfp0: sfp-0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfp0_i2c>;
-		mod-def0-gpio = <&gpio2 0 GPIO_ACTIVE_LOW>;
+		mod-def0-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
 		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp1: sfp-1 {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfp1_i2c>;
-		mod-def0-gpio = <&gpio2 9 GPIO_ACTIVE_LOW>;
+		mod-def0-gpios = <&gpio2 9 GPIO_ACTIVE_LOW>;
 		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp2: sfp-2 {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfp2_i2c>;
-		mod-def0-gpio = <&gpio2 10 GPIO_ACTIVE_LOW>;
+		mod-def0-gpios = <&gpio2 10 GPIO_ACTIVE_LOW>;
 		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp3: sfp-3 {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfp3_i2c>;
-		mod-def0-gpio = <&gpio2 11 GPIO_ACTIVE_LOW>;
+		mod-def0-gpios = <&gpio2 11 GPIO_ACTIVE_LOW>;
 		maximum-power-milliwatt = <2000>;
 	};
 };
-- 
2.17.1

