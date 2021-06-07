Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4901639D77C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:34:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbhFGIgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:36:40 -0400
Received: from mail-db8eur05on2096.outbound.protection.outlook.com ([40.107.20.96]:42081
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229545AbhFGIgk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:36:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PZlh+qKEPXTFUhH6ORR586HhdrzCFDAwczoDmrbD/SVsyLX+QtOblwKF8J+Ac0FcEp9Q8CzHXQhZJ+csux2NfMZWsE6whBHnGF3ZAYloMRIqgQfmd+Dy04yMdVUeRMQGEWXbqWheOGawUiuXMofYC8My8h3Qrm04B5Q7nUsf9RXqvI7p/hwgt3OGX0lZptY1C/+Laeu8MwwovbvkaSm3uXaX0hYNFMc4x9jrgunDhJUyib7TohvMiSC/Q5rNdF5SPC/dmera1CUuYwVK/upPFJwVImOH8/UQ1oLOYmqgS1pAS8jT6dAWW8OcPyTmRrNqZ0IswcY0IBMglcvRFGE65w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ds3yFTaDIf5DmcYPp6ULlqxfloWJQDFdXuGay4pYNDk=;
 b=HluTkyEBEA5ah7Ts6iSpsgOBSJ/R6XRB7IDh1BRLBFFVRiv21ziCuUJHjSxDgoE3zsROIYiW6g72a2cksyORy4/RFfu57HGyCYgH5xemilJcQWEn4DoWhDQhBWkHGMfnj9wiaBI/FvvGgphlh5Y2wYG+GJPfWg5dpu2Ke24/0XfxN028acI/Zkbzeg8uc1pe2SUzpRjMo/i+5OUz9nJaCpA1l6yftRfmlwx4CoXbl4lDSxf8uAL1BgEzm6aETojxK53ObnzY+IcsMZu0O9PofTgGHFQhcTKzormVQupMB92l48cg7NASeyI1xR937NzSc2eWFi22Mysrthsl4B3iDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ds3yFTaDIf5DmcYPp6ULlqxfloWJQDFdXuGay4pYNDk=;
 b=eP4LfYzpwNCLU+Vv/xYf+jMf9kg2r9rNKx9fW1xHw3GUlEkz0QzMHQoGxsYqVW4SNgVYl30jmEXDmy+S5BFRZZApwVp5JTyWjiJZxMqr16p72BHeV+jurhn7ogBvaVcI2H97Z3hx+E05idCf4L0tVCMShDjyMRzTMnYgPlrRP7s=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM8PR10MB4146.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1e9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 08:34:47 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1133:8761:6cc9:9703%5]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:34:47 +0000
Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override thermal
 cfg for industrial temp
To:     Jacky Bai <ping.bai@nxp.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20210601174917.1979-1-tharvey@gateworks.com>
 <b63300e8-3739-fcc6-6d37-952f93cfd17b@kontron.de>
 <CAJ+vNU0mBQJ_ZLsKOiY0k7+drYvmw+bsHfeX4+Mg=s4_fxSUYA@mail.gmail.com>
 <5eba4438-239c-71d1-56ec-4edd70e87ec3@kontron.de>
 <DBBPR04MB79303661E07409B4B65F3EF487389@DBBPR04MB7930.eurprd04.prod.outlook.com>
 <273e2859-7874-e273-9599-139274891023@kontron.de>
 <DBBPR04MB7930943628D1E80C17237D8187389@DBBPR04MB7930.eurprd04.prod.outlook.com>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <717608d8-685a-0435-aaa2-3bd4f82f3b97@kontron.de>
Date:   Mon, 7 Jun 2021 10:34:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <DBBPR04MB7930943628D1E80C17237D8187389@DBBPR04MB7930.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [109.250.131.46]
X-ClientProxiedBy: AM6PR05CA0033.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::46) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.32] (109.250.131.46) by AM6PR05CA0033.eurprd05.prod.outlook.com (2603:10a6:20b:2e::46) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22 via Frontend Transport; Mon, 7 Jun 2021 08:34:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 37145d88-250f-4540-ed75-08d9298f1bf8
X-MS-TrafficTypeDiagnostic: AM8PR10MB4146:
X-Microsoft-Antispam-PRVS: <AM8PR10MB4146FF86760798178E54F7CAE9389@AM8PR10MB4146.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 47Mm36G+8UtQ//yFQPw9s0v2JmS+dgvnCNJEB86h+j/31QFWv6QCZ8jh69rUDH2fYBS459NlTfCEAM3D4g6x683iAQ0J9GGP54W+2IF22UIE+6o2DQhlg0avEGcVMTzjCUq3g5ct0dyohqphEgPXPa5SqwSqSL74aFKZnkakNkse+RzvvdGDM8Yh7UH/wdbFF57Byc2773MSIwidkGxwR7eoij7GhtPiJ6DbDIKO9MYgQgbTKZYwLMsV820xclko80cMv22BqCgGHgiKqdL4bpcndY1+lEJK0t65fUFd8Qshml0cCaUEYHSbWGaPTztEjzPdYB1J61zgRN5jWCHfkFldcbtxbxP5xf4g9nDUjvR/AR4C122ixl5ZGPLgU2tCi8J2wReZjPG50oGeFTAJ1Evlp8HPSdQngEnXjyL3jED9nfxntBBVPrNm3tO3xJ+yDe4PBHmFGmzvkwNHJQatRUoKnxzKQm4VW7QgTncqrmLWTc5Ef+HTznNzcX6hWIhBKyBXoUpMqekAHbE6LSHogd/EJSwKCV2pnARrUf22tTEd3hWB6gPu6/mw+HtQiZ8Rh28v/ZNTRrlZsctIlCfdhtt7eW3xYqtD/gpMyZEETR2F1Nt4LbaMsDL92+WTtD50o5munJBVLShGpiBE8JRQiDhp+ZlTo97/3bMeYmy1dU979u6FqT+CQMEVm9DmYJ/7Lzqnomyni7gtaw676TQ41g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(2616005)(956004)(31696002)(86362001)(44832011)(16526019)(38100700002)(186003)(4326008)(16576012)(6486002)(316002)(8936002)(7416002)(8676002)(26005)(478600001)(31686004)(36756003)(53546011)(5660300002)(2906002)(83380400001)(66556008)(66476007)(66946007)(54906003)(110136005)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Rkoya3ljV3J4b2QvRGRONXRiUHpCTDVDVzlUZk52MnNNSDdMTjVrcXM4eW1C?=
 =?utf-8?B?dzc5RldzTyt4b2FOQll3VHV4MWl6aStGZk9pQ0J4eWdnNXV5MU40RG5Ya0Vp?=
 =?utf-8?B?SjlpdjgrTjBwTnRmSkgydzhuaWdtTExpVTdDblIzblpLVXBrd0xCUjdCUzdo?=
 =?utf-8?B?MklyVUtMQ1JlU002QUFUQ25zR2VPdFg0T3hXMXFnTlF1TEM5Z2dUbzZQRFlO?=
 =?utf-8?B?bzBHUUUvYUd5L0dCaUdHK2s2WHV1RDd1c0RhaTl4Z3RCR0ZMd2VEbkhZakRO?=
 =?utf-8?B?d21nVlJPUkVWTW13QlB0RGFETWtZQXpjNXgrTGdnRm1QblFxZXc1TDc3RnFP?=
 =?utf-8?B?TWRrR0M3STE3NFBLb0tXbG5jM29OMlpFTkhHb0xBdjFnTk1oMFpmN1FNM2ZQ?=
 =?utf-8?B?Wi83eVFuY2RpNSt6djNLVm5DcjFlSGM4MzlFMHU0SXVwdDQzWEdGbCtsM1VU?=
 =?utf-8?B?UG9mc3h0cHFsQWxHcUJtSmVob0RIUmVKNG9CU0wyaVVwQkliamtKdmNrWnps?=
 =?utf-8?B?MGJXUFZlaG1iVlN4dEZZT1prbFN3RSsrWVF2UnR0VTVhcWluSEczNkJlWCtC?=
 =?utf-8?B?QkRaREZaQjVkM1FDWldBRDBzRUNkMzY4aTN6SjdNUU1GUlFxQjlZMHdtaDZa?=
 =?utf-8?B?SDNsWll2UGtWbVppbnNxN2hqOU1PVitIOVJmQSttbWpUUGFGSkExV3RuRTNy?=
 =?utf-8?B?Nzlnc2czL0EwMzRKMDNGeFA1enZyUE9Xbks0QzJZeWpqcGNrWTZUMkczWDFK?=
 =?utf-8?B?cERSRkgrOFRCVWhsZTdIQUxieDF0L1VSeWxpVmpDUWJTTFY1dkxuUExLMUxE?=
 =?utf-8?B?N2JRUXZOVGhmVjZaeHJYZ2ZXcXNzdUNRajNvVXJPRWRsOEoyZ0gxWFIvZ29t?=
 =?utf-8?B?eGdkRE1SUU1MaDFmZ2pOZWoyTnh1dE5mc1U3V1p2dSs0WTlNSkZ2VHFINXZu?=
 =?utf-8?B?NnZrUVFKOUxZZjFwb1RKZnA4OWxtY3RQczNJMEQyVnB0eTdNMEpXODdxT05r?=
 =?utf-8?B?WVpQQWppazZUelZycHJPUUE5YlVUV2NYOTRyVkRTMGpOOHpGVXU4bE1pTmlJ?=
 =?utf-8?B?a0hqanNkaWZyNkRwNzdRNTRJU3VrekFURWlQWWViZE5RbDVkdnk5dnhCc1Vu?=
 =?utf-8?B?bHNnSXUyTzdKYXB6aXA1V2JZakFQWGNyZVE0UXJ3LzlPN0hFcWxudDNzaEJK?=
 =?utf-8?B?a0JQVmJoWUVnek11OHVtc3ZmdWpwNG4yMlh5KzB1ZTNiRndFZkxSZGVMaVVt?=
 =?utf-8?B?bjBGTHYwNGRHdTRabjJRcTIwdFo3ZHBNdU1YMGE4WEF3VFhrTmtQWC96MjV5?=
 =?utf-8?B?VE9OVDlVR2dQYy9HeEFLRm4zMEdkRkc1WitjVXRMZ3VqSk9RQW5wZHZKbStJ?=
 =?utf-8?B?SVZoTTlXZmJjVFZ5aXNLVUl1VzRvb0lVekV2OHNuekZYT3crWXRrMUF5ZFpC?=
 =?utf-8?B?MWRXRkZ3ck5wbzNsMTlVU0NZZHNKYVlIRm1vY0FxRW8wb2JtQXRpM084UUN6?=
 =?utf-8?B?NmFZaGwwbGkwa0tUZFhuSVFWSytqNWRkMGZ4UVhjZGlRQlloWCt3NUFzOHly?=
 =?utf-8?B?OGpuZ0hjZFdvVmVidkFJcjJ2RHRjVUVQNlo1OUZEVFkrOXNsYlJXNnBVdlNC?=
 =?utf-8?B?RlFzSkV2aFNJL3E2RWlDTGVYZEhnaThrVkNsaHl4aXZjUDNLRUt5bFZJTnFQ?=
 =?utf-8?B?eHdUZE5VR3ZRak13YnRqVGc4cytDdEhLUDVyZ0RtYnB5UFpVNk1QckUvdVFN?=
 =?utf-8?Q?TJPJKjvUCTCARaTgPkomzPPYMQH6Nd0IyFKmWRm?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 37145d88-250f-4540-ed75-08d9298f1bf8
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:34:47.7735
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rw9aB/C7kPtQTXkODvahfjtS0lYmLz/gq8QAK21sZ502taCZF+ksZYfjMSdMZ+T+tE4Fl9AftN+XUiOH/HiIy2jcOSKwybNaqIVPntoqErU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR10MB4146
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07.06.21 10:00, Jacky Bai wrote:
>> Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override
>> thermal cfg for industrial temp
>>
>> On 07.06.21 09:30, Jacky Bai wrote:
>>>> Subject: Re: [PATCH 1/4] arm64: dts: imx8mm-venice-gw700x: override
>>>> thermal cfg for industrial temp
>>>>
>>>> On 04.06.21 17:42, Tim Harvey wrote:
>>>>> On Wed, Jun 2, 2021 at 12:11 AM Frieder Schrempf
>>>>> <frieder.schrempf@kontron.de> wrote:
>>>>>>
>>>>>> On 01.06.21 19:49, Tim Harvey wrote:
>>>>>>> Override the default temperature alert/crit for Industrial temp
>>>>>>> IMX8M Mini.
>>>>>>>
>>>>>>> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>>>>>>> ---
>>>>>>>  .../boot/dts/freescale/imx8mm-venice-gw700x.dtsi     | 12
>>>> ++++++++++++
>>>>>>>  1 file changed, 12 insertions(+)
>>>>>>>
>>>>>>> diff --git
>>>>>>> a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>>>> b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>>>> index c769fadbd008..512b76cd7c3b 100644
>>>>>>> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
>>>>>>> @@ -493,3 +493,15 @@
>>>>>>>               >;
>>>>>>>       };
>>>>>>>  };
>>>>>>> +
>>>>>>> +&cpu_alert0 {
>>>>>>> +     temperature = <95000>;
>>>>>>> +     hysteresis = <2000>;
>>>>>>> +     type = "passive";
>>>>>>> +};
>>>>>>> +
>>>>>>> +&cpu_crit0 {
>>>>>>> +     temperature = <105000>;
>>>>>>> +     hysteresis = <2000>;
>>>>>>> +     type = "critical";
>>>>>>> +};
>>>>>>
>>>>>> As this is not really board-specific, I think the proper way to
>>>>>> handle this for
>>>> all boards is to let the thermal driver read the temperature grading
>>>> from the OTP fuses and set the trip-points accordingly, similar to
>>>> what is done on i.MX6 [1].
>>>>>>
>>> ...
>>>>>
>>>>> Frieder,
>>>>>
>>>>> Yes, I thought about adding that kind of support to imx8mm_thermal.c
>>>>> but the difference is that imx8mm has alerts defined by dt and imx6
>>>>> does not so is it right to override dt alerts on imx8m? What if
>>>>> someone designs a board that they specifically want a lower alert
>>>>> than the cpu grade they are using based on something else on the board?
>>>>>
>>>>> My approach to this was to eventually actually adjust the imx8m dt
>>>>> alerts in boot firmware based on some boot firmware setting or
>>>>> specific board support and leave the kernel alone.
>>>>
>>>> Allowing board-specific trip points sounds like a valid request, but
>>>> I still think we need a way to handle the temperature grading in the
>>>> driver if no board-specific trip-points are given.
>>>>
>>>> What if we just set the temperature property in the trip nodes in
>>>> imx8mm.dtsi to zero? The thermal driver would detect this and setup
>>>> the correct values according to the grading. If the dt already
>>>> provides non-zero temperature values (through the board dts) the
>>>> driver will just leave the values and disregard the grading.
>>>>
>>>> I think this solution would be covering all needs.
>>>
>>> I thought to add the grading check in the imx8mm_thermal.c to
>>> dynamically set the trip points temp, but it seems hard to do it due
>>> to the fact of_thermal is used, as no helper API is exported by of_thermal,
>> no better way to override the trip point temp.
>>>
>>> glad to see any good suggestions.
>>
>> Right, the driver doesn't handle the trip-points directly. This is all hidden in the
>> framework. So this might not be so easy to implement.
>>
>> What about this other approach: Adding all the possible trip-points for the
>> different gradings to the SoC-devicetree and then let the thermal driver
>> remove the trip nodes from the dt that are not valid for the detected grading,
>> just before the driver registers the sensor/zone.
> 
> It is more reasonable for the firmware/bootloader to handle this by checking the grading.

If possible, I would rather like to avoid creating another dependency on bootloader/firmware. I think the kernel should be able to detect the grading by itself and adjust its behavior accordingly. We also do this for the speed grading in cpufreq.
