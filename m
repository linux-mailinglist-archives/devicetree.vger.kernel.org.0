Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0065651FA83
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 12:51:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229916AbiEIKyW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 06:54:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231713AbiEIKxd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 06:53:33 -0400
Received: from mailserv1.kapsi.fi (mailserv1.kapsi.fi [IPv6:2001:67c:1be8::25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90507E44D0
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 03:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=ext.kapsi.fi; s=20161220; h=Subject:Content-Transfer-Encoding:Content-Type:
        In-Reply-To:From:References:To:Cc:MIME-Version:Date:Message-ID:Sender:
        Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
        :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=wiyv7YKZUKvMHgtizD5I5mEwBqEd65bkA4FJhaegWfM=; b=XAOOSCLXr1i3VPA+fNIHB8sJjR
        axT5o2d7piol69aakYH+fXnk7LGL+pFRmsQBAy8QVZRXvwPD8XlubgYORKWLINz06WRUOe8Smwj7w
        iKTKx/SIfTaKTyu1PZwvcRcENY1T/2xzbes5k2BbuU3tWtBDKk1KiqYP7TN0I4BHy0f+GCdmhTT2a
        BWh0HOe57bIxobtTAxmmEFdhXxNVGzz8NBdrRX1p6xgAD9MxC6XxTXhmCipnmXIvSNIkwPfXMiY1i
        MvJDy3LX57dPTo/Oi1/3EoVD8Xfmv1vAanVrYglWKj3qkZjLjRGwD8YijqsSB2I0yU/UBoZhbMZN/
        zCMwNLHw==;
Received: from 76e7-6de6-c96a-714b-8500-87e2-07d0-2001.dyn.estpak.ee ([2001:7d0:87e2:8500:714b:c96a:6de6:76e7]:50092)
        by mailserv1.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)
        (envelope-from <maukka@ext.kapsi.fi>)
        id 1no0wi-0000f5-4i; Mon, 09 May 2022 13:48:56 +0300
Message-ID: <87b47ff7-d92e-8d0c-5c8f-53a74f881e35@ext.kapsi.fi>
Date:   Mon, 9 May 2022 13:48:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Cc:     maukka@ext.kapsi.fi, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
 <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
 <1509d16c-d244-19c7-610b-4c8ea8ca1624@ext.kapsi.fi>
 <CAK8P3a3g4CZjiVHHoBqJLrdN0chghaskODVvtWY1Fjj8TcB8KQ@mail.gmail.com>
 <b09847c4-90f8-509d-835b-85613712344d@ext.kapsi.fi>
 <CAK8P3a1miLk8YU+T5ozyf-X8qUB3sJq6cyTovBs9XWb9MrJxMw@mail.gmail.com>
 <20220508152237.3hw657gcba2fvheq@pali> <20220508154126.3wubyyunpuxetswm@pali>
From:   Mauri Sandberg <maukka@ext.kapsi.fi>
In-Reply-To: <20220508154126.3wubyyunpuxetswm@pali>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:7d0:87e2:8500:714b:c96a:6de6:76e7
X-SA-Exim-Mail-From: maukka@ext.kapsi.fi
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on mailserv1.kapsi.fi)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.5.2022 18.41, Pali Rohár wrote:
> On Sunday 08 May 2022 17:22:37 Pali Rohár wrote:
>> On Sunday 08 May 2022 17:02:17 Arnd Bergmann wrote:
>>> On Sun, May 8, 2022 at 4:06 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>>>> On 28.4.2022 23.56, Arnd Bergmann wrote:
>>>>> On Thu, Apr 28, 2022 at 10:01 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>>>>>> On 27.4.2022 21.10, Arnd Bergmann wrote:
>>>>>>> On Wed, Apr 27, 2022 at 6:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>>>>>>>> - sata_mv fails to initialise with -22 (-EINVAL)
>>>>>>>
>>>>>>> No idea, I'd try inserting a printk in every code path that can return -EINVAL
>>>>>>> from there
>>>>>>>
>>>>
>>>> With debugging the reason for -EINVAL remains a bit mystery.
>>>>   - sata_mv calls ata_host_activate() [1]
>>>>   - later on, in request_threaded_irq(), there are sanity checks [2]
>>>>   - that fail with irq_settings_can_request() returning 0 [3]
>>>>
>>>> I cannot really put my finger on why the irq cannot be requested in DT
>>>> approach.
>>>
>>> Are you sure the marvell,orion-intc driver is successfully probed
>>> at this point? If not, the interrupt won't be there.
>>>
>>> I see that the "sata_mv" driver can be used either as a platform
>>> driver for the orion5x on-chip controller, or as a PCI driver for
>>> an add-on chip connected to the external bus. It sounds like
>>> your system has both. Do you know which one fails?
>>>
>>> The PCI driver cannot work unless the PCI host works correctly,
>>> and that in turn requires a correct devicetree description for it.
>>>
>>>>>> Is there a way to describe the PCIe bus in the
>>>>>> device tree? The initalisation of that bus is done for rev A1 only.
>>>>>
>>>>> I'm not too familiar with the platform, but my interpretation is that the
>>>>> DT support here is incomplete:
>>>>>
>>>>> The DT based PCI probe using drivers/pci/controller/pci-mvebu.c
>>>>> is not hooked up in orion5x.dtsi, and the traditional pci code does
>>>>> not work with DT.
>>>>
>>>> Can the existing pci code still be used to init the PCI bus and describe
>>>> the rest in the DT or is it a futile attempt?
>>
>> Hello! Orion uses arch/arm/mach-orion5x/pci.c driver for both PCI and
>> PCIe buses. This is not device tree driver.
> 
> Correction, Orion PCIe driver is arch/arm/plat-orion/pcie.c and it calls
> common functions from mach-orion5x/pci.c driver.
> 
>>>>> I see that orion5x has two separate blocks --  a PCIe host that is
>>>>> similar to the kirkwood one, and a legacy PCI host that needs
>>>>> a completely separate driver.
>>>>>
>>>>> Which of the two do you actually need here?
>>>>>
>>>>
>>>> I really cannot say which one is it. How can I tell? The functions given
>>>> in struct hw_pci find their way to drivers/pci/probe.c eventually and
>>>> use pci_scan_root_bus_bridge(). Nothing seems to utilising mvebu or
>>>> kirkwood explicitly at least.
>>>>
>>>> Here's the output from lspci if the ids reveal anything.
>>>>
>>>> # lspci -v -k
>>>> 00:00.0 Class 0580: 11ab:5181
>>>> 01:00.0 Class 0580: 11ab:5181
>>>> 00:01.0 Class 0100: 11ab:7042 sata_mv
>>>
>>> The first two seem to be the host bridges, but unfortunately they
>>>  seem both have the same device ID, despite being very different
>>> devices.  The first one (00:00.0) should be the PCIe driver, the
>>> second one (01.00.0) the legacy PCI one. In this case, the 11ab:7042
>>> device is a PCIe device, and it's on the bus (00) of the first host
>>> bridge. I think this should work with drivers/pci/controller/pci-mvebu.c
>>> if you add the bits for probing.
>>
>> Last time when I looked on Orion PCIe controller registers, I though
>> that they are same as in Kirkwood PCIe controller registers. And
>> Kirkwood is already supported by pci-mvebu.c driver.
>>
>> About PCI host bridge, I do not know.
>>
>> Beware that PCI Class Id and all PCI registers which are different for
>> Type 0 and Type 1 are _broken_ on all PCIe Root Ports form all 32-bit
>> Marvell SoCs. Those registers on Marvell SoCs have different meaning as
>> what is defined in PCI and PCIe specs. So it means that lspci _may_
>> display bogus information about PCIe Root Port. pci-mvebu.c uses Root
>> Port emulator which fills correct data to make kernel and lspci happy.
>>
>> If you are going to extend pci-mvebu.c to support also Orion PCIe
>> controller, I could try to help with it. But I do not have any Orion
>> hardware, so just basic help...
>>
>> Links to Orion documentations, including PCIe errata is available in
>> kernel documentation. So this could help to understand some details:
>> https://www.kernel.org/doc/html/latest/arm/marvell.html
>>
>> Anyway, could you please provide 'lspci -nn -vv' and 'lspci -nn -t -v'
>> outputs from Orion?
>>
>>> Thomas Petazzoni originally wrote the new driver, and I think he was
>>> planning at one point to use it for orion5x. I don't know if there were
>>> any major problems preventing this at the time, or if it just needs to
>>> get hooked up in the dtsi file.
>>>
>>>          Arnd
> 
> There is Orion-specific errata that config space via CF8/CFC registers
> is broken. Workaround documented in errata documented (linked from above
> documentation) does not work when DMA is used and instead other
> undocumented workaround is needed (implemented in arch/arm) which maps
> config space to memory (and therefore avoids usage of broken CF8/CFC
> memory mapped registers).

So basically I should look at arch/arm/plat-orion/pcie.c for the
configuration part, add new compatible to pci-mvebu.c for orion5x
and alter the probing function accoringly for the same. Did I get
it correctly?

If so, sounds simple when said out lout but I might need some more
pointers to get started. Like with configuration people generally
mean setting BARs and WINs? Or is there more to it? :) If you
could lay out the basic steps that are needed I would really
appreciate it.
