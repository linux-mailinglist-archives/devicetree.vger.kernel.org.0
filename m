Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B9C069C41B
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 03:17:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbjBTCRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 21:17:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbjBTCRy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 21:17:54 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2066.outbound.protection.outlook.com [40.107.20.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 635A33AAD
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 18:17:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HHX1VxeLXhOS/m8eHu4lQleJx+a28YVlX3jE5mjmc4RjErgMdy4V9rbHog34MVbRfgJ62mkCMZYmWAT3z+AWXCbMghNc2KXyIkRBYQ/CgMwjiv9KtaSaFnb0C62t1MguldR07dTf1WVrDL6UmEgePQ87EVktx0/dIGHppcTOZf4ezVQESwqp1dZkrdrPkIn7tjEhMgwpDV5zR+LqLfWyZLK79qJM/BVx70uQQ6V5vfQQEKqNoHV7+4AG6z1SP98gqCu2gATVfm35eXD52jBgpI5qy4RaefhgXD7zgOiuCMYHxjSFqaQ6pLvZk+Lel1ciBkkgmPhcbMaScjlQrPX8Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9D0nTkk62nQJnDwO/k40lDyjXrL52mQOxfZCdxWFM3c=;
 b=LSlpwqLK/ILr3VkLspgf1XR7cTXaC9RpuH2It7AmPrJ3tz7+zPc+H4LHH4kugQiZFToFncwPPy+M0S1nsElcP/xXVix/xeWvmR9xmp3ibLIu4NIr2802E+VxxAwZiMuN6X2lKIGo6JkVGC/jc7wvwVn6j6wCpQ6AHMG6s/CBePJ+TrKKkycHHcYcsSk5NOQ32gfiOydt8WMSz35hZIbm3Bd/gbzL2Pra/iJBPrgvz7isjAM8wj7CH8NjkhqaSfNcfj8UGS3Cl7WuU8ri/outD1gWNomS7/TXJKeusDlps61GJQkWGomO93LlN7RMg1qgAKItP6a5hE7uTy5qPwPprw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9D0nTkk62nQJnDwO/k40lDyjXrL52mQOxfZCdxWFM3c=;
 b=VDFvDdmasxCps64tE6DVIniNYW2IxeloQAPLZpM7grp2Jqe97cII8yg+oKxtVPSG9FpmWe14zt5UtmJBd5wx7u1p+2E1tj1DblpYtMioeY3Fi3wm+gT0/u4pwK6xGc4zmAsv6GIqUKq6ux7tAFYPW3NmUTrBsI4p1gCyqCQCMcM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8724.eurprd04.prod.outlook.com (2603:10a6:20b:42b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 02:17:49 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 02:17:49 +0000
Message-ID: <d92294973704c4007d40205cd33651a2cf9fcc0d.camel@nxp.com>
Subject: Re: [PATCH 2/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB
 into DT example
From:   Liu Ying <victor.liu@nxp.com>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Date:   Mon, 20 Feb 2023 10:17:11 +0800
In-Reply-To: <20230218235417.173325-2-marex@denx.de>
References: <20230218235417.173325-1-marex@denx.de>
         <20230218235417.173325-2-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI1PR02CA0047.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::15) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8724:EE_
X-MS-Office365-Filtering-Correlation-Id: 078cb6d9-91f9-4e07-58de-08db12e8a987
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: beCOHWDtvGd/CvoPi6TDT/KTnPwdOU1oS6oqgyOADXOgr3F/VOTvJ38CVPXmfWUrkoiaLSYIzeuP6KgeMO1XOqjPKU0jlIK7XR1XxbNjhDFLA15pAuQU7AMw+o+OKT/fA13S7vB95dNKakOnQRVFLVk3yERfJp0OVlCywqD7VApkAZUrXJZVqk9B8xkaGq8OO6RYw5uIOke3jB0sl7wnQ6MhaX+dFi33vV6XmJDPh7SkDq8Z/cJ/HPnkhtsdqsxh7iirCiA0NiJ864jdclO8ivpbh7K0dfGjVB98TCW28OI06f9semW2ODDEYe8tigPSiVQCkEikWogJuOWrGqzEgTtlUQH77p/z9IB9RdxZKa5R/e73AFkZer2qLBRO5wGhDzNpAAoQQcO9VvT/F49JAmkJHKA+Qr15ohKpRm4cehd6p8G9kTjWu4stdr6RdRARTWxFp86njbqFtSc4cUcE3r+N24ZDdn06cqVWrCMLeI139Cy3jg3shHzpi9FSPEg9X87fJhgaBnOLBk43Ze6/do5fgTclmhycyp+1vugWvOfSLT/EZ6OAu0ATX0sJ6eSj7PE1nAIDw+QYl2yEBf97nK1PVovunXrrlnw7WNiYCz6XLVgsCYxklF2OHGw/FKRQdlQgFs+eU/ejtET6vYVKGQ9h+1PDIhe3I6PWFzKdxegc3T33Vze1cExnLcY0rU+48+iCsphilUfJZNqr7oX2vDQlWzGdfqC/wHrhHkPxE5E+GqpCMV1Id+/sw03++DfH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199018)(186003)(26005)(6512007)(6506007)(6666004)(2906002)(38350700002)(2616005)(86362001)(6486002)(38100700002)(52116002)(7416002)(5660300002)(8936002)(41300700001)(4326008)(8676002)(66556008)(66946007)(66476007)(478600001)(54906003)(83380400001)(36756003)(316002)(99106002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUo2WlZ2UnFGMVc5Mkp0bVV1L1NPeHdwQWllS0NHTWEwTUZCR2Exam5NSU45?=
 =?utf-8?B?UEZta3hlaERRM2tBYlNoR0p6YU1KR2dTRVBtZWR1bC9RNzhaRnZZY0VRVDR6?=
 =?utf-8?B?TkRWR0xUb05WOEdKWmpmRTNPVWNwblpHaFhnNW4rMnBLTUJUcUpXcFVmVURP?=
 =?utf-8?B?dStwVG5iYjdNZmxLOEsvVmxiaWtyVUx5WXd6enRGNHUxSjN2TEdidmFvTVFN?=
 =?utf-8?B?N0Nmc1ZxUE5TL01qczBmam1oRTFIWDJNZEJ6SG1ET2RvNTlXd1AxbDcySGoz?=
 =?utf-8?B?dUVZZW16WHFRZVN2b245RE5tL1ZLMW1HbFhHaGN4Yk1BK1dwQmF6NHowN2dz?=
 =?utf-8?B?ajhGZjdna0ZzQ0dodXBiVStJSU1PWVRUblpqYmUvMDA5dk5icDZ5NFZiOGNK?=
 =?utf-8?B?NG9GM1UxNnd0bDA3L3pXZGJtVkpUaXB4ZkFxeUljdWpvbTR4VERoc09KMjY0?=
 =?utf-8?B?b2lFNzl6SVA0SXRpN2JvcCsvalE3UmZDVHg1VWZ3Z3RuZ0dCK3VZaUw1SkdB?=
 =?utf-8?B?aG1aam0xMUlQd1VZYjF1VTA3UzVTNDZBRzU2NDFZRFBnWHFDUjJwVEtqbnRy?=
 =?utf-8?B?ejRNZFJsanlNYnNGRnBEZkhiNmswZ09yY05tTEhHb292WFQ2bnNKQzNoSjYy?=
 =?utf-8?B?NHUvYmxEUDlSNlpEekYxdko1eEtSWDdHTzloUHJ6Qm9CbXdJSzh3UFVteHVi?=
 =?utf-8?B?am9mU1gwWFlhTzBhbEZDQ2ZNdGc5WlZkNXk1ZEoxR0c3bTE4emdWYjlqckgz?=
 =?utf-8?B?QndLajJaYnpLb3pzOWtCaEs1NUM5QWhubTlpRlNmM24zb1VEUy9OTU5IbWhR?=
 =?utf-8?B?K1FhelhjTVp0WWZLR2RtMHRGV1UrV2tyUXFrdkQzb2s3R0RRcmlJTS96L05K?=
 =?utf-8?B?L0hzYjg2MVVIeW85NThxZWRBMGViQ2xkYU5DcUZRSnVVMDFVcXVFQXN0bnB3?=
 =?utf-8?B?S1BYS25aVkdFSEtraUpYZXlld3p5VHBud1NsaGNmYzViUEVPR3VwZ0Jqa1BO?=
 =?utf-8?B?bmhPZDBzbHl3T0VSSmVFWHM3bFlkaVg1V1dOZGFUeTFjR3ZxWnA4SGxmMERt?=
 =?utf-8?B?ZGFWaEU1QlI3cjQ0ZGh0cjFEMVpNajczVTBmUzJZM1owdlFVdzRPKzFvVTdT?=
 =?utf-8?B?R1NES1NhbW9FYVJRUEdBT01aUXRoaWZVQTZmSm8wWHFPR1N0SFpMNGJ1MHVk?=
 =?utf-8?B?Nmk3L0ZUSnZBVWdudmg5TURVRmw2WjlkM1BqVm5UZm9Yb2lUNVRCQXJkdnFH?=
 =?utf-8?B?Zlkzb1VrdDdBdDhQaWFIOEZnRWZFb0JRL0doY1JFVlZSN2VQcGs0QnR2Q1pa?=
 =?utf-8?B?UjREdmkzaENyQWtRTGRqSFZsMlVIN3dla2hCYmVZQjhFbmpjVVRlT1JQMWtr?=
 =?utf-8?B?QUJEeGpVVEJaR3BReTJTbi9PVXBsQUtIdFpQQTRXS1VwSzdtM3JCUytObGNG?=
 =?utf-8?B?NDd4Q3cwZnFodW43TnBqWlZsUXlha0crT2hNRllsV1ZKOEd4R21MbFhiNEVv?=
 =?utf-8?B?Vk1QRmJUZnJpRUdUSkE5V3daTWQ5TWNJaklqOUFFVnFIVUF5cmNCWmRYckw0?=
 =?utf-8?B?bk9wMEQ5NGZCTWI0ZFRDb0p0dEdMRVhjcytobnpBOGhvdjJyYkUwK0VkRXVZ?=
 =?utf-8?B?QlNFK0R5dXZDdmkvcjMwSGNNbXVGMnFXNkZjaDMvVDh6a0owYW9qRTU0OHha?=
 =?utf-8?B?TUU4V2IzRG01Rk12NWROcDVwdWZwblVCUG5LUXZRT09YbzFZRWlTYkJQL0sw?=
 =?utf-8?B?dU5kcmpYYlU5WnpBK3N2anBpZm0yRG1reHpzYXVsWEdmVXVNOG1tQVo3RUNK?=
 =?utf-8?B?eHd5U0hXWWhmVkF6WW1FVTBCS0VBRFhoU0s2bWJ4d3k3QlZvaytUSFdpbWNL?=
 =?utf-8?B?ZVRCSDVhMC9wdDdzcU9VZmI1eDBzZnBDR0V3RGl6RXA5bUJUYjlCR3hNZHIz?=
 =?utf-8?B?VnBVZmw4MU9nTWdoRjhXR0JoTzVEQjBZUU5QdHhTRmNpNWhGWWx6NSs4NlZa?=
 =?utf-8?B?c201TElsczc4L3U0QW9YNUx5aDAzNnRReHJMZlFLUG5lVTZCWXBEblAxMnhs?=
 =?utf-8?B?L3BwSHZQdHZLTjhuT0c2Y3Rib0NZQTd3enI1MkZCVE44M0JDQytyMTE2dnVz?=
 =?utf-8?Q?tJ1yYiqkyawsz1H6h5TL0ZBvg?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 078cb6d9-91f9-4e07-58de-08db12e8a987
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 02:17:49.1645
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5jbbgHzH+e8bKldyae9vkWvZ073WXYgsMV7HdgA1kc23SLCimQ4+iSKatkNu8QbkjSrMe3L5SCf5ob1S1iMfnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8724
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2023-02-19 at 00:54 +0100, Marek Vasut wrote:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must scan its subnodes and
> bind drivers to them, do not misuse either simple-bus or simple-mfd
> here .
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 51
> +++++++++++++++++++
>  1 file changed, 51 insertions(+)

Reviewed-by: Liu Ying <victor.liu@nxp.com>

