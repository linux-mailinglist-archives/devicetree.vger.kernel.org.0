Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1A5D5EA7B6
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 15:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233594AbiIZNzh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 09:55:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235563AbiIZNyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 09:54:43 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on20620.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e1b::620])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC0271F0CCC
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBSHZxdH4eEy5TAnKX+EXTSJnPVfRmVRl1aITszJ+/bIgSVJUQcsuVVfdwAxeZWYsQKyoBfVNbRfxyjz2hwSdU/gxubOJFdPRtaDNF2Y+z3OBE+1rY8zLVYG7FPTq0vG6XSLqKr0MhDRrssZmAo91f5efduTMBFqRGgAEbL+O80E+2e4GhjtUlTdyGgDJ/zTIjN9gyjjQAaVVj22W89HspoeXL6OrYwtMgkyG+ceQ641WKszV6Q/GbHwCYRTIlCKgradkIgcZJP2gMn/IbPeYP7uk7sZ+/yMs0WfKDuFQhttxGIFmLaxEowYTXuP3XzZzTspJ7lX+y+Tg6ofFR76Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p3G8S686CPMDmvH9nN3ihKd4eCo5jvLfW3vSlruCS1o=;
 b=RJiE84z39PTjNHZ8eMUY3SPWSEwIuzKH071bM55600x2/8T3e00U+bOmsh16iHsaxj6sQds8Rv7izF0ioIJj78nD6SYbX3eNwTOtVQGzZAq3F7ef8Q5p8KcK3KQCi+uKCjbt9AIHHmDwWXpKo2qoq0RtZlDb/9xn1OX08beCbdhsrk962Kz9wCdPnkGQvcgGx1hhlBx76DYMu4OYnTf+qKGxYeqoZnth1BWUzF5bc4DodFz1L63uQgnA3eW0T++QZSrTZQrZxsV9hilrERY+CrLJpMO207LBrhygW/iDTIrWE6cFFkXixfREdl0UA7KxvNSvvyPZ81CwKX2JBamOdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p3G8S686CPMDmvH9nN3ihKd4eCo5jvLfW3vSlruCS1o=;
 b=kWxjEO5O04HNz98Sv8HPxuVnSycyZ3boDNLd7+W9KIrA4M/aNUL1OasRpWbKy+cGiyNM7DXsfMIrLGPLMTCzTcbaXdQnbFjkDQcf8jJdVlLiF05dbpCfLg/miAZiDcfgtupSTVy/xJ/+MuN3hlTqMVa4zOmO9yZa2hPhoDTfeUY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8842.eurprd04.prod.outlook.com (2603:10a6:20b:409::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 12:05:50 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 12:05:50 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     l.stach@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aford173@gmail.com, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, marex@denx.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        xu.yang_2@nxp.com, jun.li@nxp.com
Subject: [PATCH 4/4] arm64: dts: imx8mn: Correct the usb power domain
Date:   Mon, 26 Sep 2022 19:45:35 +0800
Message-Id: <1664192735-14313-5-git-send-email-jun.li@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: ae4c56ae-19fb-42c6-14f9-08da9fb77447
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bom7DDTgz5b3oIRJmGof+otWgWgxpTclFKklch15Sw860rsmjYVhopBg/QMCKYZYQcDsTpTMeuC+LAf364YVuzt6jol4QTUiLqWeDlu+znOSyq4jryt6xgUmGFjEpe9mm45ojXC6pKCzlIJK92zh+e2pRiGFverhlLDwDunRbwuW1AZEfd0XK+rPhVHaRZvDbuJe9QLTaJoesGk5URZvmINYDI7qEbbzbIBRuAZwWiArE2Kk31gFaVgqQLyZOv7jrKMakR+AY8AtKp3YdH3vkG//DH+BuujcnPjhxhOdLTULNHVr7x3glcT1mv90vcXuFB8abEl6M+x3jTR61qFf5yjtBacHKjIPmXZ439VL42YA0yWwKCTQHeqPcGm8whatFysORd1E0aqfYw2clL9vnwHScGUWQuKqnAgl13U5yROwx0SEzAvXQBbHEhCozhBwT2WCKQG0u3huDY5+o/8WUuVJwdhSkLLwZs6QvZLoygs9dpV2YS9ISWx0AoPruHruJoIUNhZvaTbeaRot0VyDTBer33L2scKKduSOlk09FLifIz2q8pXwdZ4tjimpHn1YTIbcFPZjduK1bPrDC8JoxV4cWoUpzMD9YLsweUhgH7MmLwK2eSIytjQqDzTKQxDIs3LC9DCnkb3EXrLoMQ5zRys+UBTVe1xC2YLth5eKrBGDAKrzRWrZIKW9hJLtwhz5HizteJJqKnZ+BL63YWB34/HyRX9qAJHtQYWNiDg819FxHrHsrWupglypqp+e/NoyWtDCzXsetP0PrAQEegldgMhok6+FxSghA0XRtzf5ozs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(451199015)(2616005)(186003)(86362001)(38350700002)(38100700002)(8936002)(83380400001)(66946007)(66556008)(4326008)(8676002)(66476007)(41300700001)(2906002)(26005)(6506007)(6512007)(7416002)(6666004)(52116002)(316002)(6916009)(478600001)(6486002)(36756003)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iuzEqS5dqdteOjj0rJSe7DWkzsJ7XlvQUUKSN1fBt91VNsmn2SKEvelH1Mjp?=
 =?us-ascii?Q?CKtoyLI4q65MDr/3qLFCWzTmJp/wMTGJO060kLr2qTzbe6nevcH11BNuSwTn?=
 =?us-ascii?Q?tfzHzy9kMluHRKFqCzsAQvK++RRTmJz5d42yX7a7yt94cRs9UvKIfNl6oNMc?=
 =?us-ascii?Q?dJ9HMyS1XRcHpTP93aNNp0nwrDY1kMcleX4MYvndrZ6INPiItzmYN/cpJJT7?=
 =?us-ascii?Q?k3REjHV7hqiFCAif57+jZ5i1Q0tLTyWgeSUg+6vwoW8tpmD3+YJtLnGYC5BW?=
 =?us-ascii?Q?145tKwNq1bdhcyzpkaJxGGbWnFDe7j4xAkIWKL5UjYepJaJ6ZatcZlFXOlRx?=
 =?us-ascii?Q?xrajSiQXEJpwfuxW7mcUAfMxxnKxD2ceACz64QX685mEDbxt8jnm0gkHVXx3?=
 =?us-ascii?Q?SEEi69vzfgnvzeQDKcEyX0vL2qRWFeqArhaNTcVSmqrASBVZu8J40PWn3kYt?=
 =?us-ascii?Q?N/6wBTFW7sbfexx/8tfYSWMV6+MqvaRAp6KAIP03w615ZW2IdnZmZ9+XhfOx?=
 =?us-ascii?Q?BgKrjdm2l3W8n23myj54iVv4Hv1HATg1u3WBHlGqUE0Oql4gfytIuOKl6ube?=
 =?us-ascii?Q?pASYhdvpG7U59mIjDy4wxeYeCQT2fpOLddTP/msEhWfo7cEVWC9KpXi7COPC?=
 =?us-ascii?Q?lX+MkBzRnV5aukV3pLfV2kCmnO23MOENBy8Nv66Fork6TskRnsz9B6bF2ZO4?=
 =?us-ascii?Q?JBHy5q0ud+0pLWjO4nqCUaHlBwz7jqjQpDMjz0G7Mo2Bz826E+ofNN6Xd+Nt?=
 =?us-ascii?Q?BdNN/Y29TrdISdnvgWT0et4Cqd4G80LmOPKPFB3LFFKtMCmM70EPl6yKPje2?=
 =?us-ascii?Q?zW1sYwLzMgr2aqR03xtPwVzr3ymRt3aJ+zs/Z0RqwKHRDj3GIwsqLg9Pf8xN?=
 =?us-ascii?Q?0NiF7BgV2uHeVZkE1Ug8BxNG0pP8JTKaR1YjRnY6Q/o7zT+OqtbpVRP/fRUb?=
 =?us-ascii?Q?8U/hnfBM8h+9JGEiUnlkZAjKk23EVVWw97PhCetfqtbEgpnOUSt9ZyoeDWZf?=
 =?us-ascii?Q?0CLu5CXyK3Mwa3qTiYqupPbKs+nEQ9xgW8nq7P386Xc5hx3uQn5muNeigbj1?=
 =?us-ascii?Q?xTEt6p6SXKylsN07o0htHRNM4QmtROABvTNptQAz8gPMOeRQUwLr6mBgJSRw?=
 =?us-ascii?Q?JoRPNSurOH4K60mr6juhwuHtyoa2PZZ2yr+yNQW9ni8HnYA/6v0hqIvgDXp+?=
 =?us-ascii?Q?vd8V+onFNFG0uXSN57N+RpfzLCcS2xvB6M+lMrwWNl040Jglc9X6RxyN6Mad?=
 =?us-ascii?Q?o3A1TuVuGY4n30jxJC1fhsEbKOT3wDlL08svTAzImLvATGPgUdFcRHeFj2t2?=
 =?us-ascii?Q?9A6OWSYQkNjtfLmYxTGIVmYfBFuZ+i/auI9hiNPTQARXYVB1HlPztI23pDlP?=
 =?us-ascii?Q?nItLYAe4z5pYYzRfyVN5voKQNHzVm6TlGrt1403+tXglM+K5T/cyWiF6oRsc?=
 =?us-ascii?Q?yjqtcSIRsBFGntvGCPDcHWM3aaVK2uvDmxvipziFh0owOWQunSw+GP67REng?=
 =?us-ascii?Q?zyUKAPJHve+0lo0nBTGmSWmnxMcHLgBr98tWppTXynObC/lMiusWm0FNi5Oj?=
 =?us-ascii?Q?HZBBcjK8D8tWBe8Rk6o=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae4c56ae-19fb-42c6-14f9-08da9fb77447
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 12:05:50.8265
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47GBYbdy1Q3Kcc81WJsGZ6hggXBtrmicp+aaye5h073cWiEWItLxf4WMaNHEUpcB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8842
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,T_SPF_PERMERROR autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pgc_otg1 is actual the power domain of usb PHY, usb controller
is in hsio power domain, and pgc_otg1 is required to be powered
up to detect usb remote wakeup, so move the pgc_otg1 power domain
to the usb phy node.

Fixes: ea2b5af58ab2 ("arm64: dts: imx8mn: put USB controller into power-domains")
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 81a1179d042e..b6ce2bdc69b2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -1076,7 +1076,7 @@ usbotg1: usb@32e40000 {
 				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_500M>;
 				phys = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
-				power-domains = <&pgc_otg1>;
+				power-domains = <&pgc_hsiomix>;
 				status = "disabled";
 			};
 
@@ -1175,5 +1175,6 @@ usbphynop1: usbphynop1 {
 		assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
 		assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_100M>;
 		clock-names = "main_clk";
+		power-domains = <&pgc_otg1>;
 	};
 };
-- 
2.34.1

