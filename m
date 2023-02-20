Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A287369C4B8
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 05:28:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbjBTE2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 23:28:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjBTE2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 23:28:34 -0500
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2083.outbound.protection.outlook.com [40.107.7.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17F4693F2
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 20:28:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ibru6JNusPrxG8KVSp/lU/1EUuz8Quslj8p3JmmAY5lZ7oLV+nxOuP9CgZvqh66HXJH46xhq5KzBsH1HpWzWseoTleyMxhMHnaXbzTtjr8lWMNt+lmu+4OCmnscPcoFPQGUdxajMe9hc5zayt5IPanhLhdr6deppg23eGrN5mNwgMGwMF9Wa7tp9ymeyqypOH873CqHZNrY8zxSvmi+5ta/ASDuo4LY+Wwio1CzunSqpPUTBMUgVEIVLye3a3kQ1I7/gaPTuFb84MFcQlGLQFHRQDMPF1RTpQIjP9nP0GwqR2PKRUl7qpDzGcu8mGQqjjnmUFNTQbj0sWt5CJJitWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kanR4S4doTMQQmCuTIjy2RYxpfHiR2s6+MQn2KEAwRA=;
 b=eKyda3yy83RwYnqjXQ52e1mC5Qy3q497WSK1GwAjVP7qLy+DaIa3Cro0TZ0JoR8yh2Ytu3Co/u8UgDO+Cn2ZF0+OvUfqqIj07qbv0bBvP+Yk5yK23vZoi9LwK9owP/6MUqHsnB+TAjVrCntyS0x2TOTngyfZPd1f45ZNbmo66xj5DJk8DgdOKwctt4f1AWQoNP/njyZBq1ACOE9tHuQ4q+Og7U8RjrS3udDnDlhwpHUerxp3io0zy7EXby6N2AwfzHqYAPea2Gs4Cs0ZAs5/6EiBXYiDlvVJRHoeNIAtIVAH73783FMjY1th6gD6tMUeSywgnOlQQTmtSDBVDOwUbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kanR4S4doTMQQmCuTIjy2RYxpfHiR2s6+MQn2KEAwRA=;
 b=KQpmsHj14kUJxmGwcyfxwrA9qlldOcJc23ZuP6Y3S/5QpCMEVkUBG5Vji94ptOh26Hy0t5fi1eRX/uL7w1saWHqpEO5Mo74en9LeZYjNhuNuuSCSQj2hkWptFUJh7QqQL4LCaJRyD1LeAPKg06HamQLOZagIHKcIMguB46XeP48=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB7704.eurprd04.prod.outlook.com (2603:10a6:20b:296::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Mon, 20 Feb
 2023 04:28:30 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::5725:92ec:f43e:f5fc%8]) with mapi id 15.20.6111.018; Mon, 20 Feb 2023
 04:28:30 +0000
Message-ID: <6e0a802163173a80156cd02e59861a216e1d0d12.camel@nxp.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: imx8mp: Drop simple-bus from
 fsl,imx8mp-media-blk-ctrl
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
Date:   Mon, 20 Feb 2023 12:27:40 +0800
In-Reply-To: <20230220035051.327847-4-marex@denx.de>
References: <20230220035051.327847-1-marex@denx.de>
         <20230220035051.327847-4-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI1PR02CA0050.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB7704:EE_
X-MS-Office365-Filtering-Correlation-Id: 28582d8a-8de8-40e3-af38-08db12faeb5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vPZqSmydIJwRGlxs8bqIaDbJRkeya8dGFZv9HqP3P5GAwII7mZIOzIcdrZZdxGvvX7PuRlBauWCUo8MlFTuPmmL5MseiqGChyTDeq3vuops7yzO3gpzKvXrypIEsQ7r49qIYrYAWKhI5s3/Ym8Wl+0XkViLaJGYghJt4ur1i8sWgp/A1sWWInLMXHh39XYb62WCJ2Zvjd/De79Nr9BG3/vTii5BRpi8Zgfccdc0T2GoSbnQ9L8FrjZALtdg3+NL4KbbJKts/+hA3q2+vypdiQfDZoA5HDiOBRpVGAhnYZHUx0RQkjWYdty94N82CJMOrdaWTX6kZXc9bCj7UQYGaYNiIl6VPbif87aLaXCXwX8FT0IU8QXoaO75KfD5KPCy0Ep4J39Ci+bAXnOCsppjy7aSHow/dWESx6XgjzuQyw4+7KcVCNGt7fcZbHF6oMyPpEgSK+ueU9BaIzc+Tx8CwjdHXZzrY9vFV/fXYoyMX++dWSPUUhIrBnXM7Y/UnXUTHR5o4491/Lq/emb90VUIpA82ozeIlsAhQT9sJLa/Or/pWLACwNa/Db85dlS1wusbWoln4Fd8zQf2ynPhwLDIlxjGqlHCsUO0GTCe1S6I7h8KpCPr71Wh8GITBQk+PR/P1y/Y0+XN/l7nJEM/NMehR4GBNLN1iDQ7pFypDh7SGNkZuhmAVbWeNhyHNXCatTP8a2+Q9X1g3S2X8KJJCkuy8pCVg0DBs+S93i1x8N/IBFBA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(451199018)(5660300002)(7416002)(86362001)(2906002)(38100700002)(38350700002)(52116002)(6486002)(478600001)(26005)(186003)(6512007)(36756003)(66946007)(54906003)(316002)(66556008)(83380400001)(6506007)(4326008)(41300700001)(8676002)(2616005)(6666004)(66476007)(8936002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEJRZTBlaVBxVm9TNTZUWUtCWlZHd1RnWFhRVWs3ek5TZnlCQXcwbVYzNzR2?=
 =?utf-8?B?YnNnaWxxd3hCU0lVNDNzdVNlWG1WZUNqakZRT0tsVmFvWW9rckdQMzBTaUtS?=
 =?utf-8?B?a09MbnJFSDZuaFZHVWJEVWhaeEI1TEdiR1FsRytNN1RxakJtL0NJUlpnNnpD?=
 =?utf-8?B?ZjIyb25rVVJLTkd6SWdoNlpQMFB0ZmxwZzNZWEZXNkZzWnZFNngvbFBGbWY0?=
 =?utf-8?B?dlpsYUYyeXBVY0hUdU1ETFhicGZleFFIcmh3Wnh5TlcyU2gyYmhkSUwrTHI0?=
 =?utf-8?B?U1J2S1YzTlZEZndjVjVqRXVVSmRkRWVLcmoyVG1JUzFoT1ZGcDJsekFkVWcv?=
 =?utf-8?B?MW5lcmhMMUhJKzdNUGpCZVpGdGJ4UlRCdmE1RjBTTjFveVQzckorTXhReXZi?=
 =?utf-8?B?cEN4d2dFVFpPMC9PZElTamhvTFFiQXVmd3Nxd1pqUVdXZHgzc21zSXBOTk15?=
 =?utf-8?B?Z3p6VXgzT1FhWU1lSVZKMm4yemJDNjQvT25rS1NMMTRsSVRZNlBPSHdPbmtl?=
 =?utf-8?B?Rk00WW1uVDg0QmpVRTlYSS91anVPS2xkTHN0L3VXZ3pmUUpKZzhSemZ1Y2hw?=
 =?utf-8?B?VnYwZlZVV3BoSUJSYnBFM2ZXL2kyQWpna3hPT3BCYVVDak1yV2xyWStRN2Fw?=
 =?utf-8?B?KzE4SEVVVzlONFUvVndaMDBJbTlXSGlDY1gyU3FheUcxellIWitCTGQ3SEhW?=
 =?utf-8?B?SjF1TlBEN1E4MmQvYklKeE1WU2szcktZTi9PUjBKZmUva1ZyemR3MXY5Tk9E?=
 =?utf-8?B?eWZOeFJBWllPRmVqM2puNG9CU242c29MTlJXYlhUVThSMVlKczEwZkxFb0Q2?=
 =?utf-8?B?T0trSk1TR3kxeDFPTmlYR0FFQmhXUmtwMm9JYllFSkYybWVoblBTZEsxZVZk?=
 =?utf-8?B?c0tHRTdnU2pwQkNxbk1xbGdrZ3hFUzJUTmxad1h1bDNuWVoyaWRwS1U4WVVn?=
 =?utf-8?B?eThwaTdmV0YwTnZTc2EvNGZUMkN5ekxKU1ZhY01OeCs4QmN3ZXN3WFMvMG5M?=
 =?utf-8?B?RDJ1QlhpL2RZTDJray80MmhxT1ptNFJEbXY2UFVreGhzbk1rckZ4eEprQ0RQ?=
 =?utf-8?B?VzBMUTBIbmwySzMrdDRSRHA3eHh5aGZYT2xoMEJXN25xaWs2L2JoQlB2Z1Rx?=
 =?utf-8?B?VnM2Ymp0NHVobWk4TWZwdmZrSFpaVmMwZjJKQTVlRlJ0eXJUazhQdEFmSnJi?=
 =?utf-8?B?dmUycURiaUE2UkpBMXRSZlJ6MnNRQld5SXhldUg5eVU0VGEvNmRwMkxoR2t1?=
 =?utf-8?B?dlpwRktxTURBNVBFNlViTXNpMGZhOHZZVEdJWnE4RzBqTkR6K0pianBLZEM1?=
 =?utf-8?B?N3BwNnFoR1VNeUtwMitPbDhiMFk4RVU4ZGRKZlZObWh4b1hzR1ZaRnVqS3Vy?=
 =?utf-8?B?bWRjQ2xaZWJySmV0cHE2U2g1eTNHNE96STFJeGd6UzhuQkFpUXdLS3hjcS85?=
 =?utf-8?B?ZCtSYmJMOUN4bTVjU2FBZkZUS0xEQ3JpVk44Q3VVRWtmNzQ2Z3ErekUvU2t3?=
 =?utf-8?B?OVN5K0Vud2h4ZXFCbldrWDFPUFZiYnIwQWcxejJvQTByK05tZWllTVRJZEtj?=
 =?utf-8?B?VTlRZlZ6dXBYNGVBdXREbzRXVnl0bERkanliTzRGWWoxN1RIUWxHMW9HUmp3?=
 =?utf-8?B?T2pOWkhYWXBWK3NKTWwwcENUWENRT292d3A1Nmg4dDFONC84TDhqU3dOaHlY?=
 =?utf-8?B?aTNyUUVEYlZHL0tNdllEUmF6dXMwdStkcGl2YUJhaDVxZUNSOXRpNFZpS0NV?=
 =?utf-8?B?T0xnR0gvajFJcHVnemJ6STVYOXgrOUVlcVJGbGRUb0l3b3gzS1VSWTlWZ3pV?=
 =?utf-8?B?dUxKRGI5c2JreHZkbWtYODgvS1NPajE0RTRFUXRRSVFBek51ZWRzd3RPL1h5?=
 =?utf-8?B?WnhRVW9MOWdlUzBCR1J5RGFKdE1oUnNDRmttaDhZbElYa0J2ZHl6eU4wOGZ4?=
 =?utf-8?B?YUlSVEVBa1dNNndlckMzbkdxbzEzYVl1cWo2NjBjM0tvNTE1emorM0VHREls?=
 =?utf-8?B?T0dMWFNRU2dleG9YbDhMUGxzcGJmMEN6Q1lTKyt0RlFabTdpbktlbDkxR2Z0?=
 =?utf-8?B?S205WTdqWVY1UGRBS2hjSWpsSzA0RnpzSzV0MVp3YStVS08yb05ITmxNbmEv?=
 =?utf-8?Q?LBospiMcyZ0trP3njFCmaMhUW?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28582d8a-8de8-40e3-af38-08db12faeb5a
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 04:28:30.3550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jDVNz5xWxJWw6v89ZfmdJiL5kWm4hZsbCBh/2bPoEZ2539Z1GsIdFqturIE1vAm3GI5USm03Ygq5z+ZDWcWs/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7704
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2023-02-20 at 04:50 +0100, Marek Vasut wrote:
> This block should not be compatible with simple-bus and misuse it that way.
> Instead, the driver should scan its subnodes and bind drivers to them.
> 
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
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
> V2: Turn this into 4/4
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Liu Ying <victor.liu@nxp.com>

