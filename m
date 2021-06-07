Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B722639D5D9
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 09:20:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230210AbhFGHWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 03:22:36 -0400
Received: from mail-eopbgr30135.outbound.protection.outlook.com ([40.107.3.135]:30948
        "EHLO EUR03-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229578AbhFGHWe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 03:22:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnD94BO93hNjDbN7c8mQ0UV5o5qUElQwKwkrX9NdzhHOBJNg+iXUSd1qzJUthExFZT/B8EDbzgpSIQNnFjVDKU+0KLEo3+2sqoaeL29doiliKqn4l0aWWUjetrbaGgUCI4gSPsq8fEqrcnpObSstzBHgOnf8Jl0fR1ohkERmzE1TZmAEVq5+ro1RhsfrUXUv0X9/IYf1s1E9b7VPd1WyT1JqQbcDDF7f9K3SgOYqXfaBjt+pfPywGff42saDz6d3dWlBhucXs0ySOhOMWv0tSARxC5n9th4uOTakxooXVx0XSGA3Fd22W3n3X+pWS4qzXfgZGczagKvazySlQPyF6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=diuOnXutfHWfPVhoBt66j+RMmSqYQ+hnXAkYtE75I2U=;
 b=QU62/M3dYly5u5dXFXEqJ3PVSQGgy7QTXeFu6g2DOiOW8/seWnUFB5wwtSsHjVcIvQaxjkzfryKLdPuq6xTUIjMz5V609FlAHTRBALkLq78LdB82FUBJqtlrSsdzmIN2NonO+byKlFeDkfiswRDM7SwP6/8YF6xW+zqyINqoxWOfP6R7oQTL+X00IR48l8aU2o9FpbxBtlONLtQrxkIC1y6QL6nMH5xfZE9svokCB0A/RGEJs9djjlx9yHKHmi8oayBCW6mgRzZ29msZ9cCodgT8tn9GoB9Ku112t4TvyK3w5iZZfHzO+yOvwjz2eQ9na7E576RXrb1EnbeM2HBRug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=diuOnXutfHWfPVhoBt66j+RMmSqYQ+hnXAkYtE75I2U=;
 b=lEWNxKlv12UC61WpSnmOQ99eAm3g+4y4mIUur7NMRgCciKAIGR2dPr6rfSpDv0HUWgSv7uZ0zG0Z3SjXhu5lqiXZRK8jhql4a3YLPooBgKCvCmxEmYk6v2FXTMnGmRBg2+6c0rtqFL4Qz2PKoyH9LlKzUbC+wfesejO+E/SGA4g=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB3617.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22; Mon, 7 Jun
 2021 07:20:41 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703%5]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 07:20:41 +0000
Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20210601174917.1979-1-tharvey@gateworks.com>
 <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
 <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de>
Date:   Mon, 7 Jun 2021 09:20:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [109.250.131.46]
X-ClientProxiedBy: AM6PR08CA0031.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::19) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.32] (109.250.131.46) by AM6PR08CA0031.eurprd08.prod.outlook.com (2603:10a6:20b:c0::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.15 via Frontend Transport; Mon, 7 Jun 2021 07:20:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 178d31a9-08e6-40d8-a538-08d92984c1dc
X-MS-TrafficTypeDiagnostic: AM0PR10MB3617:
X-Microsoft-Antispam-PRVS: <AM0PR10MB3617CF20E050D82EF924B64CE9389@AM0PR10MB3617.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nPHzIAaBIY9wx3ylIVLmn0EUr5tnti8WVQSqg3ReEkl/irdx42jzoRBcHAvfldcCu04MyPWJPyopWEEjBPGoDpCUWSmibD6At0h0miNWTFElGu7HDGxrgn2mqJL+EWLy9ldK/1d9GJz4KRIqSsHGdbznZ4eAslp6mMti8W6g4HkAViE+p1yaiCpDVbOWJ2y2KVVeHtKoxaF18dbTouVT86vrhr+txUNCbCTd3tSgahuqyFq9de0jj+2ydtCMVG4vrZ2ovbq9EBjq8UMKpsIfjNgR+70p/SCwPTauMZb0Js6elzygMKi/vOm4TjSwQvehB8YCAHYfDo+M1v/PfikfE8DC5oG1FGyjUSCDCv6x3NxqrK3kc+QjALEtNmUW5KsMnsBzxFhaVC6UNE/uN62j1wLXZHBE5yimpLIY4nu3QP0fw4ZiVQBtfKPbLMqb5XMWzwQdbfTn0JJyPrkZuucJmYlSH/m0GwxRYRsZkvXHb7jieftCVPL4Y78t/7ys/HmgeX2DU/cmDYtA1XlEoMKmkKtBgLL/3BRykVjhBWZezFIistSqZ/edbOObAmuH/psY9kNKmIZDYZm23iJ0+iM/7mXlN4iaJA7km+oqZtoM4UAAk0CE6zSHMcpkoK0NTeRrcXFCODNNeFtC+7RN5osdNYAkaqrd0YfX7WS8+6CDo7zmzU9vYk2/TpQts9RpOD5C9rSqD9Ho8qGkOJYmGkYQhwp03uJpkFhrUOHDbkvdLip8xplUnpK9Icq4lJhOimUR5ZyoQAJbgTMyzNhpNMoNf/ySAczTKXWRUaVyDAbX2QXn4UTWF5pcOv2WTd6z8CE84bsZ06+/zgfLTV1H0ajYFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(39850400004)(346002)(366004)(396003)(31696002)(6916009)(8676002)(478600001)(966005)(6486002)(38100700002)(4326008)(86362001)(316002)(8936002)(31686004)(2906002)(53546011)(5660300002)(83380400001)(44832011)(66476007)(66556008)(2616005)(16576012)(956004)(54906003)(36756003)(26005)(16526019)(186003)(66946007)(45080400002)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dHhVTnVPdkhiaGtnNHZtTzQvcldrekxtaXBYeFE0MEEyaHJpNmwva2NnQWtB?=
 =?utf-8?B?Nm1mdkUvbjlNNjBLWkQwREtYVk1uZ2dxVFZmVENoaDhOQ00rS05LMklDNmVV?=
 =?utf-8?B?TGUvRjVSdTEvL1FOR2JOZkhWZWVYdFNrRkk2NndKTllVY2ZDdUsxMGFncFZ6?=
 =?utf-8?B?RXEyN1I1QlRPRlFCTzQ5S09rU0kyMStvM0UwUTFmdGtBOFNoUGhDaU5oNExi?=
 =?utf-8?B?aGlvMUZiSlhWMFp3dkFSYXd5V1lmeDJVUkVqUDBJSkx0U3NEeWozdTRWR3lM?=
 =?utf-8?B?Myt5SzN2Nndydk1iM1YyaTZrZ0JUdG4wWlhzdW5xUWdCY3F1dVZPTW5Tc1VR?=
 =?utf-8?B?ZnBoQmpCMW1EZWNMTEVHSlNkMC9KaEpiZlhzelR3T3Y2b3J2aW1aR0FlQThL?=
 =?utf-8?B?UlVURGVmMlFUcnhFUUpLT3ZUVDVrR2xMZ1hlY0s5KzhJRktlY1YyMmIyaFEr?=
 =?utf-8?B?bG5Lc2w1Qk5GeHlMbEh6KzFaUEo2Zk94TG51TFpxMjUvVFQzWExpKzlkclFk?=
 =?utf-8?B?ZnlyY2dHem51b2Q5cmZnN01pNzllbmJjVFIzWUV5WUZrUDRNa0ZGc2R5cFVE?=
 =?utf-8?B?L0l2NDRqd0hGNEVjcUUyQnVyeWVkckhJYTA2a3kxTE9mbEtKQzZoTU9ESXpo?=
 =?utf-8?B?Y29PQ3VEK2hBMERjSjluQUlKU1d2UmVibUJRSEgwVDY3bVpLUnVTRUlWNDMv?=
 =?utf-8?B?cGo4Q3ZjU21abWkwVWlZWEwrL05SQTJReG5zSEtld05GSmxadG9CZjhKRnBN?=
 =?utf-8?B?VFE2NEJqUjh3a1AySEwwdWxiOFU1bHd3MzYrbzhyT0ZpMjVqNkhULzhwOGo4?=
 =?utf-8?B?SFdGSUxxNmVGQ1IySFRIZVFoUk1OTHVZWENidXVVUVFoOE5QeHJNWDBXa0Ju?=
 =?utf-8?B?c2lFKy9weitWYXh6UUtieUlibGpieDZGbFI1Sk5KcXJqSVpEUEVUMmlnTmxM?=
 =?utf-8?B?OTFyblMxdFZlajRhYWtBNUo0Y3RSNGZvLy9mWC82dmluekR1VG5CWmFjbmth?=
 =?utf-8?B?RUV2bWpXSUJzT0lmbTR0Z0VvYSsvRWJTdEQwZFZBMWFIWmt0U3dDbXp6cmp1?=
 =?utf-8?B?RkxxTjZBRnN3cUQ3T0dQT2xnbGxDS3YwL0dTSjRZaDNhMkl2MUR3bEdOdnRT?=
 =?utf-8?B?SVVLcGZZNDNTQTlNQ2l5Q2RDN09Wd1ZaY0pMak1YRExCN0JBNE1MVUtOM3lq?=
 =?utf-8?B?dEhQMUZnMVFGeXV1VWR4aDJnRXNCb0wvb1Z1MGpXQUZrOFFZU01WbU41M2Vj?=
 =?utf-8?B?Wkw5amxYQXgvbGFsL29YZG9lOGZieDVnWDc3dXJycUtad3RIZjc4K3ZQakQx?=
 =?utf-8?B?L3ZoU29VTzNTbmF6V0lHK3FxUTd4cnhVZ2FOakw5VlFONlFpc3VjV2JvVGYx?=
 =?utf-8?B?UWJHcWF6b0hUV0toK2kxcC9SMVMyVGY2NThwS3dpYWhGZzFKU3dyQ2FrdGtQ?=
 =?utf-8?B?emVpZFlSTzFiT3lpUEF1emNQUVRDeG1OMlE2RUdHS2lIbEhCMjhxOXd2ZHFr?=
 =?utf-8?B?WXlPUU1rV3VUOTNiTy8yUkJJMVRGNFJKRFBrMUx6bE4yWHM3dDQyUm5SYTZy?=
 =?utf-8?B?OUtpZHFqcUFVWVhjQWwyWG05anlId0wxSkZHQy8wbzZmMFhIM2FSMzBEb2lH?=
 =?utf-8?B?YTBxdVRxWmtjWjRKcXYzc1IyYytlajdubXJucTJaN0Ntc01TMjhmbVJhcUpl?=
 =?utf-8?B?YkhONjJnSHhMNXNSaDA4OTlucXptWmFYTFJuVHBTcEE1M2JKTmVBQVRwUCsw?=
 =?utf-8?Q?rggWB2xpuuICaAFOOt/Z1YTFlbeEmqb4SCjWldW?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 178d31a9-08e6-40d8-a538-08d92984c1dc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 07:20:41.5510
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cz+vUrYzpEHk9+cXmbTmW7VmpvlluIGEg6+dtIW2d86Z8YnZ6zKPhhZMYKEAyof0zJBdlWFQ0l2Q8xdTKsst+WveH4t2pxlCWYlrhITqxMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3617
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04.06.21 17:42, Tim Harvey wrote:
> On Wed, Jun 2, 2021 at 12:11 AM Frieder Schrempf
> <frieder.schrempf@kontron.de> wrote:
>>
>> On 01.06.21 19:49, Tim Harvey wrote:
>>> Override the default temperature alert/crit for Industrial temp IMX8M
>>> Mini.
>>>
>>> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>>> ---
>>>  .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12 ++++++++++++
>>>  1 file changed, 12 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>> index c769fadbd008..512b76cd7c3b 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>> @@ -493,3 +493,15 @@
>>>               >;
>>>       };
>>>  };
>>> +
>>> +&cpu_alert0 {
>>> +     temperature = <95000>;
>>> +     hysteresis = <2000>;
>>> +     type = "passive";
>>> +};
>>> +
>>> +&cpu_crit0 {
>>> +     temperature = <105000>;
>>> +     hysteresis = <2000>;
>>> +     type = "critical";
>>> +};
>>
>> As this is not really board-specific, I think the proper way to handle this for all boards is to let the thermal driver read the temperature grading from the OTP fuses and set the trip-points accordingly, similar to what is done on i.MX6 [1].
>>
>> [1] https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2Ftree%2Fdrivers%2Fthermal%2Fimx_thermal.c%3Fh%3Dv5.13-rc4%23n508&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7C7635e5c10c3e4d3fba3208d9276f5426%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637584181370793415%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=1Ed1rcaki%2FIPpFmii%2FEVc%2FAzPkzTzS9m8nplyFS90s8%3D&amp;reserved=0
> 
> Frieder,
> 
> Yes, I thought about adding that kind of support to imx8mm_thermal.c
> but the difference is that imx8mm has alerts defined by dt and imx6
> does not so is it right to override dt alerts on imx8m? What if
> someone designs a board that they specifically want a lower alert than
> the cpu grade they are using based on something else on the board?
> 
> My approach to this was to eventually actually adjust the imx8m dt
> alerts in boot firmware based on some boot firmware setting or
> specific board support and leave the kernel alone.

Allowing board-specific trip points sounds like a valid request, but I still think we need a way to handle the temperature grading in the driver if no board-specific trip-points are given.

What if we just set the temperature property in the trip nodes in imx8mm.dtsi to zero? The thermal driver would detect this and setup the correct values according to the grading. If the dt already provides non-zero temperature values (through the board dts) the driver will just leave the values and disregard the grading.

I think this solution would be covering all needs.
