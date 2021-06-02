Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 873B53982B7
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 09:11:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbhFBHMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 03:12:46 -0400
Received: from mail-eopbgr30107.outbound.protection.outlook.com ([40.107.3.107]:10355
        "EHLO EUR03-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230297AbhFBHMp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Jun 2021 03:12:45 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QjXTSXolAyNyX4mbBnWiHd4WlIV9ITDIN0nLNKkAhsM1S4Aj3zyqrwjBzZ+JbsxVaGqzP8VFDrsgw17HcnW98xgEZVrZPL8vZupVH+dsQM6xhBIyJ2XAq8AVR56rMEXVlXUgp9OUrBwA36G2Eoqix+PLCpShvgW4BWgV5ATAX8UGeR2rOUngbhWi1R0FP2hzffAIuX5T5eEm3epSfznC1g3GM7XSSnEmlPNEej0oc3AVzbmK3sz2NNthRknN93OssJDFlcI+0hqBfPWIEskIHf1r5kPMk26wkllDUFsHPSkF33czh3hxrR06bBWdYT1zxo7mFf29oXU7k1ChM5yVeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OmpBl6WGXd88cahf9rFHYdzuf+XwF3X+wyQczjauBts=;
 b=apvQsG29+6aj/FkfCy/8OQqvzQwvTmTJWnBF9ztbVhvl+5OATbL9osBN3mHAhtQGjBcndYnCjFLKpzdeXIkaZcMlOZKeSLybEkphboDjnfv1F8alAvGrYv9GRftzD+HZV07UgMi5M3LdYL7yRAL/26AEFM1czbtN6hUOHs11yaPXJ3ihI3O/x9tnZk+Lj2POrbkRlRRIy1Jef23ThamDIfXNmmSXNWvoOqyYssJsfcdLvZa8tp1nalfQeSRHglAwQcsjf0e0ISK+qIU1yrt1eSf86JEoGwBolooD2YdHwCei5rJPqoDeVOmsICJAtubxUClqjQWqP2Ih1gY22gTJdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OmpBl6WGXd88cahf9rFHYdzuf+XwF3X+wyQczjauBts=;
 b=XAuK5LpqozY4tShVyPXRDiRqsifjlYszG0JHEF41yajn7YTTvqpBgbGH+lIp5BxB62rfJR0r8ulNRWX2MsjiTZRSFUb5QJDFIBSPj3KxSUvR/M16Spo+ND6sBcxXRfSkNxDpyY2O7RCr1FY4CTJFU30WPDIGaecprrcDk8dx59M=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM8PR10MB4754.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:314::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Wed, 2 Jun
 2021 07:11:00 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703%5]) with mapi id 15.20.4195.020; Wed, 2 Jun 2021
 07:11:00 +0000
Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
To:     Tim Harvey <tharvey@gateworks.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210601174917.1979-1-tharvey@gateworks.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
Date:   Wed, 2 Jun 2021 09:10:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210601174917.1979-1-tharvey@gateworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [46.142.73.162]
X-ClientProxiedBy: AM0PR01CA0148.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::17) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.32] (46.142.73.162) by AM0PR01CA0148.eurprd01.prod.exchangelabs.com (2603:10a6:208:aa::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.15 via Frontend Transport; Wed, 2 Jun 2021 07:10:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32da2110-b8dd-4eeb-adb8-08d925959333
X-MS-TrafficTypeDiagnostic: AM8PR10MB4754:
X-Microsoft-Antispam-PRVS: <AM8PR10MB475425E6DA5D6BA1E3807EE0E93D9@AM8PR10MB4754.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ETJnJcqZw0I4j24yhTyWviUNOwl+Y968oWPKHv/Ftpz7FVAYTC8dxM+FHkAi6stquw05xhIwLn0u8d0OVZneATPB6RbV9ww3bsV1Y27t+s7WdVX44i8zwHzBowOtHkfbcClwT9MXiTMQPAUXDBpPUEPoI9sfpUMgrqKD3tdz72e/HtemrGTJgjTzbF7/8SGJUwW0wI6Vai1JaajZDmMyCSvY9yPqqWhtck1opirQlOk9x1SdO+1jYkSBnlumTPJ2dMKjp4r+BDBN5du8ArUjgab1MXQsPp3V5jixXe2kM+p7fsNZa3SYkcUDNRyxQatVSFVkKq+X2E5J7KqEDuV4pLIFjaxc+WhkLXeYwe3+AZYe9LedZgUj+IEUrzgylKzf0O8VvtB3mfg1MfpOdXcDA2rWsO+efoTHO4aZdq5Lv0FIjtzKQhdsHpNqX2Hzdq24IRmhogzAzF/Q/vQi9+cn11mv+kryDygXojWtGxf0Poc/pMoCI816pxglM/ZrACcnKACzeAIjiw9NqSRFrE2x0JjIPXpElI9o+DKOyNbaeNSuTTaE2SyDwetZ0IqpFm7hdPTXbh6cakB1Q5aJ2pELgGHdZ86sHMyma1DYqDOn9zA6AKBBs9+iuCLOLnm2MbmCr0THh/THs0SkdHGsdJF78SWByKp1uSXIqqvK4yZtdq35ZeaYAGwd1ZkYLK4XL0TzVG7GVzvyDXX3TEHSTb3lzROOBkKylLMM4JULqD3uRvWEA2ackl/6hRf+Qjg6mmbtg1tQhcdH3braa/b1YEC0eYET8icLBgGtnVwZmvA1qH8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(346002)(39850400004)(396003)(136003)(110136005)(16576012)(966005)(83380400001)(8936002)(16526019)(478600001)(6486002)(31696002)(66476007)(31686004)(66556008)(316002)(38100700002)(44832011)(5660300002)(2906002)(53546011)(66946007)(86362001)(956004)(36756003)(2616005)(26005)(4326008)(8676002)(186003)(32563001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UGttWkRuVjYwMnY4OU1ESHZyN042RHZaSWpvTEoxa3hJU3FEVjBFRTh6eUxO?=
 =?utf-8?B?MTllWkNsSEdZcVpiV29ocFQ2ZTQ5elRSSk5NQzZyejFxOHVqeFAxbk5pbGpQ?=
 =?utf-8?B?ajhrcTk2Zi81cE1NU1REVmcyYlFza0p6WEFTaTUzQ1VvUjZWaXR0WnNPL2Fw?=
 =?utf-8?B?c29YTnl4Y2NCcXpUUGRSamM0VDIwTXpsNHZmblNrdmlJWVJCY1JBVHhZNS8r?=
 =?utf-8?B?QjFKQWNzRHBZK0grZFhEbWI2S3VSZlJEYVMrY0RPdXpETytLY0xuZDZoWklK?=
 =?utf-8?B?aUNaeFFvcFNOU2pSdy9kd3EzYVRSZ3NBNTdxbFFXOWJWdVZTTmxaUktNNHF2?=
 =?utf-8?B?c0hBOWdHeHRveFJnNUduZERiYkdSY2x4NHVPMEF5RWlwL1JoVzZqUDlIOTRS?=
 =?utf-8?B?bVFLbk9ZRmZnV0FkWEFqcVNDVHRvY0ZDem9hSDd5RFRZSldXMXAyaHQwbDVC?=
 =?utf-8?B?Qjhlb3pqSUo5Unpzdi80MEdZSTdEM29RQzBKaHBtNjNFV3VyWVppM0tMWTJi?=
 =?utf-8?B?eWxFWDFwVXpmV0JuN2UzR0hta3J4SHdVWjU0WjZNWTNSRnZmUzBJcnJab2xj?=
 =?utf-8?B?c05XMjZsSUpzQjZ6ZithZlFWMEpIWHVqVHdHa1JIMlhxMDdRenlRZWNwTVU1?=
 =?utf-8?B?TTF4VzV5TFc3TnJ2U1NZVFZsbHhoMSsvRXJCcW5KRHBIeUM2cnhHZTd3VHc4?=
 =?utf-8?B?QjBXTmpwcWV3blZwQ1pwOVhFZm9xVjdZaDJ0d2hQczcwU3BpNWYxTlp2c0N5?=
 =?utf-8?B?bU9QaVpjTFU0NlFuYVhjVTV5RHFLa1lqWEpLelEyNGNJNW5NVmlCdUdIKzlk?=
 =?utf-8?B?cWdOU0w4dUlxODczSXh0U3ovQ0p4QlZEWnhWUVdXd2pjUGFnTVIyUXRHdThB?=
 =?utf-8?B?M3Z6RG04eXQvc3Zpckxaa3NZVjc1WC80UXRjcjBLVXc2ZGpoUWtjaUE3Q2Na?=
 =?utf-8?B?b1JiRTNVWG9HWVNNVEtUZ3hpdE9xdlM4aEorbDBHQjFLcVBKY1BRL2ZsM3Jx?=
 =?utf-8?B?T3QwemJ5RHU0SjNOZFZMaUUyanZhUXduVW1WMTlMQmhuVVNDNmNtMi9XSlE4?=
 =?utf-8?B?MDFRSG1vMDZwSmZvbEExNTA0eGdLWUJhRzNxekg3NVRESFMxVWJqdHphZmxT?=
 =?utf-8?B?dWpvaE9LWlJpeXRrbXBwZ0hDdHVGa0Ivd3EwdmQ3d3l4R29GNEdWUElSbW5M?=
 =?utf-8?B?TzBRaUVGdm5PMmFZcFk1S3JXQURBZUIrOHZsZ1VDemJ1RWpwTFlpSDR5eTZx?=
 =?utf-8?B?SDlJeWlNMndSSnFxUmtWbkVXMGp5eTRFWHRJZVZFMkUyb2h6THhLQXN3MG05?=
 =?utf-8?B?andienNYZlY2eTF1K05xd08xSzhRQlJXalEzTjh3RFFEZnc1Z3FaQ1R3aHAw?=
 =?utf-8?B?WFc3MC8zRUJiendLS014ODNwa25xc3hOdjJjYU8yNURERVpOREdydmczaUpD?=
 =?utf-8?B?bHdKN2RNVlRhbi9lWVRkSW1xVkdrVlZvRkUxYkhTdkdDc2c0NFN4aThpZDRB?=
 =?utf-8?B?Mk90Qy91dVU0MHZFTSs2MzNhWWgzYmtkNGJobGtTWmt6aGFTUE5wZW1uUUFV?=
 =?utf-8?B?VDFJL2Z6SzNCKzYvV0Q1SXJqelJ4aW0vcmR1NlRDRStWTEk1eTl2MWZyWUhR?=
 =?utf-8?B?YTFGN1l0UUw2M3RMMVBpTUlYeTF1WVJvMlpiZmVFVVhMS2o1a2hZcVYrMUww?=
 =?utf-8?B?WmZ2UVRoTXVmL0sxZTZEWGNBb2Mvd2NHNW5kYmI4WlNGY0NwM0tGcjdXa1dC?=
 =?utf-8?Q?V86Pm/jjA2bpybriz7UCX04dgrL9jbCJQ6UWcAB?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 32da2110-b8dd-4eeb-adb8-08d925959333
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2021 07:11:00.7733
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FSfK9KOt4TStJDMXhVUOzyNHxO74/llV/OO1Q3AjQtvRCmvYmUVs5z7dkQZ61tAVV6fisJSP2f2UHNDfDhPXzwRlXcxoNHMf+ORSH24TkCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4754
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01.06.21 19:49, Tim Harvey wrote:
> Override the default temperature alert/crit for Industrial temp IMX8M
> Mini.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> index c769fadbd008..512b76cd7c3b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> @@ -493,3 +493,15 @@
>  		>;
>  	};
>  };
> +
> +&cpu_alert0 {
> +	temperature = <95000>;
> +	hysteresis = <2000>;
> +	type = "passive";
> +};
> +
> +&cpu_crit0 {
> +	temperature = <105000>;
> +	hysteresis = <2000>;
> +	type = "critical";
> +};

As this is not really board-specific, I think the proper way to handle this for all boards is to let the thermal driver read the temperature grading from the OTP fuses and set the trip-points accordingly, similar to what is done on i.MX6 [1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/thermal/imx_thermal.c?h=v5.13-rc4#n508
