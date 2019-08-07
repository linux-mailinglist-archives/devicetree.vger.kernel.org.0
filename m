Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BC6F084B1D
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 13:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727096AbfHGL7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 07:59:25 -0400
Received: from foss.arm.com ([217.140.110.172]:47198 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726873AbfHGL7Z (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Aug 2019 07:59:25 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55D0728;
        Wed,  7 Aug 2019 04:59:24 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A92F3F575;
        Wed,  7 Aug 2019 04:59:23 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Harald Geyer <harald@ccbib.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <b8f47c20-4b19-6fa4-54cf-99c4d2358da3@arm.com>
Date:   Wed, 7 Aug 2019 12:59:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2019 03:39, Vasily Khoruzhick wrote:
> On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
>>> On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
>>>>
>>>> Vasily Khoruzhick writes:
>>>>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>>>
>>>>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
>>>>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
>>>>>>> as result 'perf top' shows no events.
>>>>>>
>>>>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
>>>>>> It could well just be that the interrupt numbers are wrong...
>>>>>
>>>>> Looks like it does, at least result looks plausible:
>>>>
>>>> I'm using perf stat regularly (cache benchmarks) and it works fine.
>>>>
>>>> Unfortunately I wasn't aware that perf stat is a poor test for
>>>> the interrupts part of the node, when I added it. So I'm not too
>>>> surprised I got it wrong.
>>>>
>>>> However, it would be unfortunate if the node got removed completely,
>>>> because perf stat would not work anymore. Maybe we can only remove
>>>> the interrupts or just fix them even if the HW doesn't work?
>>>
>>> I'm not familiar with PMU driver. Is it possible to get it working
>>> without interrupts?
>>
>> Yup - you get a grumpy message from the driver, it will refuse sampling
>> events (the ones which weren't working anyway), and if you measure
>> anything for long enough that a counter overflows you'll get wonky
>> results. But for counting hardware events over relatively short periods
>> it'll still do the job.
> 
> I tried to drop interrupts completely from the node but 'perf top' is
> still broken. Though now in different way: it complains "cycles: PMU
> Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> stat'"
> 
> Is there any way to make it working?

As the message implies, 'perf top' can't work because it uses sampling 
events, which are based on periodic interrupts. If the IRQs aren't 
there, then too bad, as there's no alternative.

One other possibility is that the IRQs really are wired up, but the 
firmware is somehow leaving them configured as Secure group 0, such that 
Linux has no visibility of them.

Robin.
