Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 796AC5EA7A5
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 15:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235425AbiIZNvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 09:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235408AbiIZNvR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 09:51:17 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on20605.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e1b::605])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B151F5A22
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyJxU7tRiA7wyZlmlDhhhBTeizpezr5Rp6ux0DvilM3qsxKUgNdG5nfknfFIB6OKcWWwfxD5JLpF3Xmrgw4JEBheQabi/7SFbvkEM8UTPV29wIXn5JvsTaplPzQfSp+G0qFAbOzPoQwdvQlk5dF8rD61zV5eHOqcEvCvhQUXvJmkvRdYcXpLfGuYY8fanF6rQqpS4JW3zc2Kw+lOYTP3EuOuDrgpnSfr9G7M34r06AOLgXW45hIQqa+O5on/DB0Be+e9l8l7KUbNI1Oi0ryODevWq9MGO1Q56hts/0V5aYvM0Z9DlCQ/zNnMTnJ69I9jXDz095y14s2Z8zqNYmknBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0L92tA3oRHvEVXy5wOpR6OxhgpyvjTcl+3brS3L5SDI=;
 b=G68H12OHwhZSyWn4B4RvFIQKzWG41+Ze4lIXRVS78b3tQ5SpFjBX5iYpv9SvNJUHdoZu9peI6xS3fxV0hDh4F/EkiDWm8Wbmp0+k1MD8K3LJklUS7WPUi1VuazGNKAp9Ufigi/sDqur4rXGW4nkHEjVSTT5NGB67874vhAB6DeQ7JsnWXq8swC93QdO3oH7lAW4c/wyFmTljgt4o5skMyIJq85V3UiPDqzpgB4demZvFsTSmp37E1N2HOzk1ec377CdhKpJja1M4z9YXv68CWN23aYrL55zeYKEw48yuUF3iIoP8SQAT59s4YxAKQiTv4Q0+BXI6CtdSXMPeNhSkLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0L92tA3oRHvEVXy5wOpR6OxhgpyvjTcl+3brS3L5SDI=;
 b=kaWGrgXy1DVc2FDc3U1RNct8zR/EvFWN2gpfZxewPV1DHkyEz84Q9CnMB/mfZHkUKWc6QILQiHwRpnTY/2t8xdb7H6KPQ1CXarbxajvUi+DNv3A2So+qtaLHAQ5Q3LA7IlLxpoS81GROXXtcSfKTfqZ98nY3ne7NUggXZMz4xD4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8842.eurprd04.prod.outlook.com (2603:10a6:20b:409::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 12:05:36 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 12:05:36 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     l.stach@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aford173@gmail.com, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, marex@denx.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        xu.yang_2@nxp.com, jun.li@nxp.com
Subject: [PATCH 1/4] arm64: dts: imx8mm: remove otg1/2 power domain dependency on hsio
Date:   Mon, 26 Sep 2022 19:45:32 +0800
Message-Id: <1664192735-14313-2-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
References: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:195::16) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|AM9PR04MB8842:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cf29f06-8d21-4358-1e30-08da9fb76b9a
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aSLkXfj46Kox3/nnUwTOCGH0cjKq3EbUdurvN5s3fDciVy+KkI01P0NVuZxFcTbgNW47lIXh7orN4otDSrw3qkrimiSe9eGwvaY28OGe4XdXPmNM8NcAlKP4mQvSD+kK/TEbqq42hI042Z7T1t8LzTO5LIFa3rntZv8zVLn3M1HThVf8wHDeJ6DCjl7lm90Av67M8OlQIcUeQNW9pXaOEI2bP4n9T7ejUJK6uOSlMuT7mEeytROshPKEC48QS6F82IrMJ8QotGuhw+nX17qe6NX46AjECaTn1kfjOKzGH7kTsqAYKmhS/OcGTPhfdoUqTlwPiB/NPAJmBDOcYmUvyiNM5TyZ9ZG7SS90IooVVfGe/thZdrjtYyvmHGFBEVJU8lQNTRtL7asnYAkhMOGolF62YSWKfQjn61E6UvsvGwERKLo0vD+xMha4lCXD6Ua7wP2ReGlmRLzOda6wYEh/tM+fGdvfrcdYWPRAgmYLkRS7fhLNiJkIlJmZRVnoDiRx7BExdfyaxrCnI9S0Kuh65QGfCS8UF0Pal62hVZxvEHY1KO7lrNazCmPAuZy4zUxBSmAHxr5eKoxag4CyDcYihej1m/YNX3ma92VUIFScrgl8PtOJ36qlGe9dYR539a/+Ym5TfVxafk2TRSlBt1zOjyHKe+iVy2IvI0X2b98kEdX+wO+E6aW15/bpUdkv7mc1izfFpO4f7LsUF4BgHl4rMkejR+A6PBhq9T2Q/bjSlF+otGZnT9Guf3/6QDeTb+QoAhu4nIf0hNiQZ0bIHIJMZfVuTqj2QhSXnrUFKIBlI74=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(451199015)(2616005)(186003)(86362001)(38350700002)(38100700002)(8936002)(83380400001)(4744005)(66946007)(66556008)(4326008)(8676002)(66476007)(41300700001)(2906002)(26005)(6506007)(6512007)(7416002)(6666004)(52116002)(316002)(6916009)(478600001)(6486002)(36756003)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?To/c007du2Erfa/n+PeC3lo1Yn7vDpOyyFen0j2lNJeyfrLsrfvbGPnSisPI?=
 =?us-ascii?Q?/RcKOtAn8x9daFkydiztQk5DZlIwyaE2vdVtyFJT3OXd/wgO86pbdiOsUJ3B?=
 =?us-ascii?Q?l016zI4VlmZ8TX7gZQrI5QCp30kHzuqSyWTGuwFHmSpMwOweEJ5kYrPUoMjV?=
 =?us-ascii?Q?uvchzTfuFL6o7vgzvljj4IS9B9WOxUNAsBgLG4bi3wtiOBeQ8TaVWEgyebb+?=
 =?us-ascii?Q?74wWDtBkW6LTYRynfrfN3w/NlO32Ie/ku5aUGMOhYi3tevCPxklgMXNao6Le?=
 =?us-ascii?Q?0k2SQSW6zVO0zSkhQ+BUhivV3khNDjIZp44L6ksvfB2W+5DK1q0ams7/hheW?=
 =?us-ascii?Q?VwZ8lm7uMxISt+xiV/9E4thtD4knKr9o84kRJuJrOoZO8SwLT9K9gDLRI9B1?=
 =?us-ascii?Q?o5Nml7TPy6OpKMzs5Kcz8WHSUJMePl4Evd0giswHDangRX8jCxyVffm2kodB?=
 =?us-ascii?Q?85CaF3BqlrpqhV74mN2oNpIhPd9W1lIs6KuOripBRi7EhFMU6qVf95OHveF9?=
 =?us-ascii?Q?qeIO1UtwHrQXrmgVc3+aZ9TMdh71NhO2g7WlT5scwKBz5Y/YmFTaWFUVmrTS?=
 =?us-ascii?Q?/jae9BYBVFRk7tWIrrMRdACz57L+q493S4u1tzE08xbljFTt4V2ezaqIJMIY?=
 =?us-ascii?Q?uNRBDIsvxUSmueRrXQea/JXT4QTJ/EDCT5briVbH07H9ux5eArHtX04KnbBg?=
 =?us-ascii?Q?Gx2jfqGEw3bLdWFwndHldh5h+Wm5VLloCahLJmmrpEvA5aNG0PCtJ2PXzxqd?=
 =?us-ascii?Q?lwwlBsmpsg5anolcaNNASd+xcYoip1b+AiY3L7LuE13gT/SMwtekr/aJTc0N?=
 =?us-ascii?Q?Xxjnjm/WbNDgEe3SOK9VNDXuc0+YcwyJFSy7l4yGMJuT2V46jXmb/Rw4sApN?=
 =?us-ascii?Q?0raCuR17Xbgll1jyNq03BfQ6lLiYw0y6OFN8Rc0BIlKougezfG40LWQ7ZrVI?=
 =?us-ascii?Q?t+zo4q8hzKWNBWTdYi5TwJBMn+HCDpuNECUAeMED/YxPWOjtxZMN7MGcldE6?=
 =?us-ascii?Q?wwoqjJfy/QP8vvUc24+HSpILxtVbV1IuDl/MNjklxoZqRtD6Ff0XlOozXSFq?=
 =?us-ascii?Q?4BZmyD+t5bSwQFtujMepyaWFKjI60ecwcw2IBtxnuSXADq/Ri84TmNKZofKb?=
 =?us-ascii?Q?rifAH47XCUFwnH+eFBj0lKM9LTLUGEnzo5epTo/aB08edohcFb7NNh+mgSw0?=
 =?us-ascii?Q?7z0WA/HerhfZPFFLPsOS5rdiN45w+Ba9lYY6hkUtKX2AOxSmRHxSd2SjGJAs?=
 =?us-ascii?Q?SzO49AfUwq38iDVsqHLr7Gb4kOM9bQxLEYJ+4XQ8icw945A+GjAgi8lK5a2E?=
 =?us-ascii?Q?zpRDzrMrydOQghjuLa33Rt1Y1lUruG8FSE57umV36dSeClspmjXAhm/9mVhk?=
 =?us-ascii?Q?j9IFavieTvxiXSoJ8xppcDHghGR0Oyqg6SL+k8hyy0dNeinzviQHFCEPbKgr?=
 =?us-ascii?Q?wMznUtWIVBHxWGtGEzDVrYyJN2sLsyDrOvNSzWs8rriABBmy9+ucJ8taxAGG?=
 =?us-ascii?Q?PNGpP9DWH4Qiwv5Lp4fKDhdKL9fFm/oQl//2+sjOmkgFzWOqW5b3oAMpk6yM?=
 =?us-ascii?Q?4WmR+qUmB/jcmBfeqGE=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf29f06-8d21-4358-1e30-08da9fb76b9a
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 12:05:36.2408
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YLnsiimMmeDH3y9/h1X6ESYpCNxtOXgaKQ0Y32+TCJ3h1ldxfHUTW7ox8l3Ynnxw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8842
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,TVD_SUBJ_WIPE_DEBT,T_SPF_PERMERROR
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pgc_otg1/2 are independent power domain of hsio, they for usb phy,
so remove hsio power domain dependency from its node.

Fixes: d39d4bb15310 ("arm64: dts: imx8mm: add GPC node")
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index afb90f59c83c..41204b871f4f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -674,13 +674,11 @@ pgc_pcie: power-domain@1 {
 					pgc_otg1: power-domain@2 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
-						power-domains = <&pgc_hsiomix>;
 					};
 
 					pgc_otg2: power-domain@3 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
-						power-domains = <&pgc_hsiomix>;
 					};
 
 					pgc_gpumix: power-domain@4 {
-- 
2.34.1

