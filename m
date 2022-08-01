Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B46235871EC
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 22:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232936AbiHAUBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 16:01:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbiHAUBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 16:01:44 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2073.outbound.protection.outlook.com [40.107.22.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74ECE1A80C
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 13:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WaDJfBxWFVBZM+viHpKAkPGbfvk1XXdjbaWOmeY78cfMinsNsWj+7y2eHOoCxz3FnTBj4jHG7KeRReXwkwhvcBCjtppb2E7twcEiN+3ZMStHtbfNr2XJu3fW36P4A8U8GC8nU4CGNKlqUdjlKhJQJZIBGtRlO3ivRB3Sa/NyVkdjKTaYhRN+/KlNsp5g9komb8YkgAVSkog0+cNFzJVpOFOKcbPq4IxFg9sPvjVeJju+ut69K/fiEin+TjE+hYDKI8szkveFUQxmlsZm7NVbY4hRc9VOsLGHOoKc44/IUAwfuDIroocSqCV9nDmRRE2jiOuDfOH9mH0rdmoglp1Z6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChUDk/NGdNqq6v60GB3y7b8JN7h1MwnKILWSXuIZi7w=;
 b=inyF5BwTK4YVcIQOXTPyncSZYW6eHiIzFpO/NHE02ADNyXZ1kIeZJw9yFL+yBv9i1FiMcR0UCblXxcoS31gYCB0yQK0n6wU4tWY+qNBemrcbphhv3JT1ws8a5/HF+C0mg31+Q8IBdeLqrAyB088945pPig3YwzK3lzOLqTe2PrYU64EMze7c7JKHU43y4yVCaEmcnKlioF9nVKSr9InzgTlCkH4EycrnM2xptf2AshvgXJ28UnZ1JkmE3axT1BbCWvmVBBWx+ocm7DZ407rdf6fmexx+Js2FsuMWgdpbFwFXHy7KaGbQTKVYxqHQMimg6Fe1lZpbBG3iolNj01opqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ChUDk/NGdNqq6v60GB3y7b8JN7h1MwnKILWSXuIZi7w=;
 b=XWuJQ9HTpmjwloSN9UCKw+ifDGzmZhRlcqwCCjiqK0A4hKybBfYxyhmCwcDGTb0sej0UhYxg07fZNdMwy6JpJImmJ8gZajyRXZgABwBR0YNETOg3VRzhvA//zYhpfbJV8CHfloPN7Rqzc6477TRmECQT882yGcs2FqN5HckC/OI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM0PR04MB6516.eurprd04.prod.outlook.com (2603:10a6:208:174::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Mon, 1 Aug
 2022 20:01:40 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca%4]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 20:01:40 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/3] dt-bindings: firmware: add missing resource IDs for imx8dxl
Date:   Mon,  1 Aug 2022 15:01:19 -0500
Message-Id: <20220801200121.672619-2-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220801200121.672619-1-shenwei.wang@nxp.com>
References: <20220801200121.672619-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0213.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::8) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 559e5eb1-67d2-476b-f460-08da73f8a5fd
X-MS-TrafficTypeDiagnostic: AM0PR04MB6516:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Wg5hZpZErqW2MvCIJAWjdoMNAQZyCuW3tV/y9w/pyuKXuNjZL5ACYL4hrotiDjXdQSZxe/9OUV2UYExy3qtfTdNhVRWJZzLHxBrsF8kVcK7siqtBpfuSfZ9ry6k7zKHJb8OPQSbAqoYMFQ+8HE/yKGR+pvfC5bWXhHbuqxAEctM8AGujTVrqTY9SJ3AoDokaRpVdb+KQIy6wZZXw59As4GfuhKGJyHURLfwmDN4ScjCOd6Bql+vtQDVdG/GA4Nf3aq1BWy0zILhgfSscj+/kuPn8Iwdkxr5FTh51fE8wFj18BOiRzO0fbMMbibDsV/whMJ/Vivo0pYMAFHwwkSHWQ45v5ecEQlzaZhMOMZIllqAHEFFe08Ko3JS44DmDDkJZO4NWNaRHHK/12a7uRkWKRezmzxTWdw4BQC7oNEuA6Volqou52emOPszXHuVtYeBHn9s3ueF47gOsyUcenvLVGwbwzyoA4CACtQB2jKLCd7J5o13Z6MJWWxmoXwelroRxbPx4mBTYqsuH3FWeaepiH6XRazqgy4PrwRzACsAIMkiYvNxUudXa/JW6jjCHudJ5CJ1KzBCaGDIZSk83HD6ihutUNQ3fHWsarVgnh092icZpaliIAV485yRmWZMOV5TWPA85//HogahsXh9HCuhweky14vje3NU6X3T9Wpx9SEHrBfEoEUHcELlGwbkbbFMnq8bOcFBtL8x11r4gygroZw6zUFSt0jUBPzXj3APJSpZbLHMxTJOqktDofGfRzkh+aq2UwS49ruT5cGkk8ougOFGPuZlmT3GsYZNIRt/uCqUfbA+9jD52aSy0XCyY41aaEJ8Zq4DEL08IYpIMTeT5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(6666004)(6506007)(52116002)(41300700001)(26005)(6512007)(2616005)(186003)(55236004)(38350700002)(1076003)(38100700002)(5660300002)(44832011)(8936002)(36756003)(478600001)(86362001)(6486002)(2906002)(4326008)(8676002)(66946007)(66556008)(66476007)(316002)(54906003)(110136005)(6636002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4SF0NeB8SOBV1S9blMUnMKvmhhZHW19aPdyQyX+NmiD6ZTNnsIC7UmwIlECp?=
 =?us-ascii?Q?2lCq+nFMogNQQAntgf4+Makkocf/JU4M90Y/QNwAoy/mRNYTEFt2OFeO58h4?=
 =?us-ascii?Q?3csmboBVFeCtM4J55NLMOmzefDnzZJ0u6YVn4LvozVLS4kNy9Y26z7GH9IOj?=
 =?us-ascii?Q?i3w9devmZ0ryPmdtOi1rIQfeNbcxR5C0wl4X9ltrbog6PzVTECnIlkZzzp1T?=
 =?us-ascii?Q?AbHOhU3XVcAaCBHm8alKwS3xxRb118kzKfkRsqfDIZzdpS5ZoUZ/ylqH1swf?=
 =?us-ascii?Q?Hjf9RRJUd8ftkpF0AneoDN16e2IProOqCXBVZuzOkP0EfgFV4JdSDpK5AsWL?=
 =?us-ascii?Q?EW2sF2mQqcG8aNZrAx79NfJUtQ6PT6g6ShkcU/jIM/0a6VtAWwuh4VlARWG/?=
 =?us-ascii?Q?9FLNudrc8v9LugFE+kXKgaqcCCNpgMBCk+BVhqxDtiafyKfyIu08rbzZtgZo?=
 =?us-ascii?Q?K3noW6Ip/5VnghunQPj7ZIn6QU2Epy1zs0p/DJ97CHy+GtgnJT9mkqC+QXGz?=
 =?us-ascii?Q?AaEol0eKBRhFNBPLOKog3lpkQxeFZojW8sYk7lEjSQC3KKNShFuGctaV3Xon?=
 =?us-ascii?Q?T9sDsylVenMhnfZpIFN7m0wh2Oth8NWmiGT2FfpGT4DfmxKhHQk6frsf7DFE?=
 =?us-ascii?Q?rbgCHGlWR3/9dOgeVBvgglgPkD3t9VMGBkNdlfd0ZwOD9vnr1fzT3BTSgpbz?=
 =?us-ascii?Q?V5qDs1wLKmaOx57sv0pkJkLMnwdFlpKY+G91g2XWv4nTPL+qibX8ssrxS277?=
 =?us-ascii?Q?JaHVj7gUyGCviaKer9COz54MJuWDNEMo70sYqSOvMEoGdH/cP4U74FUe43I9?=
 =?us-ascii?Q?lEPxVnOjsoN76VamiDCUodXVhBkZWWNSdPMhpJlRVc3MukTPBsjmzrsp+m8Z?=
 =?us-ascii?Q?LrHRpfvEDsXNgS3nx6tKXyKhwRi8K32mdlxZrljdUpjxUAyPA+JrlDhfDvN+?=
 =?us-ascii?Q?wIhRrajllmAy4FdbAwZbGkZ52hMGAOCL/vtedNi38sQ3Jv6yR63kXhv2L9ZE?=
 =?us-ascii?Q?+wGdMQl2ao4sigKcaNm29jyUe+E0KzVs8EgQVTwUSCGZk1W21Kgihc8jKwU0?=
 =?us-ascii?Q?fldpiuQ+Pzf07J0iqliZwfFBkXeOgHIF6gXwD9HnOMVIwlYQx2s3mWLgQacJ?=
 =?us-ascii?Q?aBH0L2O+QUM8belbZrF4Pxn/CU8Ye/bRTb2a+19Y2Bas5kve6TY0ux9UdKgp?=
 =?us-ascii?Q?Gr4PKI2wu77UfpsXr37z5WSVrbBCATC2HRbdnsr5cPvKe4y2tfiW3TQUB8TZ?=
 =?us-ascii?Q?bBsFrYEyp2E/P3+psa60RYDg6+sybIBsfq/dXmqB706pdSPULnH89MBCT4pX?=
 =?us-ascii?Q?OvVmXetPqIPstEOF7D+Xf3IcBtO9AaAhB9BAL9cU8LURb/BbqT4DLE2dlBjO?=
 =?us-ascii?Q?vBigMc0FcjLxiRfgyzN4qzTn7cu4z7SAhqfhdJeY3Ro1GkgQbOrL7SXHg/A4?=
 =?us-ascii?Q?oOdV0nE1L2LkcLb697FVckry5vGws6xJWvr5ZRuRHUr1cBQV0zl9CxYmBQuh?=
 =?us-ascii?Q?FFHAwq8Ca5aSAxdk0kDNTUM8qyI8wXr48RMOkei1iDLfM722SJ3B20TtUv/z?=
 =?us-ascii?Q?VBdzfh2Uyg78tafnfbMwrd5Q/NslQ1d95zLOApyj?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 559e5eb1-67d2-476b-f460-08da73f8a5fd
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 20:01:40.2344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ddy+aBq0LthwX42tMP2eeUv32EMMsLXUH7EZkt1p6lh0xMYA+H03pQZDYOVjmGYfsdle9/hyAq7xqeWieg1zBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6516
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
Acked-by: Rob Herring <robh@kernel.org>
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

