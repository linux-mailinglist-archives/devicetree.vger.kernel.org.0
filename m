Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD763FD957
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244016AbhIAMRL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:17:11 -0400
Received: from mail-am6eur05on2134.outbound.protection.outlook.com ([40.107.22.134]:5601
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S244010AbhIAMRJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Sep 2021 08:17:09 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UFrrokfB5B/7vEy8aPDmVVWGtQPNV/UZoiUXV+EIvRUKhTWbvGOMiTTJevdviJfrWt+bb6Z6b7BmLPreLKGJt7iaIFMbzMDyhlNC2bxBGUyH2Pb9Zn6sGEoC5e8Xpar4AKdFxxIlFMbXf1FY1L3kMBhGcq5fVxMcafbCINt1Gt6SbI1sDgzGTGDR2etTOLSX+oBlxHC0sn//lzoUxS0FTf1zDxdbZjeBdSXhC2xKuv5HTJ8vSNwsL4W/bPMHS/a2mKKX3BJ5H7mGuRvGKo05ANqdOeqYdZsVArxpT5gYwIGzAh7DGdr/rbTvedrsLqw13UppSMlUJLn+i3e0H+H9ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=r4WTKEc9pGwxpCO0tguZHOYf7GyuZ8xqQEP5QLd4/w4=;
 b=PNAvv8NYkfpKmZCmJ0oNsKURJ1tA2D5k0uxE7RBQP2aZI4U7rjpOZc3+P5tutjKAoxaF3qYiF9mp2/8I9Svc6XuVdbaWLqxpRZU+8hbg8IgJks5e6NnwN/CSNR7o8KhkmKXrMOMK0TCdyowW2P58klmaWl04pqKQLq3FC2UdgsRW3Ks4x7nyf0DBmsBlZb7CxMHK9aUe1b+9SkrACtpjkzh3T0FZgR/j4bBBH0ceW5OjW9lSd4KY5XEMH/baeYlEBdCfIWWPW64JZVkH7kY+ZqrEY4lzGHMQT+q51u82Ihf9mvsujUmwkY8Iis3J4dY9Ux1bJ4a/taNGX2xTMSedEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r4WTKEc9pGwxpCO0tguZHOYf7GyuZ8xqQEP5QLd4/w4=;
 b=R2n8hpT8/9RtiV6O8zUGouZFfl26EyAtvo4r5722EkC9Ql60UiGYHBrmYN/rillZw6me4SpkrG+dLJogKQa2Ap2mLt/xTsjmMzvTT8Z6UxKGQH210asvygebk29beYDKYgKEDLen4OqRgfubYkNOrJM3WlfVyfvj1DdoZItaUc8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=kontron.de;
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:157::14)
 by AM0PR10MB2964.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15c::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Wed, 1 Sep
 2021 12:16:10 +0000
Received: from AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a468:e307:d46:63a]) by AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a468:e307:d46:63a%4]) with mapi id 15.20.4457.024; Wed, 1 Sep 2021
 12:16:10 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
 <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
 <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
 <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
 <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
 <0e91cb27-7b89-fded-45b9-7d963adee581@kontron.de>
Message-ID: <d88250c2-819d-1c5e-3b1b-542eb7e803a6@kontron.de>
Date:   Wed, 1 Sep 2021 14:16:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <0e91cb27-7b89-fded-45b9-7d963adee581@kontron.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM8P251CA0026.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:21b::31) To AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:157::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.40] (88.130.76.213) by AM8P251CA0026.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:21b::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19 via Frontend Transport; Wed, 1 Sep 2021 12:16:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30371e2b-cc6d-4046-bd16-08d96d4248b9
X-MS-TrafficTypeDiagnostic: AM0PR10MB2964:
X-Microsoft-Antispam-PRVS: <AM0PR10MB29640942BDE1A06ADC423FB8E9CD9@AM0PR10MB2964.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ijZTroo2Q0lP6v5SGq9ruSaj5EHMccmPqXN/TNrKJ1IYUvxRkEwQXWFdCfgwWmQWPHuq9wgGHul5wDnrybNDxv5ULea90I17VcFeQwxt/jA+6mW+720NJHWqE9iLE1GzqGgZelWySprtdZWA74NUNv3k5WUBwssqg3FF8jWPb6EJjjtcy47t8ashFHbql5KAaa8LdRpwqL2k/R756uJJwmRaN1MkP03lK3wSX6JpZ8TAV0/S2hisCydM1HmbQ/gOYapTap2wfer8OBxdi/brt3hIvA5A4xzeqKXpdpTz26MfqZQTXqdJWHxMLLYz0i7LwegZ57m6+t7dy87bv7WmdXCoJxvy6B7HsVFZZV1iAnpSMOZBdYGnqbCzxPpau5qIdQTzMujA0UCdAiIBXmshhh9SmOvT3/weKSNNtxOr11bMZttvid/uUyuDbMQM7evJcW9a+PSwvdOz0iBcToxAVnSsUZBMpAAZuQMxuvUmPVqrnyx7ag0NJso39hbixytLitPiLa3mQuCA+zBkqiTr7xq8BmJie5fd2tulUKTRqflJWpczxncWcdZtjVSs/iAZkNl8pPkQaVx5fVG31idWTFpPgkU5St3YsLbyxr2/JyPwOXpBSW54lfd5/c9VyTzp4ow5/VEM10bznNlkEnp36X1k/ztorDoSF7r4JxBImkfArAL2uECD+xiGVpFynNIccH8FbJ3QcxBpiWcL97ZrWICDJdsAhyD9uliTIEmGJVGTttWYVAHbklfwcpmpeHEoUM7NZ+KRPhVW9WTS+0wqkw0Fk53M4+68gP9sDhaw/dnsou8hyUxl6a1AlFFgH96D
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39860400002)(376002)(346002)(6486002)(956004)(38100700002)(54906003)(86362001)(44832011)(316002)(7416002)(66476007)(6916009)(2616005)(31686004)(83380400001)(31696002)(53546011)(16576012)(478600001)(36756003)(8676002)(2906002)(5660300002)(45080400002)(966005)(26005)(66946007)(186003)(8936002)(4326008)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzdrZ1RMMFVkUzZVenZCdy96dzkxeTJFSmYyNFlGdGxiK1I3bksxNmtmUTYv?=
 =?utf-8?B?ZWk0MUVtN0JtdmhLNm1UQlczMVNZZXNPMlhuYWxhT29vRGU0L3F6V01wUmw2?=
 =?utf-8?B?cTdQUjVIbzhMUFg2bExiWFVXUk92ajdhazBSVDlmS3Y3SEFBdThQdjBLTVhK?=
 =?utf-8?B?b2JIcmdBYnJsak1ML0VPNnl5czZNMVJYOGREQUlUYWpzenBJa2MvbDRQcnFC?=
 =?utf-8?B?cVFwcldGSVkwOVdiYVZKZVNMZU1MYlU3dGZaWkpzY2hjNmZscW9zbXh0cCtr?=
 =?utf-8?B?UmZ0eXVHTmlxSklEazFvU2tzV0J4cGgydEsrczhYdVByVGZ0MWNIOWgyNnFj?=
 =?utf-8?B?L3NOYk1sNThZNmdDUFhpVk5qQ1JMeUJUaDQ5d09wNXYvQ2gwT2MyQlFiTjFl?=
 =?utf-8?B?OGErMzhETldSUmxvWlE3L3lYSzF1bXZhaVpXTDYvZWowajlKUGRSWlY3dUN5?=
 =?utf-8?B?ZDBrRi9xaDNxWUNoS0V5cHpTVytteE1hbU52SkRNMWxjZ2k4ZGZtWTAraE1K?=
 =?utf-8?B?aEVTK3dQblF6YUlIM0puT1NyRzZRKzZHS291VmhDTktUZ05rcm8xa3o1TWJO?=
 =?utf-8?B?amxuN2VybXNuZkNYekMycklpQlVURlpLK29rWDBSdXlKQU42ak55RjVaUWxY?=
 =?utf-8?B?Y2U0R3JUQmU1VmplNGZ5YWRqTm9TQXRtd3hJbGdqeDhsTTg0b1FIekRVRFhn?=
 =?utf-8?B?bi9IN0tOZW9MZjRzN2VGMXRWVzZUZ0psaHBPU3FhRU5YK0l1QS9vY1NaRjZW?=
 =?utf-8?B?T1hKNnNPU1R3MHhMa2ZudmN0RnZDc254Z1lqZk82YlFMQVRWZm9qaFdmZFUw?=
 =?utf-8?B?SWhPZE90QzVjYlBIU2g1NjJnNUpqNDdyWlpNM1M1bmQwNU56N3JCRGMyMGpu?=
 =?utf-8?B?S2NURmtFT21zOXdyR2JEeEpTT2R0dTNiU1VlZHVhaTVLUlZpbjJkR0QvbHp4?=
 =?utf-8?B?eVRHdEJ4WXF3dzltZDUzVGdHSjkyQ1ExTkt6NkV4cGZqb0ZzZWxWdGhrYi82?=
 =?utf-8?B?Q0V0eFFtNjd1N1JwYU9pazAwaHZ1Z0t4MWdJcUVzSGdvdHl1TmJUVVQ5Ry9M?=
 =?utf-8?B?dkl1RDhaK0hhZC9KQkFDWFNZcnFKMzc2NGNsWHRnY3M1QWpFcU5DSnZIRllD?=
 =?utf-8?B?eksvd0t3ZzNOZy90b050QXpNVTRqdFhKamllZTFaV21UVVZ3ZFhRUTdLdFNE?=
 =?utf-8?B?ZzdnY3M2MVYreG9NV1JnRVFtQWRXRUJRdVhvZndUWlZNenpycTJQOEYxcW9B?=
 =?utf-8?B?Zjc3Vk5kY3dWQ0U3SlZ0N0VucW9RYm9MYnNwYmtoeDJsYWNGaXhxVWhueEZO?=
 =?utf-8?B?MEFMRXFSSUtQeVl6emJiY214RWZsbzZnR0x2UUtqMFFzU0tMUFpHb2NpdTRj?=
 =?utf-8?B?VFpkMVN3Rm5oOEhBc3pVaWtDWWx5bzFiWldBWHpmbTN0WlFncWFCTzJhZUY0?=
 =?utf-8?B?c3BNMzJOaEc1WnVnNm0zSHNjOXBoL2h2cU9CdnFiNzQ2eDArM3RuWUNscGNL?=
 =?utf-8?B?dXlDWVJQZDk1Y29pVkl2WjM2aWhrL1NhR0tsM2Vwamd5YnA3enZ0Z2tPNllX?=
 =?utf-8?B?dGJyamlJYWY4cllwL0o0WVJ4K29FM3dmeWhncDE2RU0zWFRKMWRrdjJ3V2o2?=
 =?utf-8?B?eHEyWGVEelA3Z0ZiS3JDbDlucWo4VHFYQXFOL1BKeUlUZ0k1M0N3cDFqOWpu?=
 =?utf-8?B?OUFEVXYyTDFudDczQmhNK2ticnJrQnMvUmYvVCtnSWwzWER5MW9ZeFk5SGM5?=
 =?utf-8?Q?etsdP5VGE5R5W44G55uyuiVZZahXEisn2bomWiq?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 30371e2b-cc6d-4046-bd16-08d96d4248b9
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2963.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2021 12:16:10.6346
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /oXFj82uQ8L0vSlRAyLD6BecRxFBsoju6eA1YQNGzNpjQivrRaFpxXB7+r6yggUneEwqZL1Oprbr2nWTXx0PxQ1cT2jzcp6nRF0nRExqvDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2964
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01.09.21 12:03, Frieder Schrempf wrote:
> Hi Lucas,
> 
> On 09.08.21 13:50, Frieder Schrempf wrote:
>> On 09.08.21 13:01, Lucas Stach wrote:
>>> Hi Frieder,
>>>
>>> Am Donnerstag, dem 05.08.2021 um 20:56 +0200 schrieb Frieder Schrempf:
>>>> On 05.08.21 12:18, Frieder Schrempf wrote:
>>>>> On 21.07.21 22:46, Lucas Stach wrote:
>>>>>> Hi all,
>>>>>>
>>>>>> second revision of the GPC improvements and BLK_CTRL driver to make use
>>>>>> of all the power-domains on the i.MX8MM. I'm not going to repeat the full
>>>>>> blurb from the v1 cover letter here, but if you are not familiar with
>>>>>> i.MX8MM power domains, it may be worth a read.
>>>>>>
>>>>>> This 2nd revision fixes the DT bindings to be valid yaml, some small
>>>>>> failure path issues and most importantly the interaction with system
>>>>>> suspend/resume. With the previous version some of the power domains
>>>>>> would not come up correctly after a suspend/resume cycle.
>>>>>>
>>>>>> Updated testing git trees here, disclaimer still applies:
>>>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7Cbf3a4cacd1e047be747b08d96d39e713%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637660917728575954%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=0A7jRJH16d3T1S868RHg57csVuDUtgB3lNl2A3QZdus%3D&amp;reserved=0
>>>>>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains-testing&amp;data=04%7C01%7Cfrieder.schrempf%40kontron.de%7Cbf3a4cacd1e047be747b08d96d39e713%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637660917728575954%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=gC5jcC0w3VP4HiJYQMBWD%2FHQzU2rr7KjtGG82Snh4X0%3D&amp;reserved=0
>>>>>
>>>>> I finally did some tests on my side using USB, GPU and DSI (no PCIe, VPU, CSI so far) and the results are promising. Thanks for the effort!
>>>>>
>>>>> I will try to run some more automated suspend/resume and reboot test cycles over the weekend and report the results here afterwards.
>>>>>
>>>>
>>>> Unfortunately I got some results sooner than I had hoped. I set up a simple loop to suspend/resume every few seconds and on the first run it took around 2-3 hours for the device to lock up on resume. On the second run it took less than half an hour. I had glmark2-es2-drm running in the background, but it looks like it crashed at some point before the lockup occurred.
>>>>
>>>> Of course this could also be unrelated and caused by some peripheral driver or something but the first suspicion is definitely the power domains.
>>>>
>>>> If you have any suggestions for which debug options to enable or where to add some printks, please let me know. If I do another run I would like to make sure that the resulting logs are helpful for debugging.
>>>>
>>>> And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:
>>>>
>>>> #!/bin/sh
>>>>
>>>> glmark2-es2-drm &
>>>>
>>>> while true;
>>>> do
>>>>     echo +10 > /sys/class/rtc/rtc0/wakealarm
>>>>     echo mem > /sys/power/state
>>>>     sleep 5
>>>> done;
>>>
>>> Hm, that's unfortunate.
>>>
>>> I'm back from a two week vacation, but it looks like I won't have much
>>> time available to look into this issue soon. It would be very helpful
>>> if you could try to pinpoint the hang a bit more.  If you can reproduce
>>> the hang with no_console_suspend you might be able to extract a bit
>>> more info in which stage the hang happens (suspend, resume, TF-A, etc.)
>>> If the hang is in the kernel you might be able to add some prints to
>>> the suspend/resume paths to be able to track down the exact point of
>>> the hang.
>>>
>>> I'm happy to look into the issue once it's better known where to look,
>>> but I fear that I won't have time to do the above investigation myself
>>> short term. Frieder, is this something you could help with over the
>>> next few days?
>>
>> I will see if I can find some time to track down the issue at least a little bit more. But I imagine it could get quite tedious if it takes up to several hours to reproduce the issue and I don't have much time to spare.
>>
>> @Peng, @Adam and everyone else: Any chance you could setup a similar test and try to reproduce this?
>>
>> On the other hand reboot cycle testing didn't show any lockup problems over more than 24 hours, so it seems like the issue is limited to resume.
> 
> I ran a few more suspend/resume cycles and watched the log. The first
> 2.5 hours nothing noteworthy happened, except that glmark2 crashed again
> at some point.

Facepalm! Of course glmark2 didn't crash, it just doesn't loop endlessly
as I expected it to do, which totally makes sense for a benchmark. Using
--run-forever should do the trick.
