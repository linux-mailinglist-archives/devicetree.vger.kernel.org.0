Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6FC72FF544
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 21:00:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726442AbhAUT7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 14:59:21 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:42130 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726212AbhAUT7L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 14:59:11 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LJvPFm090212;
        Thu, 21 Jan 2021 13:57:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611259045;
        bh=pLBojW9Ls9+/CR/XUAsFk2sv8xZ4PJkzjdxCrCf78rQ=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=FMKHI8ptBRg+RvyR5sWiNmkeXmKHB0jLR3EkKUH/PYUZMV+rh47BIeKIq22LCnbs4
         MH0wnDGpdlkrQJHCnwXhszOVnKRLdSAfxNSi1dmOY+qdz/FPrkcGI3/YUcr3qXKMw8
         30kV3OpLLvOZrog3+AKWHyVmOt55ytRW1ktEnQo0=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LJvPTK026222
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 13:57:25 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 13:57:24 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 13:57:24 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LJvOJX130359;
        Thu, 21 Jan 2021 13:57:24 -0600
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
To:     Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>,
        Tony Lindgren <tony@atomide.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
 <20210121183909.pwpboiptqbof2dfu@squint>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
Date:   Thu, 21 Jan 2021 13:57:19 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121183909.pwpboiptqbof2dfu@squint>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+ Arnd and Tony

On 1/21/21 12:39 PM, Nishanth Menon wrote:
> On 12:13-20210121, Suman Anna wrote:
>> On 1/21/21 11:46 AM, Nishanth Menon wrote:
>>> On 11:25-20210121, Suman Anna wrote:
>>>> On 1/20/21 2:25 PM, Dave Gerlach wrote:
>>>>> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
>>>>> providing advanced system integration to enable applications such as
>>>>> Motor Drives, PLC, Remote IO and IoT Gateways.
>>>>>
>>>>> Some highlights of this SoC are:
>>>>> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>>>>>   MCUs, and a single Cortex-M4F.
>>>>> * Two Gigabit Industrial Communication Subsystems (ICSSG).
>>>>> * Integrated Ethernet switch supporting up to a total of two external
>>>>>   ports.
>>>>> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>>>>>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>>>>>   peripherals.
>>>>> * Centralized System Controller for Security, Power, and Resource
>>>>>   Management (DMSC).
>>>>>
>>>>> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
>>>>> for further details: https://www.ti.com/lit/pdf/spruim2
>>>>>
>>>>> Introduce basic support for the AM642 SoC to enable ramdisk or MMC
>>>>> boot. Introduce the sdhci, i2c, spi, and uart MAIN domain periperhals
>>>>> under cbass_main and the i2c, spi, and uart MCU domain periperhals
>>>>> under cbass_mcu.
>>>>>
>>>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>>>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>>>>
>>>> Hmm, there are a few pieces contributed by me, so please do add
>>>>
>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>>
>>> Sure, thanks..
>>>
>>> [...]
>>>
>>>>> +
>>>>> +	sdhci0: mmc@fa10000 {
>>>>> +		compatible = "ti,am64-sdhci-8bit";
>>>>
>>>> Hmm, I tried booting this series on top of 5.11-rc1 + Nishanth's current
>>>> ti-k3-dts-next. So, boot of these patches using this baseline fails when using
>>>> MMC rootfs, but is ok when using initramfs. This particular compatible and the
>>>> corresponding driver change are only in linux-next coming through couple of
>>>> patches from the MMC subsystem.
>>>>
>>>> I am not sure why we would be including stuff that's dependent on some other
>>>> patches being merged from a different sub-system? Strangely, this ought to be
>>>> caught by dtbs_check, but it is not throwing any errors.
>>>>
>>>> IMHO, these should only be added if you have no other external dependencies
>>>> especially when you are applying on a 5.11-rc baseline. The MMC pull-requests
>>>> would not go through arm-soc either.
>>>>
>>>
>>> Yes, I am aware of this - this is no different from integration we have
>>> done in the past as well.. intent is to get bindings in via subsystem
>>> trees and dts changes via arm-soc. I always insist that basic ramdisk
>>> boot always in the basic introduction tree. mmc, nfs are add-ons that
>>> get added via subsystem tree and I host the dts changes - in this case
>>> every dts node binding is fine with subsystems already queued in
>>> linux-next. And this is no different from what I have noticed on other
>>> ARM SoC maintainer trees as well.
>>>
>>
>> Hmm, this is kinda counter-intuitive. When I see a dts node, I am expecting the
> 
> What is counter intutive about a -next branch be tested against
> linux-next tree?

The -next process is well understood. FWIW, you are not sending your PR against
-next branch, but against primarily a -rc1 or -rc2 baseline.

As a developer, when I am submitting patches, I am making sure that things are
functional against the baseline you use. For example, when I split functionality
into a driver portions and dts portions, I need to make sure both those
individual pieces boot fine and do not cause regressions, even though for the
final functionality, you need both.

> 
>> required driver functionality to have been in (or atleast the binding as per
>> documentation), and not having to need to pick additional patches.
>>
>> If the intent is to verify/test everything against linux-next and not the
>> baseline tree, then I guess this works. But in general, this kinda goes against
>> the rules set in submitting patches. For example, see
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/submitting-patches.rst#n44
>>
>> And sure enough, this is what I get when I run checkpatch against your tree.
> 
> Also read https://www.kernel.org/doc/html/v5.11-rc4/process/2.Process.html#next-trees
> 
> You should probably realize linux-next is an integral part of the
> process for us now.
> 
>>
>> WARNING: DT compatible string "ti,am64-sdhci-8bit" appears un-documented --
>> check ./Documentation/devicetree/bindings/
>> #347: FILE: arch/arm64/boot/dts/ti/k3-am64-main.dtsi:298:
>> +		compatible = "ti,am64-sdhci-8bit";
>>
>> WARNING: DT compatible string "ti,am64-sdhci-4bit" appears un-documented --
>> check ./Documentation/devicetree/bindings/
>> #365: FILE: arch/arm64/boot/dts/ti/k3-am64-main.dtsi:316:
>> +		compatible = "ti,am64-sdhci-4bit";
> 
> 
> you are saying basically - wait a complete kernel cycle after a driver
> is introduced before we can even test a driver SoC support introduced
> without an user in the same kernel version.. which is a disaster and bit-rot
> 
> OR
> 
> Let the subsystem maintainers also carry the patches for dts - which is
> going to be another disaster and creates all kind of avoidable merge
> conflicts.
> 
> OR
> 
> I stage a rc1 and rc2 merge cycle - which makes no sense - these nodes
> dont get activated without a compatible match, which gets enabled only
> when the corresponding subsystem is merged - they dont break existing
> functionality even when the subsystem is merged, it just increases
> the functionality as it should. (not to mention that all my follow on
> kernel merge trees will have to be rc2 based - since majority nodes
> will be introduced there)
> 
> dts already has a pain point that we are trying to manage logically
> here, this is not a MISRA-C ASIL-D process - follow and exact verbatim
> word to word process, that is just plain ridiculous.
> 
> When rc1 comes together, which is what my next branch is for, things
> should be cohesive - we dont introduce regressions and broken trees -
> which is exactly what the -next process makes sure happens.
> 
> 
> Now, if you want to launch a product with my -next branch - go ahead, I
> don't intent it for current kernel version - you are on your own.
> 
> If there is a real risk of upstream next-breaking - speakup with an
> real example - All I care about is keeping upstream functional and
> useable.

This is all moot when your own tree doesn't boot properly. In this case, you are
adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
nodes that were added or you need additional driver patches (which is not how
maintainer-level trees are verified).

Arnd,
Can you please guide us here as to what is expected in general, given that the
pull-request from Nishanth goes through you, and if there is some pre-existing
norms around this?

Tony,
Appreciate your input as well since you probably have dealt with these kinda of
dependencies on OMAP.

regards
Suman

> 
> I recheck the linux-next tree almost daily basis for consistency, and I
> do appreciate the concern here (and passion) - point is, I think we
> might be a bit of an over-reaction if we just look at the other options
> in front of us - not to mention, maybe drop the entire idea of dt coming
> in from ARM SoC - let the subsystem member create merge conflict and
> duke it out.. I don't think any of us want to see that kind of mayhem.
> 

