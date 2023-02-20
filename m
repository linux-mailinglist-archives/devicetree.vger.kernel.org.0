Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5110A69C419
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 03:16:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjBTCQr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 21:16:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbjBTCQp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 21:16:45 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2048.outbound.protection.outlook.com [40.107.20.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A67AA277
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 18:16:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HBfpQqOOzdRIFjAbPnkQ22S1s119KrTTXfFToL/RXilsrOnm2WAXEZ2kX243MWB0bLd+seWJKe5XIGLuviv9KWQGtCgpni64KkrRhsO55+24m0/9LfL0MnTeSKhpSppOr58+5m+edKcmQdKrsHqZwdarjZinCp1iEoeU+Vrzuz3iK6ID3xDPAhX0UvhllsMkMJzODoRuBVTJXYGOB2hGA3PrvkZFZ1CROXSEq0IG1qCGCW5zloO8jyKENbDwVhLANTdB/HcgWo91r4FeYpA01aXKxmc3AypuX2K+N+XfsyNi5aU7ewVoO6sESTYko+b8R5cZHFDmClRic3R+sdR3Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RINb7kb7E0WjF1gKnwiuVR3lyy49cGHavv72o2mvQL8=;
 b=O9/hLFkMxnHtR6qqblHKhzGIpVYz4bhvDd3eH1jH0bS4RJ/JodzcLKxRyHCwmrJot3eORYtukZNIe1AyFuobD34mJM3yoZQ6tJ931gJS9FLc1qoyzw6DTBzmaRVVwoTGVqDk/D+bzjaU/lTN6Z4Tr6LpuFQI2yeu24GE27AISr8wVXdm2zhS+TqSaDtcstnm4NgizTtJhvNiUsRD92ibpoFjxLnL+mM2a950CKPlIeYt4/fLoyxGW5XmF8oSekhaLC/of/jcKZwFJH/wYA9GdTIbiMuypumDBiezFwOVYU9XWhomHH/ixvpk6U5xU4c36zd+VkyGNguUf7Z7Pm9QwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RINb7kb7E0WjF1gKnwiuVR3lyy49cGHavv72o2mvQL8=;
 b=NvAV+psJA2C+5MW0TYTY7xJOGccp1qbAj6GHgQCuChWFKdQZAup6qYDJbnR+0YfY/OAmuglqH5TLvwa+XzBXfb+XVsFbVWnIfeaw9LEraQjZsXnw9lKVBXW0qlyzLK8JvrnE3WdJyJprh5hRfEE/HPsWy0DEJLtGtqd/0277u5A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8724.eurprd04.prod.outlook.com (2603:10a6:20b:42b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 02:16:41 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 02:16:41 +0000
Message-ID: <56867c1c8ba4684b16631f2d3ddc1fcc70422b92.camel@nxp.com>
Subject: Re: [PATCH 1/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Align
 block controller example name
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
Date:   Mon, 20 Feb 2023 10:16:02 +0800
In-Reply-To: <20230218235417.173325-1-marex@denx.de>
References: <20230218235417.173325-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI1PR02CA0021.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::14) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8724:EE_
X-MS-Office365-Filtering-Correlation-Id: e496c2ab-8cd8-406c-59c0-08db12e8811f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SVjjD6xeWZd2HcLY+tTzd0VDzTlfRe/h4oFLgm9qb3ntcLahhbANBGT8J+8tJiZ92an0iuu9pYkrfyPwUB+Emo4CrfrOJ8mrCRBBl9aUS77wEpgULssTwE/SCXN0u/UIHfIDKzNSnfNr45oA4FMm9NO94xwkJwNUbizrRZXxIYyyztlurUhBB0K79YJOq9pPhO+9qMhix+YW1CZ20iFIjMj5Z50nBI63HLmVW4Qyb+GtvsnC0qxnzUY2kocObwh8B8XfABbbLkX5JjCw0/8/nwO/HHDSQsIpRRa9qbR8Zd1TM3qkK71fE21lpwtFPSfpKVyLrNXJV9oo1vAnXHzEL7KcxydJpJilEzynAQb8Roie1yd5usvivU2UgOgwur/TW9BvhrHKOdGhi+24McjCdmXya0PM2OyBT4anhPkLMd3qMt0Ey9Dp2zK9eUxZSEngBMMAvShf/+DUsBxHZO6apc3nYOjhBdOS5jXGK/mG8EHeWCfDcwXy59fzAIRzbYJd9fT6CViuYkT7C3RExHfiHOjqo2TRkT0v4O87Y1gz+ZbU1vnHtCfFphitPrCba7+w/ubJd1p+lWJ8imKXNMmW0yUOI4owIKu5dZ8QBUPChdaSsS+Gu19RKmF1PLqP53MiWbrgholvZxfQgIdvCp5uE3qFjgTxRjYjU1OxUCbnRIbrMgX03joLaYafzFFLI6QStNfNaeMDjiGypOApfc5C/UxgRWJXGkjm8hTDxgiF2oWQl/+faxZbDGX5Aru219jm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199018)(186003)(26005)(6512007)(6506007)(6666004)(2906002)(38350700002)(2616005)(86362001)(6486002)(38100700002)(52116002)(7416002)(5660300002)(8936002)(41300700001)(4326008)(8676002)(66556008)(66946007)(66476007)(478600001)(54906003)(83380400001)(36756003)(316002)(99106002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDdKMkJpUXpIZGsydHJVeUp5ZW9ja25Mc21zMnMvVC9IYU10WmJJU05HaVRI?=
 =?utf-8?B?dnZjYmRDSnQ1SVJpT1RpRDFTNXRXb1RxemFZOG03dXlGalhQTHRBL2xPV0pt?=
 =?utf-8?B?OEpvdlpaNG1CTzQ2Q1MwUjYzZTZUK1lKMlhwSUpITy9lNEpzeTR5Y1ZlRWlI?=
 =?utf-8?B?TmJGTWd2YkVxRkwzdHVudFk5bEp1RmNSNCtyTCtFeXV5QVRoTzdscjJFdEVX?=
 =?utf-8?B?WkFKWnNpQVYySzhPYVdTRVVPSmlDTzB3TGVYSUg3Nm9wNTVTSlI3ZXhVVE5w?=
 =?utf-8?B?V2ZBNGRScDNQUStDTGFUdUcwdksvSHA1TEgrWHZtelFsM3d3bUJLM0xtRmY5?=
 =?utf-8?B?c210YTE2SmhWZ05Lc3I0K3o5OGFNMFNkSzl2VzI3ODRtWVNHOVRIVHhNR0k1?=
 =?utf-8?B?M2lFVmQxcWhvZlJ3NEJydDJTUFptbkZJYUdTdzY5ZndZUmVydU1FZmNvdGxt?=
 =?utf-8?B?dzVMTWdkT2JkVWFvUWhueUhQZHNtVFJ2TVZlNHJpS2x2QnFWYkwyNE04eStW?=
 =?utf-8?B?OHVFRWI5NUtQNmNDQ3Q2am44aVlob2U3dkhnRWRFUEJBckdFcGNmbmVTYW5F?=
 =?utf-8?B?eExabXJuUjlHS0NtY2JTTW94bkZmeGJpRW9sWnN0RGYzRXpiMm9zZG9LNHMr?=
 =?utf-8?B?T0pybDFjNE5zSlpLMWRUSXNQSUZzdWFiMUtUZGdlWHhkSDV5Wnp2SnVYR0o0?=
 =?utf-8?B?K2t1d1poMDVhckVoUkdJQzU1NmQrajlvemJkQkJMNzgwaDFkdGl6ZVR5NENj?=
 =?utf-8?B?ZFlUZmZvVUVjN3VHZjVYTlQ0MTJvUlFrckp1OHNIdU1hSnI3OCt1Y1F0ZklL?=
 =?utf-8?B?dmphOG9ySWhlQ1A3dHhMeWZSYUxlOTg1T0graFkzbTkvT1ZLVDFuOVZnWjlJ?=
 =?utf-8?B?c0tyejdYN1Z4dUhYYnVzUXh3Rm92MjRHWHNBQ3Q5UHVqRnJ3KzVqVjJIL04y?=
 =?utf-8?B?K2NrcTFHWkZIZ3RMa2JUOVd3YldBcGxIQzd2ajFTNWp0a21RWnYyMG9YNVNQ?=
 =?utf-8?B?ajlEbnZsWnQ2YUpkWEMwbmlxVzgzUENEcTJVS3pQOVc2OHRvdDMyNVY3Q0Fr?=
 =?utf-8?B?QXBoMVRGWGJJZW1QWVJEd1hjQTlOK1ljL0E3SWVjeWxDYmxwYTZMVEVTbFYz?=
 =?utf-8?B?b1ovbVR3Q1pkNHVacnY2VEFzZE5vd2hLSzZzdzJQTW1VQndjVUZSOHI4ZjVR?=
 =?utf-8?B?Rll0VlJBMWxlM0p1d3NlZ3JTdTlrU0p0TXlpMWpseldxOGo3UHMzRVFXK2Iz?=
 =?utf-8?B?NGliYWJCWFJRaWx1TnppZmFpTGROS3lLRXUva0VPSE82YUhkWVk2dGpia0Nz?=
 =?utf-8?B?QW5TZDBydnpxSURNWmhuL0xrNHlZQjFPLzRGYmgwelRLTWF3WG5lTFc2VGJB?=
 =?utf-8?B?UzFZZzZvMHdDS3Y2cFlYYTM5a3lEUXhHbWRDbVh2NWNUVzhYb0FkMzRUUXlE?=
 =?utf-8?B?SGN1VU90M0RNVmRsTk53UGZzeUVGZk9MN2cvbGtRMVIzRklzcENBcjV2WWlw?=
 =?utf-8?B?UXh3Rkh1aXVVNGNlZ09WRGdzQTBSRFpzK0MrcUVzQUQ3akFMNU1VdXQveXRK?=
 =?utf-8?B?alVLRi9paGUwS21wbDF5L3BXbVl4YWI1WXhYaU1RdTcrZUdTcDFQcTZHdkxu?=
 =?utf-8?B?Y0FLOFFMdDFGTUlnQ2RpcjI0Y3RISnRyU0tZWWZoOHp6VzEzNTJOcFZJMjhO?=
 =?utf-8?B?OU82VHl1SjJJbSt6VXMxTHQ2ZWRlNE5ITHdqaDNuaitYcVZNNEhySVRrMFhv?=
 =?utf-8?B?QkI5ZzVwU1ZPU0lvcG5iaFJJcFNPTUlTc0IrL1NveGt3UlN0endGb2ZQVi85?=
 =?utf-8?B?UmhjSzNDbDNlUkhtYkw0R25BcGZUcGNVVUJOSmJ5RnB0a3ZvWGJHb2VMRVBW?=
 =?utf-8?B?Ymxoc2JCRmNST0JDRmpnZnJud1h2WWNkMFFwQVR0c2U4UXZ5b29CUHJhUzZn?=
 =?utf-8?B?VVNwcWNVK3NJM2pmMExxMDl0elJlMk5XTkkydzNVN1QwaVlOQWQ2cG5ScGl4?=
 =?utf-8?B?aDN2WXJjcUs0S2JRWjNmejdGMlJLdHFkeGc3TWQrci9mSkdzcXdLN0F2M3gv?=
 =?utf-8?B?ZzRPOFI5MXU0aTM5aEhLUWxabXZlMjBua25DdHVyQ01PQ1VnK1ZXS0YyRjhY?=
 =?utf-8?Q?RLXgjQILLADgMYGoO1TYL8rw3?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e496c2ab-8cd8-406c-59c0-08db12e8811f
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 02:16:41.4656
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iZ1aU3N6mVxTsT7+yC+k6tVJhnM+S3sFZCRmI8vsm0ydWzITlSoVCYSCd/TU4RUSoxhLF5WRCArtD1NoG55v4Q==
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

Hi Marek,

On Sun, 2023-02-19 at 00:54 +0100, Marek Vasut wrote:
> Align the block controller example node name with Linux imx8mp.dtsi .
> No functional change.
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
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2
> +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-
> media-blk-ctrl.yaml
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-
> ctrl.yaml
> index dadb6108e3213..d4fb58979de19 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-
> ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-
> ctrl.yaml
> @@ -94,7 +94,7 @@ examples:
>      #include <dt-bindings/clock/imx8mp-clock.h>
>      #include <dt-bindings/power/imx8mp-power.h>
>  
> -    media_blk_ctl: blk-ctl@32ec0000 {
> +    media_blk_ctl: blk-ctrl@32ec0000 {

Care to align the label with imx8mp.dtsi as well?

Regards,
Liu Ying

>          compatible = "fsl,imx8mp-media-blk-ctrl", "syscon";
>          reg = <0x32ec0000 0x138>;
>          power-domains = <&mediamix_pd>, <&mipi_phy1_pd>,
> <&mipi_phy1_pd>,

