Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED5E43D42A3
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:09:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231940AbhGWV22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbhGWV22 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:28:28 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E684C061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:09:00 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b7so3789862wri.8
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ecBj1zwkwYbGZmPUHfpHo34O/qFU4IXeWk/Gj4el/tM=;
        b=HGYGO1agXI7WNvWwPw350KSfg0GLvzcju4Z5EiI8D+l4EP40ZQllCKXTfUAABvAYIc
         ukNpMOqWdsL0WhHVNhZlCOxZIb1fEyuSOvRKzMbACrfUV088n0fVEsNd0cgEWr+5iKhk
         fqb4oqe7cZyVJv/MzOmLwEYTm8Ra4CDWuBzy46ruPzfmfvlE2tSKwcNxNrQvTW9Hl8/X
         C5nghG/eCYy9yt6b0NXGN9bGSSfifgesFDnrObZiI9iI8nfx12eFzMMVHt/BPhtOjDIb
         1G7KkYePFXHBwrErsA+cRg+vYFnhS48+AVKe+ZC+micMrt9to0/OLV8Kj04u+4XKwUi2
         bTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ecBj1zwkwYbGZmPUHfpHo34O/qFU4IXeWk/Gj4el/tM=;
        b=oAmQjNFgjtejHSOXsem2xYubfXes13qa5LOlscAsaHTJMpCbxIlI9zHtjFF+FosU6T
         9ED3taxb/8ZhZCFFkXbznO+5sBkaepe0SMUK5I3uLg9ff47Rso9ZzCtzhtL6YNHkk7k7
         g9L4efHMXtEn8cjgb6wfwhwaeIY+0q2khPPVg+IU9bEiJxCvyR8oMlulWfqaG1OVsQOe
         EQvrlC/fqgrOPGxsblhpaK5VQVwhsSdCtjo8hjUi1+KWXNhgoW1meV2uzuzP+QNIxcUc
         Yep0bYff7lpOCNv8mX7y6qPYkH6KSHhaamAAtKEiDQIRFr23VLp13hmVmJKsVgUSlFTP
         6w8w==
X-Gm-Message-State: AOAM532lEmRYjSTMxg1aI5Mf7FIMHrjiup5fJWF9Co+21n+4lQpuTjqv
        6nO+Z4Kqt4V5MEnL1sqrBVk=
X-Google-Smtp-Source: ABdhPJw8Sxr/QfKAbUpyqwrWHu2bVlTySlMiiJtAJVMHDHH+c3u+yrc4eD88LEHyDBRAn/1TATR+hg==
X-Received: by 2002:a05:6000:1248:: with SMTP id j8mr7212507wrx.391.1627078138602;
        Fri, 23 Jul 2021 15:08:58 -0700 (PDT)
Received: from debian64.daheim (p5b0d7bb8.dip0.t-ipconnect.de. [91.13.123.184])
        by smtp.gmail.com with ESMTPSA id v30sm36863335wrv.85.2021.07.23.15.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:08:58 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1])
        by debian64.daheim with esmtp (Exim 4.94.2)
        (envelope-from <chunkeey@gmail.com>)
        id 1m73LK-001hIT-Av; Sat, 24 Jul 2021 00:08:30 +0200
Subject: Re: [PATCH v3 0/5] powerpc: apm82181: adding customer devices
To:     Andy Shevchenko <andriy.shevchenko@intel.com>
Cc:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
References: <cover.1599343429.git.chunkeey@gmail.com>
 <YPsWMRLWQoxHFub6@smile.fi.intel.com>
From:   Christian Lamparter <chunkeey@gmail.com>
Message-ID: <8a8f50d1-b89c-322f-1465-062ed287d491@gmail.com>
Date:   Sat, 24 Jul 2021 00:08:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YPsWMRLWQoxHFub6@smile.fi.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy!

On 23/07/2021 21:19, Andy Shevchenko wrote:
> On Sun, Sep 06, 2020 at 12:06:10AM +0200, Christian Lamparter wrote:
>> I've been holding on to these devices dts' for a while now.
>> But ever since the recent purge of the PPC405, I'm feeling
>> the urge to move forward.
>>
>> The devices in question have been running with OpenWrt since
>> around 2016/2017. Back then it was linux v4.4 and required
>> many out-of-tree patches (for WIFI, SATA, CRYPTO...), that
>> since have been integrated. So, there's nothing else in the
>> way I think.
>>
>> A patch that adds the Meraki vendor-prefix has been sent
>> separately, as there's also the Meraki MR32 that I'm working
>> on as well. Here's the link to the patch:
>> <https://lore.kernel.org/linuxppc-dev/20200822154045.16036-1-chunkeey@gmail.com/>
>>
>> Now, I've looked around in the arch/powerpc for recent .dts
>> and device submissions to get an understanding of what is
>> required.
>> >From the looks of it, it seems like every device gets a
>> skeleton defconfig and a CONFIG_$DEVICE symbol (Like:
>> CONFIG_MERAKI_MR24, CONFIG_WD_MYBOOKLIVE).
>>
>> Will this be the case? Or would it make sense to further
>> unite the Bluestone, MR24 and MBL under a common CONFIG_APM82181
>> and integrate the BLUESTONE device's defconfig into it as well?
>> (I've stumbled across the special machine compatible
>> handling of ppc in the Documentation/devicetree/usage-model.rst
>> already.)
> 
> I haven't found any traces of this to be applied. What is the status of this
> patch series? And what is the general state of affairs for the PPC44x?


My best guess is: It's complicated. While there was a recent big
UPSET EVENT regarding the My Book Live (MBL) that affected "hundreds"
and "thousands": "An unpleasant surprise for My Book Live owners"
(<https://lwn.net/Articles/861235/>). Sadly this wasn't getting any
traction.

I can tell that the mentioned Cisco Meraki MR32 (Broadcom ARM SoC)
got merged. So this is off the plate 😌.

But APM821xx sadly went nowhere 😕. One reason being that I haven't
yet posted a V4, V5 and so on...

In theory, for v4 I would have liked to know how to handle the
kConfig aspect of the series: Would it be "OK" to have a
single CONFIG_APM82181/CONFIG_APM821XX symbol or should there
be a CONFIG_MBL the CONFIG_MR24 (CONFIG_WNDR4700 and CONFIG_MX60W
in the future)?

As for the MBL: Well, If you (or any one else) is interested in
having a more up-to-date Debian. Then I have something:

A while back, I made a "build.sh". This will build a
"out-of-the-box" Debian unstable/SID powerpc system image.
This includes sensible NAS defaults + programs as well as
a Cockpit Web-GUI. But also makes it easily possible to do
the DTBs development on the latest vanilla (5.14-rc2 as of
the time of writing this) kernel for the
MyBook Live Single and Duo:

<https://github.com/chunkeey/mbl-debian>

I can't really make one for the MR24 though. Its 32MiB NAND
makes it difficult to install anything else than OpenWrt
(and get some use out of the device).

So, how to proceed?

Cheers,
Christian

PS.: As for PPC44x health regarding APM82181: It works!

This is with a My Book Live (MBL) and the 5.14.0-rc2(+) kernel.

[    0.000000] printk: bootconsole [udbg0] enabled
[    0.000000] Activating Kernel Userspace Execution Prevention
[    0.000000] Linux version 5.14.0-rc2+ (root@debian64) (powerpc-linux-gnu-gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 Fri Jul 23 22:59:56 CEST 2021
[    0.000000] Found initrd at 0xcf000000:0xcfe73b70
[    0.000000] Using PowerPC 44x Platform machine description
[    0.000000] -----------------------------------------------------
[    0.000000] phys_mem_size     = 0x10000000
[    0.000000] dcache_bsize      = 0x20
[    0.000000] icache_bsize      = 0x20
[    0.000000] cpu_features      = 0x0000000000000100
[    0.000000]   possible        = 0x0000000040000100
[    0.000000]   always          = 0x0000000000000100
[    0.000000] cpu_user_features = 0x8c008000 0x00000000
[    0.000000] mmu_features      = 0x00000008
[    0.000000] -----------------------------------------------------
[    0.000000] Top of RAM: 0x10000000, Total RAM: 0x10000000
[    0.000000] Memory hole size: 0MB
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000] MMU: Allocated 1088 bytes of context maps for 255 contexts
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 16352
[    0.000000] Kernel command line: root=UUID=ef4e8942-768b-4d2e-ba57-486397c97081 console=ttyS0,115200
[    0.000000] Dentry cache hash table entries: 32768 (order: 3, 131072 bytes, linear)
[    0.000000] Inode-cache hash table entries: 16384 (order: 2, 65536 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Kernel virtual memory layout:
[    0.000000]   * 0xffbdc000..0xffffc000  : fixmap
[    0.000000]   * 0xd1000000..0xffbdc000  : vmalloc & ioremap
[    0.000000] Memory: 237088K/262144K available (6096K kernel code, 832K rwdata, 1888K rodata, 256K init, 338K bss, 25056K reserved, 0K cma-reserved)
[    0.000000] random: get_random_u32 called from cache_random_seq_create+0x68/0x148 with crng_init=0
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] NR_IRQS: 512, nr_irqs: 512, preallocated irqs: 16
[    0.000000] UIC0 (32 IRQ sources) at DCR 0xc0
[    0.000000] UIC1 (32 IRQ sources) at DCR 0xd0
[    0.000000] UIC2 (32 IRQ sources) at DCR 0xe0
[    0.000000] UIC3 (32 IRQ sources) at DCR 0xf0
[    0.000000] time_init: decrementer frequency = 800.000008 MHz
[    0.000000] time_init: processor frequency   = 800.000008 MHz
[    0.000008] clocksource: timebase: mask: 0xffffffffffffffff max_cycles: 0xb881274fa3, max_idle_ns: 440795210636 ns
[    0.008985] clocksource: timebase mult[1400000] shift[24] registered
[    0.014006] clockevent: decrementer mult[ccccccef] shift[32] cpu[0]
[    0.019181] Console: colour dummy device 80x25
[    0.022289] pid_max: default: 32768 minimum: 301
[    0.025979] Mount-cache hash table entries: 4096 (order: 0, 16384 bytes, linear)
[    0.032024] Mountpoint-cache hash table entries: 4096 (order: 0, 16384 bytes, linear)
[    0.041291] devtmpfs: initialized
...

The "+" Patch is:
<https://github.com/chunkeey/mbl-debian/blob/master/patches/kernel/9999-powerpc-apm82181-add-WD-MyBook-Live-NAS.patch>
(which adds the "wd,mybooklive" to the list of
supported devices to ppc44x_simple.c)
