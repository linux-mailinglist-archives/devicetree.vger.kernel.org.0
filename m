Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA2F851450A
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 11:04:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356145AbiD2JHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 05:07:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352838AbiD2JHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 05:07:05 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2109.outbound.protection.outlook.com [40.107.22.109])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B4E9C44D5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 02:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UflbQNqwEy+A/7I+zJy5C0SnPdnULx37tZhNPXT1v8Jm4ydnD/1erU/nGffq0zO74qSdWbjZ6a3WgU5EtR6r+Ln+t1CElvAAYi0a28dd0p+meP0S70I2imQKy3WrvF4p9IZwHg/kyZ6AhEZS+lATkGLw6nc3CAJml1FL3cpDFORftJi8zyuvV1pA4nw5ExtL1khcAHPhLkY9QrBuyyJbAazdt0KTUcW6l10NobOJQ/RJmk48xkOwzxj17bgdIiq19Q8qAA3ND95+l49tjHRf+8h7xWIRQGYQdoX9dReSbO8fBIfcQbGU2Y0caQXNV11WJUCkVo3Amc2F1qhZk69r3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bYp9PgMDnv/9hngHnN6/qRQY+yzkqu7lHtTyJvvSAK0=;
 b=ZX7gpnJvOixDgoiqtstjlzT3l6nYKfhxURjcDoX/2cYWqkI/7hSj8GuBx1G03yD/ZSprhrv/nM8bNwc1ZW2aeWWr0Ssec0RPPAgT2Y39Uw/3eFVtzzBy4is1uQauPQ4gAbBA3FLA/vtsIHIUeLjJ6C2uwWlwmakGcxGifjzu/50nzxpDW/qbCj2T17cdRWsKKnEAoVo0yI9uJVPi8lrVG6PYopk49B8c942pIh2pwkTM2fXFsPGxAKB6JvzHjh5jm7g5fo4JzmaFUymIAYBeeC2X/HX5yBSv6ZcW7bKDu92hm3jh+NMyYGpkMV+Z2HrShmdaUOv/sRM+DKdiwZjSJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bYp9PgMDnv/9hngHnN6/qRQY+yzkqu7lHtTyJvvSAK0=;
 b=lNPy/9DSL80Sz6F8DhO/ZX2hzTlE8AAojYlaZgaLe2GoaUjYiCGCWM/BTBYaBxuZ7nmVqZJPB0MneAMLZxwzfy/TUINeZ7hLfpb/h9Sz4MAVKXCku/MtxpL9la2cYIKq7yIB5NAxsBPyR4sljDDcaMaGOG3imFKo6V505UsnCk0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by DB7PR10MB1866.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:5:a::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.14; Fri, 29 Apr 2022 09:03:45 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c8f:a38e:4ca3:d480]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c8f:a38e:4ca3:d480%9]) with mapi id 15.20.5206.013; Fri, 29 Apr 2022
 09:03:45 +0000
Message-ID: <1241eccc-5267-b241-7da5-ce5e62cdb6a3@kontron.de>
Date:   Fri, 29 Apr 2022 11:03:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] arm64: dts: imx8m: correct usb power domain
Content-Language: en-US
To:     Li Jun <jun.li@nxp.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, l.stach@pengutronix.de, aford173@gmail.com,
        tharvey@gateworks.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com
References: <1651218184-22066-1-git-send-email-jun.li@nxp.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <1651218184-22066-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0504.eurprd06.prod.outlook.com
 (2603:10a6:20b:49b::30) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d74652d-d9f5-4575-8efe-08da29bf2a01
X-MS-TrafficTypeDiagnostic: DB7PR10MB1866:EE_
X-Microsoft-Antispam-PRVS: <DB7PR10MB18666CD10F9FA3ACAF6ED222E9FC9@DB7PR10MB1866.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /1ELDEhQfvF5NxVas5ArAlZs3crWAtHVlx1TdFAVUh85TmXWR+H9XY4ynKP1J8Jod+SwuyKrHvl/z4Vt4Heg2uyJXbCruMc7gkvfzf0UCCISPxkOLrI8/aEWDADcoiC6Wd37CYYLn29UQkqfJweKAaQ1bb7YHWtbN8IsgKx0ZW/eY9gbLo4pTdZaI1NHg5pABpvnbeuD5Y2m6rYhUOF0hxGmg3B8wp0mxykVmyi+Gd+Wt7KZda9BC5aPwdVvH+YiU16zc3LDUuKrjiAu6R9VNIxK3NiBeTzwGtd015XWtpsiFo2WhshpNnSgg479iW+2XxxvH24IRtb60McUxN278Q9sscVf+OpTr1lJtU749TEPuz8tW/+3ExpHW1y+CWPT9b4XFp5BIjmefUQoTP0/dMmIt3YGL5l736ww5HQRB9w42NQwyq6/MioncCsGVWIxXiQf94YMIfQ0dk1qCak5Mqr827AVEpk73rAr9rnICUix5jMZo6DO08rfQN/MRudrYRPbfXFf1HtcJ4uC6j0Vh7BxTc709xzI3c5jlRJtA51TdFEZnoWVpWxUQGSe19RoCSAlRXj1FuPETerUBZMSR09+R7EkUfJ8vkkPfdZAiMnUWRDiUsQzoXnE0E6VEI0Dc5FobAmRm1tW86aQg7fengLj0iEZr7LkxmynCeM5uYFOJqkeL1lzceyhQWP2wtm24aYDk9fEt9N837edXZGf3K3+DZRLIZ2c6yxnjjokWgEd4pIygLktZ5k4wRLaaQdE
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6486002)(38100700002)(31686004)(2906002)(7416002)(44832011)(5660300002)(83380400001)(6506007)(36756003)(86362001)(186003)(508600001)(31696002)(8936002)(4326008)(2616005)(66476007)(8676002)(316002)(66556008)(6512007)(26005)(6666004)(66946007)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlJUWXBYdkd0Q25CL05LY2psOWMzMXUwdFRkV2xma1Z0bjRMOXpvUE94QldB?=
 =?utf-8?B?dWNYVEowT3o4MHRhbm5LMmZzeGRZRnJPekhzNXAyQlFCd2k2U2plRnpqaklD?=
 =?utf-8?B?c2gyLzlUdTlLRUpDdE0xY3Y0SGhIUFBjRjF6RVp0UVBtdnVlY2pwbWh0UWJv?=
 =?utf-8?B?b1FFc2VOeVpmM3ltcnFWNmtKYWxla2pxcE1xT1F6d0Z0RVhuOC9RdTR1QVhO?=
 =?utf-8?B?RzVSaWE2V25ubDFRdUlQdk5HMk9Yd2FsSzFvUG8xUFBSL3dVem90NURRYVZx?=
 =?utf-8?B?aXp0NVRIblFFM0VITHFkaHZsZU5tbEFrUkdhbUZPM0toMDhtL1djbENMVUF0?=
 =?utf-8?B?cEEzbHR0M3ROTlZCT3d3b1RhVDV3VitrWWRtNkwzY09mamsrQVdZOFBWRWV5?=
 =?utf-8?B?YmthTWNSL2tUMkNYZnZ6U2N4TCtadGo4MjBybkpISTI0S3RYNVpNOWMwOUg5?=
 =?utf-8?B?THhJRklBeTRJa2dWRTl1dlFTWkt5dkhQb2Nwd2I3c2lYcElIbjFYVWp1Zy9n?=
 =?utf-8?B?SW9VaDgrcTgrYmFDMnErYnQ3Q2sweGRDN3l3ODkzTTN6WGw4UkV6STR0VlBz?=
 =?utf-8?B?Y0c1S0xTc3N4TXRRczd6T1B3ZmNWOEhSQS9nNXRsT3dXdkl4cUtSb28wQ0Rt?=
 =?utf-8?B?a04vTHRsYW9QNWU1YndodnI1cHplWGxGVkpRN3hiRk1FMlF0K3Fxc0cvQVUr?=
 =?utf-8?B?cUtKY2VFU1BCMnBwaWNEQzI0cUVWUWY0bFNCMjlpdjJKZG9RSnBBZ0RMSllm?=
 =?utf-8?B?V2Q0cTZDSlRDbUdjMHNBZ3JSRUxaY3ozaS8yUHZJcWhUZU9hM0RBUm8rSEFh?=
 =?utf-8?B?T1VVOElrZHJUTjB4b1B4TWFpaHl2cjFpTHBmb0VKUlhIU05sVE1pbUpBbVdk?=
 =?utf-8?B?TjB2UHpBcUs5aVhqTlJoSWFwWU5RcWJmZkFZN0p4SlNnclgzaDNqZnAxaVVh?=
 =?utf-8?B?L3BxMWRGUDF2MGpORGhTOSs3WTA3R0t5VmNGcExBbjVTNDRLc3JRMzhoZGU5?=
 =?utf-8?B?OUx5M3hvYWVleDJqWHpPaHJ5aWhJMEloYmkxb3pJN3A5dFpjek9oSnR6WklU?=
 =?utf-8?B?T1pmeUhycjhkbWZ5bm80WEJ3VEM1U1J1L2J0QTV2OXYzOHd6NW9kc3JWdlpW?=
 =?utf-8?B?cHhrZHFrWmMvS2Z0Z1pQYzROc2FjaU9VdW9mQkRXR2hDY0pwVTdYU1Y2NE1a?=
 =?utf-8?B?S0NJTGNnVWZ4a21qTWdrOE5nMGVuaEh6N2xUMFV4M1BOTkVKcnpzcFZLQWwy?=
 =?utf-8?B?V3pFZUV6NC8rV0xNelhWdXRCQTRpVDhEaW5KU2xyaU55cmhjYmxNZEJTUzlW?=
 =?utf-8?B?SThWcjBiRlVrcTJ5QUxUSGZqWi9CVjRHb1A0OUwvc0lCbWZoWTQvY2h3dFpO?=
 =?utf-8?B?YWZTck9rYmd0ZW1pZGcyZUpSSVpsc20rSlhqY1Y0U3lKOTYwaHRQQmJySm1P?=
 =?utf-8?B?dm94cnFLWFZ1WU1vdlNoK0NHM25Ia3JGRGRtK0JFSWU1MGwzYm1BQTkvNUNQ?=
 =?utf-8?B?bCtUQjI0YU9HOE5BK1dMSEZpbElhb0EzWHZDTkljZnR2Qy81cHltcTA0YXVP?=
 =?utf-8?B?RDN1VFpWWlp4SENWV29DbnR6aDNhWEFEMlJFVVhTNFF3YmgzYjJ1anpyb2xV?=
 =?utf-8?B?SDJoN2RNZ3QyR2hRbk8xbU51dExoemdzT1JoUDAyNE14dFNPaTZlVHovTlBE?=
 =?utf-8?B?cVFvNm9tMmtPdGNiMlRMYVV6Tk5NRFFpRm9sRjFSMWtydHVGc0RDZytiL1JH?=
 =?utf-8?B?am51Y0pheFk1UTFNTWdzOHdPcm5YMFpyYzNqcEZlaEQ3bUJ2UXJ2ZGNSVnpK?=
 =?utf-8?B?aDBJR3hoYlZ6d1N6bXpSNkNwL2hFaW1INCt4b2FQRGx3aHpKcDZzVGlaMnNw?=
 =?utf-8?B?UE82MHJBWE5hWDJ2TjlreGxrM0JEQitRczNzQnJZZkdBM011aERUUDN1dzZ2?=
 =?utf-8?B?TzIrNGMvbHJ0TFpNNFF6MEovc0l3aytFQXNZWDdkbWd1ZE1zVW45a2dtNW5O?=
 =?utf-8?B?SThMK3N4SlUwTEs4ZlUwamNHWHh4aXpVUzRIdGlGaERVTjQ2cEZma2JxVDB3?=
 =?utf-8?B?NnZnaXpFcXd6U1VXUVVjYkFLZzIyeFBBRjVjSFd4cEI5ZDBPaVNUQlJOczBQ?=
 =?utf-8?B?bUJrVVpDRVkxK2MwMW14alVXU2NDb2k1SHRIRmJUNDJZL3lONzVDdHdBNXFW?=
 =?utf-8?B?c3VQdkM4cUcvcDNQSG4rYWgzbzE0SFRYYkhrNithdEg3YlI0ZjcvYVNXa1hM?=
 =?utf-8?B?WmVXVnhCUHlPcUNLYllpQm92T0Vkc1RmZm5UTDFScW1PWFdtTjNBT1NYOGt0?=
 =?utf-8?B?VDZsU3lnSDVCSmtId09VNTNQNWtWT3N4THJIUmNacW1UNlRMWTRpZ1Q1MjNk?=
 =?utf-8?Q?duV0mgTWNucKKAto=3D?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d74652d-d9f5-4575-8efe-08da29bf2a01
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 09:03:45.1261
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Do0IkrFtKsURDBV/jtn72DIow0mvi0R1RkSbgTFiPlAHq5aDvOxN98lp8GX/2az8Q8P7zRkb76GBYhUgprAtGoseBLGef2UKxFDK8ohHTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR10MB1866
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 29.04.22 um 09:43 schrieb Li Jun:
> pgc_otg1/2 is for each usb phy and pgc_hsiomix is shared
> by 2 usb controllers, so assign those power domains to
> correct controller and phy node, decouple the pgc_otg1/2
> from pgc_hsiomix since there is no hardware dependency.
> 
> Suggested-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Li Jun <jun.li@nxp.com>

Thanks for the patch!

In my previous test I probably made some mistake. The second USB
controller was kept enabled by the onboard hub. When I disable the
second port and test the patch with the first port only, resuming from
autosuspend still doesn't work, even when I keep the HSIOMIX as parent
for OTG1/2. So there's probably still something missing...

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++----
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 1ee05677c2dd..3ff71ca122e4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -275,6 +275,7 @@ usbphynop1: usbphynop1 {
>  		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
>  		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
>  		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
> +		power-domains = <&pgc_otg1>;
>  		clock-names = "main_clk";
>  	};
>  
> @@ -284,6 +285,7 @@ usbphynop2: usbphynop2 {
>  		clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
>  		assigned-clocks = <&clk IMX8MM_CLK_USB_PHY_REF>;
>  		assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_100M>;
> +		power-domains = <&pgc_otg2>;
>  		clock-names = "main_clk";
>  	};
>  
> @@ -669,13 +671,11 @@ pgc_pcie: power-domain@1 {
>  					pgc_otg1: power-domain@2 {
>  						#power-domain-cells = <0>;
>  						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> -						power-domains = <&pgc_hsiomix>;
>  					};
>  
>  					pgc_otg2: power-domain@3 {
>  						#power-domain-cells = <0>;
>  						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> -						power-domains = <&pgc_hsiomix>;
>  					};
>  
>  					pgc_gpumix: power-domain@4 {
> @@ -1180,7 +1180,7 @@ usbotg1: usb@32e40000 {
>  				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
>  				phys = <&usbphynop1>;
>  				fsl,usbmisc = <&usbmisc1 0>;
> -				power-domains = <&pgc_otg1>;
> +				power-domains = <&pgc_hsiomix>;
>  				status = "disabled";
>  			};
>  
> @@ -1200,7 +1200,7 @@ usbotg2: usb@32e50000 {
>  				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
>  				phys = <&usbphynop2>;
>  				fsl,usbmisc = <&usbmisc2 0>;
> -				power-domains = <&pgc_otg2>;
> +				power-domains = <&pgc_hsiomix>;
>  				status = "disabled";
>  			};
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 8def5d679e7e..5482180236ae 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -662,7 +662,6 @@ pgc_hsiomix: power-domain@0 {
>  					pgc_otg1: power-domain@1 {
>  						#power-domain-cells = <0>;
>  						reg = <IMX8MN_POWER_DOMAIN_OTG1>;
> -						power-domains = <&pgc_hsiomix>;
>  					};
>  
>  					pgc_gpumix: power-domain@2 {
> @@ -1076,7 +1075,7 @@ usbotg1: usb@32e40000 {
>  				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_500M>;
>  				phys = <&usbphynop1>;
>  				fsl,usbmisc = <&usbmisc1 0>;
> -				power-domains = <&pgc_otg1>;
> +				power-domains = <&pgc_hsiomix>;
>  				status = "disabled";
>  			};
>  
> @@ -1174,6 +1173,7 @@ usbphynop1: usbphynop1 {
>  		clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
>  		assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
>  		assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_100M>;
> +		power-domains = <&pgc_otg1>;
>  		clock-names = "main_clk";
>  	};
>  };
