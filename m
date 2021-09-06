Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D043401747
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 09:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239629AbhIFHuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 03:50:32 -0400
Received: from mail-am6eur05on2115.outbound.protection.outlook.com ([40.107.22.115]:49121
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239548AbhIFHub (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 6 Sep 2021 03:50:31 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYrhFdsODyEJ+z7NGzhVmkV1+Rw0FeyWz+RK+xI9gMdA4caVAiC1BWre3olWoUniRi9aTIvnDlu4HXhobU8nViU/22Ndfh3iG11UOqphxbn3BaY8mn7tqd1JJxmtun3YnIpNx4Y09E9//JeYCE3ANFt3OmjXAd3dmX+u+x2g2BxeTk8J7pVsGieob6NkOvhAzmTDB+xYEVz/VlPsesQLY2qHG+lqoEOZZUPzLcuec0KhqtlQS1tkIw3jI/So3Tcn8S9fc5/WXBB+dn8gGoroaudDBC4WDOGaOtyhhfejkryAgLg94Xa9Ge8d4idc9nCmbhJMJAwYlKK4UflrfTMtZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EpRzIUo067ggKhSKaAyYDTl53gOBGj1rDeNID17qbGo=;
 b=Gvgtu6Ki3FsQam01TVVQrsI4SICoCJxtzG53W5+v/5RmnWiAe84OoKVVq6LqTVRci1EOGlpaSiVZvaDt73r6zd1+Bz8yc4U6INmNkq6wUgUIXhkfrHHKLEfjidqowxdgPrYnA9vFQKHYWRpyJsFg3kXLLwRVxK1oMc0inpA95/uIPYVvGz2S0z4zlMXexZW9M4DFbgdGoKRn+kpABeuzd7ezIRcP4xukwwbNzycKhGxtP5YtkFg8ecXT//cBWSk3UJ9js2OhdRUwWcTem2SE4B3RCuUkuxuv3mWMZ1enNvcDVuDIlpWcwm/gP98mXYliNjZUPlbfQ/+Cy3aVUmkNSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EpRzIUo067ggKhSKaAyYDTl53gOBGj1rDeNID17qbGo=;
 b=PlAVmE1F3ZD+DfQ2Ly3s7RqbOQrx0KcebxBgG3EmPml/P7uxKVwO/WldZMDbZL00vTLm/caCt8KM1p7ca1CfT/WS4ArwfzdlVFAlh/w8A1cDk8SV/jRlvHd3sO9rbmmm4bQ/k6OUp21Gbn95Qlo8N3dbN7w5vj34kx7GIwIDQ1M=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=kontron.de;
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:d6::31)
 by AM6PR10MB3077.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:e3::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Mon, 6 Sep
 2021 07:49:24 +0000
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1]) by AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1%5]) with mapi id 15.20.4478.019; Mon, 6 Sep 2021
 07:49:24 +0000
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
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
 <2bc3ef1160e00e01b57abea7c2e1f9dadcea5cee.camel@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <6e74d3f0-ec8a-b095-e4f4-2e3310f8b334@kontron.de>
Date:   Mon, 6 Sep 2021 09:49:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <2bc3ef1160e00e01b57abea7c2e1f9dadcea5cee.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR08CA0021.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::34) To AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:d6::31)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.30.113] (80.147.118.32) by AM0PR08CA0021.eurprd08.prod.outlook.com (2603:10a6:208:d2::34) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.20 via Frontend Transport; Mon, 6 Sep 2021 07:49:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b502db93-46ff-4859-e016-08d9710ad852
X-MS-TrafficTypeDiagnostic: AM6PR10MB3077:
X-Microsoft-Antispam-PRVS: <AM6PR10MB3077B58F3E033BD987F1D7C2E9D29@AM6PR10MB3077.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZGW6+jsQ7NFRA4SRoXgelBMzUrGgJJ57AA+Tvfr0K7osd/yUDaWwidRWBkllwstyM7YHeAZkKryclsdXxR8n08iJoao1NyYjit3rRP+j+o0d+kfQBYbJQVJWSQAYYyL13pYVySvRGb4MJcdRSJZ0N2tzEBDrqPrYQxwx+8N1/i1usquCaqmgkGfTpv07eoSRdcVSgKm2QSf2hLyd4R9kISyPsufO/vaFExdnULMAADSzBA+vm4mBqlv7EyLGysmc3T+UdpM7Ce+uvOdpEwFbNLFxfka/bv//I+Z3pVVts5hna3V8NvI9kJ4WG3fjKg6BtRTIy8EYIeGX4xWqlLFwpZk8ZZPb+tFR5RlhshquciRO4US2ZLCT6mhK/Ny3d/FW5v6tjruWsrZxnerXlfnB6Q6ZU/ydRzypG2QLcoi+oJo0r3+QQYdlZdGomMnYl4LM/iNDZYG3YvR907EHu/W8XfsHcwbv69e8C4U7QBXH2PH+ahVNkZqUI/VLFaKM6Nxf63ZYDvtVVZusjRXnmRW5HFCqvAsT3oRbnQY/1Ew8WMjIn4iL57+8/iV72Moaxe3oluUqk3IqTqNlr1i+tLW3wiN4xNB7yu+FNb4OmbfcO2kaMh5A5GLDN+YNnOiXJPYZV7s0aoozClacwsPqqaLxahqJKWYcC6nXTJld85wPv8pcDI/E2LRBt57wh1iq98NPyaUBaAuptqAzd7w3peTUYjjgL2/hmjw+0e30IhjRT6A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(53546011)(8936002)(6486002)(38100700002)(66476007)(36756003)(54906003)(8676002)(478600001)(83380400001)(186003)(26005)(31696002)(2616005)(7416002)(2906002)(86362001)(5660300002)(16576012)(6916009)(44832011)(31686004)(4326008)(66556008)(316002)(956004)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2dNVnJOVy8yTDRUdlI4eTFiTFdjcHRleEdlaFlTRm1SM2dTRkhDT0VzaVQ3?=
 =?utf-8?B?YTNRb3drOEFUWGx2ckVYMUhqNTlyUXpRNGFoakkwMFpmSUIybWQvM1VCc1dX?=
 =?utf-8?B?UTlHVkV4MEVrNzk5d2VrdFpKY2NOSWxLNFFTUmcza29ISVV6eGhYK2trTGM4?=
 =?utf-8?B?MnBGNThrSWQ3OU5vVUYyTzVabVo0YkN5SzNOeWhKNWVlWHMycG1XN2FzOXZk?=
 =?utf-8?B?amZFbkxmZXBIS243QzNta3d0bUFLRzd6WTJQNUM2SFNJOC9tbHBhZUlrS0NN?=
 =?utf-8?B?NkUzMHB2TEJpZUhzeUd2U0ZOa1JaK21wakNaeWh2N3ZpU1hlbURrN0JFNkp2?=
 =?utf-8?B?VlgvS3ZDRG1COC8zdW9DL2lvT1RncjRoUzN6QTk4b2xHQWM0V1NPZEFobzRv?=
 =?utf-8?B?RW9zK2kvOXljMnQxdXFkcnpCMlJ2azFBSlpyZStNNXpQemQzTW1RVGdIZWtp?=
 =?utf-8?B?SldmclJUM081N3d2V25tbGF2Z0JMeWlxOU1GSDY2a3BWWmtLMENBUlFLQW9u?=
 =?utf-8?B?WFQ3bE9PTEI0eWlZYzYwalpINm1neVFJdzNjaTJuK05mN3h4TWlORVJ0dFpD?=
 =?utf-8?B?N3pMMURMZEZFa0tLM1BDZHF5UWd5MHcyN09kWkFXRDB6MXdENHpiV0J6UVhY?=
 =?utf-8?B?TCs5MmZzWnE1cCtYRTdrMis5WXZPVjB0NmRKQ2wxUUdaRmdhWXNmK1ZDVE1J?=
 =?utf-8?B?ejIzWThvNStWTElJeTZRWmhTelBZb0JzYm14UTExSU51MXVYL1BpVUVuOFp0?=
 =?utf-8?B?azdEZDQwdEZjMWJpNEF2NEtmV015NTdoVkJkOTFJS1pvVDJsaWkyVFp4ZVor?=
 =?utf-8?B?Nm9HL3J4YjRBM1FIWVhyblQ3UzVVUXNlNjFaUXQzYWFjc1Izdk1yb05zUFoy?=
 =?utf-8?B?VjEreDdaR1lkeTgxQ2ZFeXA2SUJiemc3RUlxY3RWUmVYM2xiYzlKNDlNWG5X?=
 =?utf-8?B?REFzMGFGdTRBcFRheWVUcm1mYkI1QzlIMHZjOHhOcDZ4L2IwYkRpNi9IUWxJ?=
 =?utf-8?B?Y0ROWkhqdERWVlFkcGJEdTY1UWdxcjlEUEFZSFozN1N6NWVWbzl1T2hxZGhN?=
 =?utf-8?B?LzkyZ1lwbDR4dWdiK2tyais0R0xrQ2JTYUZuZ0Z0NU01ZHNxQXl1eFZqaXhN?=
 =?utf-8?B?VS8rKzJSU1ZBR0pPdE1GTSs4UFpoQlU1UHdXL08xK3NnRm83bDlyaGpBeFFj?=
 =?utf-8?B?WWpxN2szei9xVDAra3RhY05JdGsyV1RuNCtFQlZnUlpwbytLM1ZCZWtsQnpZ?=
 =?utf-8?B?Y25WUGdXZlhMS2lMQi9nRi9mZDlNSW9tYk5JRXMwbXRkeXlFYnlzVHRnNGtB?=
 =?utf-8?B?dE9LUk9VM3I2WFZldUlpR2owWjU5VEo2VVZ2Ny9sOFNoOFBkWHRxSHJvYTFI?=
 =?utf-8?B?dkdwQUNZL0JFMlVtSmVNM0I1b1dJRkwwY050dXdaM0Zwa3p4VzFIZ1ZuQ3M1?=
 =?utf-8?B?SUVza09HTEZBbUpOK3Z3N1Z0a3ZxTHVNalVFQTBaMjlSNlBCVFU2L3hGanA4?=
 =?utf-8?B?UmN3L0liTHNMN1RkM1FmU1FIcjlSeTRGTEZDWWNjVlRZQlVrWFh3KzBjZEdw?=
 =?utf-8?B?VHMydHZidzRQc1Q3c2pVVUd5Q1UvVTJkT0ZvT0k4Zm5ub2t2RzlIYzZFUFl0?=
 =?utf-8?B?eFRpaHdzZStxcG83MFVQZS82T2p3Q3pMRGEvWFpMN3Y2eXczb2VuMUVZbTJn?=
 =?utf-8?B?NUpaZjNHWnJ4WEcrdzVSNEZ4a0dUSEtPOFJWWGo4SFBoL2NOV1NFQ2dKTXZp?=
 =?utf-8?Q?xEyZvRdRXYHcKBon0d8KXhtoEm1SJc2COnhu+oU?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b502db93-46ff-4859-e016-08d9710ad852
X-MS-Exchange-CrossTenant-AuthSource: AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2021 07:49:24.3786
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bn0BHyuGf1f8oods4SWHHfxDF51yjs2yKatP0wr0ZLk4J9t3DVApqwi9KehIha3b4+VeMkarSmh6OdQP4sa1hESvPfrQq6e8LhZpPZhyU3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR10MB3077
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02.09.21 12:25, Lucas Stach wrote:
> Hi Frieder,
> 
> Am Mittwoch, dem 01.09.2021 um 12:03 +0200 schrieb Frieder Schrempf:
> [...]
>>>>
>>>>>
>>>>> And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:
>>>>>
>>>>> #!/bin/sh
>>>>>
>>>>> glmark2-es2-drm &
>>>>>
>>>>> while true;
>>>>> do
>>>>>     echo +10 > /sys/class/rtc/rtc0/wakealarm
>>>>>     echo mem > /sys/power/state
>>>>>     sleep 5
>>>>> done;
>>>>
>>>> Hm, that's unfortunate.
>>>>
>>>> I'm back from a two week vacation, but it looks like I won't have much
>>>> time available to look into this issue soon. It would be very helpful
>>>> if you could try to pinpoint the hang a bit more.  If you can reproduce
>>>> the hang with no_console_suspend you might be able to extract a bit
>>>> more info in which stage the hang happens (suspend, resume, TF-A, etc.)
>>>> If the hang is in the kernel you might be able to add some prints to
>>>> the suspend/resume paths to be able to track down the exact point of
>>>> the hang.
>>>>
>>>> I'm happy to look into the issue once it's better known where to look,
>>>> but I fear that I won't have time to do the above investigation myself
>>>> short term. Frieder, is this something you could help with over the
>>>> next few days?
>>>
>>> I will see if I can find some time to track down the issue at least a little bit more. But I imagine it could get quite tedious if it takes up to several hours to reproduce the issue and I don't have much time to spare.
>>>
>>> @Peng, @Adam and everyone else: Any chance you could setup a similar test and try to reproduce this?
>>>
>>> On the other hand reboot cycle testing didn't show any lockup problems over more than 24 hours, so it seems like the issue is limited to resume.
>>
>> I ran a few more suspend/resume cycles and watched the log. The first
>> 2.5 hours nothing noteworthy happened, except that glmark2 crashed again
>> at some point.
>>
>> Then suddenly the following lines were printed while suspending:
>>
>>   imx-pgc imx-pgc-domain.6: failed to command PGC
>>   PM: dpm_run_callback(): platform_pm_suspend+0x0/0x78 returns -110
>>   imx8m-blk-ctrl 38330000.blk-ctrl: PM: failed to suspend: error -110
>>   PM: Some devices failed to suspend, or early wake event detected
>>
>> After that, the suspending continues to fail with the following on each try:
>>
>>   PM: dpm_run_callback(): platform_pm_suspend+0x0/0x78 returns -22
>>   imx8m-blk-ctrl 38330000.blk-ctrl: PM: failed to suspend: error -22
>>   PM: Some devices failed to suspend, or early wake event detected
>>
>> So far I didn't run into a lockup again with this test, but I will
>> continue trying to reproduce it and retrieve more information.
> 
> If you run into this "failed to command PGC" state again, I would be
> very interested in the GPC state there. You should be able to dump the
> full register state from the GPC regmap in debugfs.

I tried to reproduce this with the same setup for several days now, but
I didn't run into this error again so far. It seems to be something that
occurs only very rarely.

I also got only a single lockup with this board and something like ~40 h
testing in total. On the other hand I have a different board (same
design) that shows the lockups much more often.

I hope I can provide more data soon, but I can't promise anything.
