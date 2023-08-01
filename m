Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3888476A640
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 03:23:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbjHABX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 21:23:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbjHABX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 21:23:57 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2085.outbound.protection.outlook.com [40.107.7.85])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9578AE4E
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 18:23:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HvIstX/AABrmOQdkFb86e39jqGYfuY+bSeblc8vN4VYwi9k5LzaYESgzjblsf3xfZ3pVN64yIzvyoV7nLm8dA4hWXc3+M/1WBdW33mUlX4AmeiIpdX8wrCe1aNWLrbGD+aVieMKZPbI2rcHhJIT+uYeWO4jwR6+pLhY8RfHJpTbTcPBlmHup6mCcXhaozDF9inbNqqmoeaQTZYEXpLUl5kw3hXI6UYR188U1evmK68vac3AwciEcYLfck2eUZDuv9GaZrp36wrJQLvlcDTp9gNF9a7X8068pA7EBgvh6yeGe6hrMd0+X0j9ANDoZG7EwpOhAbRte7Oehn89O73xhNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZyLzYnG4l1nHwMrftUndvat/+xeA+iV21ncZwDbgD0M=;
 b=h5OrvM7S+rsR1z6drc8iurqbaPcw6Z46/psuEgA3oGv4agiFMVdsr5U/XwH+Vyqk7K0LldGyWe/dXd04KWMeF+Ik9aI8rkCPwjQWGtg8OThEo4jirD68pVMaBMVrXTKoYnGDmaJ5kjRzi2B557AiAYrZsTMPiEOTf501Y6HdhNNUazU5ABaDGwoqJ+z+jRE4IcuJymf94xWTQvm4cnPWdH9BqMx5W0HI+lHyuiai62brRd9DH5Q1qWzV73sJs8qBrDQQHkeZkwD6Mp8xtXw24Rj/lVr2SvJ0O6IZp3R9GSbpS+LmPUuk1V4MO58oHgb+iAuEInl6ME6uknPnVnoKkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZyLzYnG4l1nHwMrftUndvat/+xeA+iV21ncZwDbgD0M=;
 b=dInFTAeWTfAgYvXqLgPOgg3s3YLNMiKQXbcNWt/GRY2zk0PbqDj6TTABkZJmmrBi6ii1vWXdi5szpOVeAztwZiI3EGCWvUjk1BqFXH3QRkEIv2ZHWxm6gSfSg7c3mC01o/m8ztOsDJoipO76zjjG3ono74aypRSTy+Dw6AY1iMM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AS8PR04MB8021.eurprd04.prod.outlook.com (2603:10a6:20b:2a7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Tue, 1 Aug
 2023 01:23:52 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::5d6a:ec53:f2a8:5b97]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::5d6a:ec53:f2a8:5b97%6]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 01:23:52 +0000
Message-ID: <b4f40387-0b52-bf45-ad64-cac17f09a460@oss.nxp.com>
Date:   Tue, 1 Aug 2023 09:23:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/1] arm64: dts: imx93: Fix anatop node size
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
From:   Peng Fan <peng.fan@oss.nxp.com>
In-Reply-To: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR02CA0053.apcprd02.prod.outlook.com
 (2603:1096:4:196::16) To DU0PR04MB9417.eurprd04.prod.outlook.com
 (2603:10a6:10:358::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9417:EE_|AS8PR04MB8021:EE_
X-MS-Office365-Filtering-Correlation-Id: c6613fe1-11fd-4dba-1eaa-08db922df6cc
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +qmW4pY3w+v9053dKT4VA4PpEZuCA9r/wtAmiiNRWgaEbBhz33eVLtlZsBNc2gXatc6WksZhqPDpmR2KKpSTs0W6SAgpwEc90AIx0vXLFMChjvDQ5gjhFqnM0Z/yykWeduej1ziu0D4LLWP4m3lcgwAdMgT8WqAUUM5im3JdHJuQeNk4bB5496dMZPkg+UQMkEhgsYGT43N+kVOFbCgfvZwdGSeWPWbp2vhtmRFPRMNbKs83OduN4EiLZ7osEbCxrxJDY5JvIZQu3teAWR3KwmcP1cCXtrpsbVEQpCrkFqAZRB4i2EiO77cRmZMpnlImZeFlNEnosKmtNtd/ABQUmAQArCGcrfNV4t01/8iCc3uvtCbbRqzLEUnN5VI2EbiBCa49M+/BBsJXENPzA9U61ZHcaGNTccBu9fKulrADdSWuMJRZJhUYlbl3BbYxwBitk/Y1IC+3qOYvvxFy9sEuTdPVOHzJghVQU/lCOxUQz1I14/XulQeymYsPhf9D+8i7zcvqnzgryw/p7UQ//k8HkhupgtmrZHGgoHWQ2leHNkW3Qp+yClaDb0GtS5ItO8H1wYD67a8zI0EQg+pBc1f//TyPPjGAxebLSNYMOjcFK3IMVxZoiou2K/vWGgItgXkgG/nrKIkC6KNUvOPiMtxslw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199021)(44832011)(6512007)(6486002)(2616005)(53546011)(6506007)(26005)(83380400001)(186003)(66946007)(66556008)(7416002)(54906003)(110136005)(41300700001)(38100700002)(31696002)(86362001)(66476007)(316002)(5660300002)(4326008)(8676002)(8936002)(31686004)(2906002)(6666004)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ak9wQXdwOE94b0svRzdHZWJkTlRDNDE0VityZU1xM0ozcyt3ZDFwVitQWFBC?=
 =?utf-8?B?L3kzeDlEbFZSNzNzNmNWRnA3dUtmaTlIa3hneFB1akRjSG9KUXdhQVZUMm5m?=
 =?utf-8?B?N2FYYjdDUUdPOHFiZGtpMExITVZiNC9NNlVYQnpUWkFTeG5PZUk0cVZ3Nlkv?=
 =?utf-8?B?Ui9hUmJWaC8yVGgwTG1OdnB3M1NvOE5iZkwyV0twS0E2S0ZDZC9ySDhWTXpO?=
 =?utf-8?B?TDVZdWEyaENobGMxTnZhZlcyRktBMUdhc3RMbFVoWk4vSDd5d0wwZzJIU0pJ?=
 =?utf-8?B?c0czWk5KVXZyM3JJOHBZMFJvTXNWTVU2ek05L05vWjBwRHdWNVpraXVaamQ1?=
 =?utf-8?B?eC9tN0ZJajZrL08xSWVBSTlJT2xxSmUycWZMK20zVTFLWkw2T0x3dkdodmNw?=
 =?utf-8?B?eS8xWDNXSkR5MktPT3FiV3ZnQUhQNkpKbTJqSXJrRzZXOUpqMUNYd3ZRK3lG?=
 =?utf-8?B?cVpGQ2M5bFFVNlc5a3dHRldCN1ExTXJGTko4WTBPVVlhLzg0SFVzZ1A1YXd5?=
 =?utf-8?B?czVLRGVabmJYNis1VXBxZmIzRTNLcVBVK3pjcmF5Yy90WGxNRzhwcFZPY2Fl?=
 =?utf-8?B?QXV6ZVFvcjYzZ1kwakZYMG1QTW5KTzlveHc4b3RvaXhkVWlsai9nYzlHaFNn?=
 =?utf-8?B?SXpQWUZ4d1VKRWNCTTQ5V3VNUHc4cDdKZzZHazBNRXFvVWVqVnB0L2dMRWo1?=
 =?utf-8?B?ay9hNldVclZPMk0xUjJhWXg3VFlaNlQ5SW9zVUJNa0orYWNHb2ZPdTZBNjRN?=
 =?utf-8?B?Y000SVgrY0dxeE9qVzBpd0k1UGtDd0lvVEVFald3aXRDK2FLSzJVVlc5VVFW?=
 =?utf-8?B?TERmOEcvQkhvNUhBbFdxQjl3RDJpSU9GM2hVcXErYjh6YUpFUzhzaFRiZ0l6?=
 =?utf-8?B?MWhubHdyRmFMY0NTVE96MXgvOG83d0lRQy94bW9zRXJXa3FKU3VLQnRsSmFa?=
 =?utf-8?B?OUYxYTZTMFltaHZJVnprcitiQ3hxbWxvWjBVSDR3UHViWnM0dTRnUytxK1hj?=
 =?utf-8?B?SGljY09VQmQrTkZGUU8vUVZmY2xzdVdtemJMVmQxOWFvd2N4eXJjb25OY0NG?=
 =?utf-8?B?Nk1uYVNSdENCT0l2WURldHlyMGI2ZUhNcXREeXBBYjV3T2N2QkZ4L1ZwWlNM?=
 =?utf-8?B?TG9WcXdvTWNOQnhPY0FIbXhEMUFIR3l4NXNJTzlsUVNjVXpqWk5TQndVaU5w?=
 =?utf-8?B?dFA5UzAvWks0UCtrVU9ZSmEzOXBtNkxjRUZpT0VXVUs5VkdHZVYzOU5QUnF4?=
 =?utf-8?B?L3g0b2FHR2U5V0lPajNRWmNVb2t1SGRaeCtKZE1BUmJuRHlaSE9nZ1FwYWpS?=
 =?utf-8?B?N1RIUEZISkxHNjEvWmowa3lSeEdEZkZ2dCtoWnJiNHlOOUNmVU5kN21oRGpL?=
 =?utf-8?B?dDhSTEFaaWJHZlFzNU5Ha0ViQ1V0SVRrTFVXcytWTzVYRzdLUXNGOGtaSnlr?=
 =?utf-8?B?NFBQbWF6RWZEcXFtTDZQNityUjZVQ0svMFV1c1JVNHBSVzYwek9MTmVxMTlY?=
 =?utf-8?B?aEtUNFlabUlnVXJ6NFZ5TlpsMWZqQkRsMk1maWxyd0tFQjQ1R0g5dHZVSHRH?=
 =?utf-8?B?TmlNalJidGRJYVFDdW5IQXA4WC9haFFFR2FQVkRuZXNOUE53R0RUK0RGOGE5?=
 =?utf-8?B?RkxNKzlzbWtwS25OdHp1TFQvOXhyNENMM0ZtQ1J3aUlrWFF6VGE3bWlja2x2?=
 =?utf-8?B?Nlg0SlYwVkYzL3FML1V6ZUpvWkFjWXh6V2FSNk11aTJpanJoVTJmOVRhZnd0?=
 =?utf-8?B?cS81ZHBzOFpSZEMxZ3d4My9VREdGOTdjSWEwWWNabHVsYjJtditkQmFDOW10?=
 =?utf-8?B?elAwcFNETVk5aXZOT211Q2xlTHlmQXNqUWU2d2xaUWUrS1NRT0xuTllIem1r?=
 =?utf-8?B?WkpvNWpyUlJ1cVd3aUVwZ1pFYjFNTElKdkFOV1c1YXA1enJ3QkhEVjBvbEJH?=
 =?utf-8?B?QUE0ZTl0WnpkQTNJeXRkV0JlOEJjZDlBSjlnNFNBbzJ2NFhsL3MxdHdrQmt6?=
 =?utf-8?B?VjNnVXI2SmhlVXM3U0Iyc0VOdzFoTGZZclJoaVcwTGxaQW5PT0ZMQndHQUlx?=
 =?utf-8?B?OVFUdGt3cnN6UHRITWk5YkxYUC9sWFpxUUxZdWViK20vMnNES3NYU0Z1R2xp?=
 =?utf-8?Q?vRD5wbaDnwPIqqFolm3VJIXuk?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6613fe1-11fd-4dba-1eaa-08db922df6cc
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 01:23:52.1541
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AoKQbHnUgsLkW0fTlHLC+up09jGmIMU+QSjIQWyu5dFSh/WhQtekowNaeFW1BPgbo88h2/TzkOis5r8iPSt43A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8021
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/28/2023 4:34 PM, Alexander Stein wrote:
> 
> 
> Although the memory map of i.MX93 reference manual rev. 2 claims that
> analog top has start address of 0x44480000 and end address of 0x4448ffff,
> this overlaps with TMU memory area starting at 0x44482000, as stated in
> section 73.6.1.
> As PLL configuration registers start at addresses up to 0x44481400, as used
> by clk-imx93, reduce the anatop size to 0x2000, so exclude the TMU area
> but keep all PLL registers inside.
> 
> Fixes: ec8b5b5058ea ("arm64: dts: freescale: Add i.MX93 dtsi support")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
> Unfortunately TMU isn't listed in memory map, so it was a bit of guess work.
> 
> This fixes the probe failure of qoriq_thermal:
> qoriq_thermal 44482000.tmu: can't request region for resource [mem 0x44482000-0x44482fff]
> qoriq_thermal 44482000.tmu: Failed to get memory region
> qoriq_thermal: probe of 44482000.tmu failed with error -16
> 
> /proc/iomem also shows it's claimed by anatop:
>> 44480000-4448ffff : 44450000.clock-controller anatop@44480000
> 
>   arch/arm64/boot/dts/freescale/imx93.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 4ec9df78f2050..6f85a05ee7e1a 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -379,7 +379,7 @@ mediamix: power-domain@44462400 {
> 
>                          anatop: anatop@44480000 {
>                                  compatible = "fsl,imx93-anatop", "syscon";
> -                               reg = <0x44480000 0x10000>;
> +                               reg = <0x44480000 0x2000>;
>                          };
> 
>                          tmu: tmu@44482000 {
> --
> 2.34.1
> 
