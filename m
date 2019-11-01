Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2519EEC5D7
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2019 16:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727926AbfKAPrU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Nov 2019 11:47:20 -0400
Received: from foss.arm.com ([217.140.110.172]:37710 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726720AbfKAPrU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Nov 2019 11:47:20 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9391C31F;
        Fri,  1 Nov 2019 08:47:19 -0700 (PDT)
Received: from [172.20.38.5] (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FD033F719;
        Fri,  1 Nov 2019 08:47:17 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Maxime Ripard <mripard@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Harald Geyer <harald@ccbib.org>,
        Robin Murphy <robin.murphy@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
 <20190925110844.qfm5ris7xeze44th@gilmour>
 <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
 <CA+E=qVeopby6zn1PBsOGb0JjA6-viTN_iXxRnWF6+NGtbZ_BtQ@mail.gmail.com>
 <CAJiuCcdZfbO+s2L-PcKA4PEm8B8=niYMO1w1nLVQ9hzq6Fjv=A@mail.gmail.com>
Message-ID: <2e3e8dae-6678-6ca3-ca05-5acb691d5c0e@foss.arm.com>
Date:   Fri, 1 Nov 2019 15:47:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdZfbO+s2L-PcKA4PEm8B8=niYMO1w1nLVQ9hzq6Fjv=A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/1/19 11:30 AM, Clément Péron wrote:

Hi,

> On Thu, 31 Oct 2019 at 21:35, Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>>
>> On Thu, Oct 31, 2019 at 12:10 PM Clément Péron <peron.clem@gmail.com> wrote:
>>>
>>> Hi,
>>>
>>> Just a remark here but the interrupt are from 152 to 155 SPI.
>>> But there is an offset of 32 no (remove SGI/PPI)?
>>> This should be from 120 to 123
>>
>> I already tried it (and I believe someone already suggested it above),
>> it doesn't fix PMU interrupts though.
> 
> Ok thanks for the confirmation.
> 
> Made a research about the PMU for A64 and found that Andre Przywara
> made a patch to enable it:
> https://gist.github.com/apritzel/d025abaa1425fcaf5991b5ffcf18a0a3
> 
> Maybe he can confirm or not the issue on A64 ?

Well, I tried it back then, but couldn't make the interrupts work (and 
yes, I tried +/- 32). That's the reason I didn't send it back then.

I can't say whether the IRQ lines are not wired or the manual just gives 
the wrong numbers. I don't have access to a board before Sunday, but if 
someone wants to beat me to it:
- Hack U-Boot to add a command to program one PMU counter to expire 
quickly, and enable overflow interrupts.
- Enable *all* SPIs on the GIC distributor level, and enable the 
distributor. Keep the GIC CPU interface disabled.
- Trigger the U-Boot command, and inspect the GICD_ISPENDR registers to 
see if any SPI fired.
- Also double check the PMU overflow status register to verify that the 
event triggered.

Cheers,
Andre.

> 
> Regards,
> Clément
> 
>>
>>> Regards,
>>> Clément
>>>
>>> On Wed, 25 Sep 2019 at 13:09, Maxime Ripard <mripard@kernel.org> wrote:
>>>>
>>>> On Mon, Sep 23, 2019 at 04:55:59PM -0700, Vasily Khoruzhick wrote:
>>>>> On Mon, Sep 23, 2019 at 4:51 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>>>>>>
>>>>>> On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
>>>>>> <maxime.ripard@bootlin.com> wrote:
>>>>>>>
>>>>>>> On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
>>>>>>>> On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>>>>>>>>>
>>>>>>>>> On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
>>>>>>>>>> On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>> On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
>>>>>>>>>>>> On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
>>>>>>>>>>>>>> On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
>>>>>>>>>>>>>>>> On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> Vasily Khoruzhick writes:
>>>>>>>>>>>>>>>>>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
>>>>>>>>>>>>>>>>>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
>>>>>>>>>>>>>>>>>>>> as result 'perf top' shows no events.
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
>>>>>>>>>>>>>>>>>>> It could well just be that the interrupt numbers are wrong...
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> Looks like it does, at least result looks plausible:
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> I'm using perf stat regularly (cache benchmarks) and it works fine.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> Unfortunately I wasn't aware that perf stat is a poor test for
>>>>>>>>>>>>>>>>> the interrupts part of the node, when I added it. So I'm not too
>>>>>>>>>>>>>>>>> surprised I got it wrong.
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> However, it would be unfortunate if the node got removed completely,
>>>>>>>>>>>>>>>>> because perf stat would not work anymore. Maybe we can only remove
>>>>>>>>>>>>>>>>> the interrupts or just fix them even if the HW doesn't work?
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> I'm not familiar with PMU driver. Is it possible to get it working
>>>>>>>>>>>>>>>> without interrupts?
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Yup - you get a grumpy message from the driver, it will refuse sampling
>>>>>>>>>>>>>>> events (the ones which weren't working anyway), and if you measure
>>>>>>>>>>>>>>> anything for long enough that a counter overflows you'll get wonky
>>>>>>>>>>>>>>> results. But for counting hardware events over relatively short periods
>>>>>>>>>>>>>>> it'll still do the job.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> I tried to drop interrupts completely from the node but 'perf top' is
>>>>>>>>>>>>>> still broken. Though now in different way: it complains "cycles: PMU
>>>>>>>>>>>>>> Hardware doesn't support sampling/overflow-interrupts. Try 'perf
>>>>>>>>>>>>>> stat'"
>>>>>>>>>>>>>
>>>>>>>>>>>>> I have no idea if that's the culprit, but what is the state of the
>>>>>>>>>>>>> 0x09010000 register?
>>>>>>>>>>>>
>>>>>>>>>>>> What register is that and how do I check it?
>>>>>>>>>>>
>>>>>>>>>>> It's in the CPUX Configuration block, and the bits are labelled as CPU
>>>>>>>>>>> Debug Reset.
>>>>>>>>>>>
>>>>>>>>>>> And if you have busybox, you can use devmem.
>>>>>>>>>>
>>>>>>>>>> CPUX configuration block is at 0x01700000 according to A64 user
>>>>>>>>>> manual, and particular register you're interested in is at 0x01700080,
>>>>>>>>>> its value is 0x1110110F.
>>>>>>>>>>
>>>>>>>>>> Bits 16-19 are not defined in user manual and are not set.
>>>>>>>>>
>>>>>>>>> Sorry, I somehow thought this was for the H6...
>>>>>>>>>
>>>>>>>>> I don't have any idea then :/
>>>>>>>>
>>>>>>>> OK, so what should we do? 'perf top'/'perf record' work fine if PMU
>>>>>>>> node is dropped, but they don't work if PMU node is present (even with
>>>>>>>> interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
>>>>>>>> working instead of 'perf stat'
>>>>>>>
>>>>>>> Well, it doesn't work so we should just remove the node, and if
>>>>>>> someone wants it back, they should figure it out.
>>>>>>
>>>>>> Hey Maxime,
>>>>>>
>>>>>> So can you merge this patch?
>>>>>
>>>>> Added new Maxime's email to CC
>>>>
>>>> Queued as a fix for 5.4, thanks!
>>>> Maxime
>>>> _______________________________________________
>>>> linux-arm-kernel mailing list
>>>> linux-arm-kernel@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

