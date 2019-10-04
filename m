Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABD5ECB419
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 07:11:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730451AbfJDFLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 01:11:08 -0400
Received: from mx2.suse.de ([195.135.220.15]:34908 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1730018AbfJDFLI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Oct 2019 01:11:08 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 8AAA6B0DA;
        Fri,  4 Oct 2019 05:11:05 +0000 (UTC)
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
To:     Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>,
        Guillaume Gardet <Guillaume.Gardet@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <3853cd8425743b4991f5d599ec1c0fbbf4232f95.camel@suse.de>
 <d4774e5a-abc2-4c43-c97d-76600f74132d@gmx.net>
 <420c18a3-d458-8115-ef00-f1cb4febe3b0@suse.com>
 <a49902c4-e66f-34d4-efad-a6b0b11fab58@gmx.net>
From:   Matthias Brugger <mbrugger@suse.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mbrugger@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8762a85d-0b50-8ea2-46f8-62c30d80bd99@suse.com>
Date:   Fri, 4 Oct 2019 07:11:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a49902c4-e66f-34d4-efad-a6b0b11fab58@gmx.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

On 04/10/2019 03:03, Stefan Wahren wrote:
> Hi,
> 
> Am 04.10.19 um 00:42 schrieb Matthias Brugger:
>>
>> On 03/10/2019 19:24, Stefan Wahren wrote:
>>> Hi Nicolas,
>>>
>>> Am 03.10.19 um 19:09 schrieb Nicolas Saenz Julienne:
>>>> On Sat, 2019-09-28 at 14:07 +0200, Stefan Wahren wrote:
>>>>> This series adds minimal support for the new Raspberry Pi 4, so we are able
>>>>> to login via debug UART.
>>>>>
>>>>> Patch 1-2:   Fix some DT schema warnings
>>>>> Patch 3-4:   Prepare DTS for the new SoC BMC2711
>>>>> Patch 5-7:   Add Raspberry Pi 4 DTS support
>>>>> Patch 8:     Update MAINTAINERS
>>>>>
>>>>> Unfortunately the Raspberry Pi Foundation didn't released a
>>>>> peripheral documentation for the new SoC yet. So we only have a preliminary
>>>>> datasheet [1] and reduced schematics [2].
>>>>>
>>>>> Known issues:
>>>>> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
>>>>> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
>>>>> i reverted the following patch to test this series:
>>>>>
>>>>> 79a98672 "dma-mapping: remove dma_max_pfn"
>>>>> 7559d612 "mmc: core: let the dma map ops handle bouncing"
>>>> [ adding Matthias and Guillaume who first saw this ]
>>>> [ also adding Adrian Hunter just in case ]
>>>>
>>>> Hi,
>>>> we stubled upon a bug in RPi's sdhci-iproc while testing this series.
>>>>
>>>> It only shows-up on slow SD cards, the class 4 ones. On each SD operation we
>>>> get the following warning:
>>>>
>>>> [    2.093328] mmc1: Got data interrupt 0x00000002 even though no data operation was in progress.
>>>> [    2.102072] mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
>>>> [    2.108603] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>>>> [    2.115134] mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>>>> [    2.121664] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
>>>> [    2.128195] mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
>>>> [    2.134725] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
>>>> [    2.141255] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
>>>> [    2.147785] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
>>>> [    2.154314] mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
>>>> [    2.160843] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>>>> [    2.167373] mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
>>>> [    2.173902] mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
>>>> [    2.180432] mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
>>>> [    2.186961] mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
>>>> [    2.193490] mmc1: sdhci: Host ctl2: 0x00000001
>>>> [    2.197992] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xec040208
>>>> [    2.204521] mmc1: sdhci: ============================================
>>>>
>>>> Aside from the serial console noise the RPi still boots alright. But as it's
>>>> printing one of these per SD operation which is a lot...
>>>>
>>>> I've been able to reproduce this both with arm and arn64 on multiple SD cards.
>>>> Just copying the contents of a class 4 card into a class 10 one fixes the
>>>> issue.
>>>>
>>>> Any ideas?
>>> i saw this once during testing. AFAIR there has been some changes to
>>> sdhci in the downstream tree, maybe they was related to this issue.
>> I did a diff against drivers/mmc/host/sdhci-iproc.c of v5.4-rc1 and haven't
>> found any significant changes:
>> - compatible in the upstream driver is only bcm2711-emmc2 and not bcm2838-sdhci,
>> but DTS uses the former one.
>> - Upstream driver support probing via ACPI.
>> - pltfm_host->clk gets only set if we probe via DTS
>> - get_max_clock() is set to sdhci_iproc_get_max_clock() but this checks if
>> pltfm_host->clk is set and in that case invokes sdhci_pltfm_clk_get_max_clock()
>> (same function as the downstream driver).
>>
>> So AFAIKS nothing relevant here.
> 
> as i wrote about sdhci, i literally meant this driver [1]. But this
> looks like a workaround only.
> 
> [1] -
> https://github.com/raspberrypi/linux/commit/88b35d4338e238519bf4e6f73837b4ce44bfe4d6
> 

Yes I realized yesterday night already lying in bed, that I only inspected half
of the code. I just found this as well, which seems to fit exactly the behaviour
we are seeing. I'll have a look today.

Regards,
Matthias

>>
>> Regards,
>> Matthias
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
