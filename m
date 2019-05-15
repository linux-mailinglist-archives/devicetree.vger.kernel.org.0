Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C092A1EC0F
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 12:24:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726212AbfEOKYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 06:24:30 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:46252 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725977AbfEOKYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 06:24:30 -0400
Received: by mail-qt1-f193.google.com with SMTP id z19so2531542qtz.13
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 03:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VF1vS3G86+JyyviSBTnGeyRAdDK6321ns1o68qnsEFU=;
        b=lwkIwhecfWX/tDLKzc8VdqHJkJpbhOhTyKZcxaWBPha90AwOblRBCJoPTfoYsG5asR
         x7kYV+1i+iu7NEpCGYVNy1oGD3lOX9UBqIIvq2GJspyjXE3SCLBfzH6kJ18ezT1amnpn
         3dbjuaAnNJyV02GfuY1N3LfQsOySeH3+Cjr3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VF1vS3G86+JyyviSBTnGeyRAdDK6321ns1o68qnsEFU=;
        b=PTQ58CjOLUk5Li7XIzKq3MfFmiXmLu/tme6QgDjZerHesSCZMhqOBy/nQL4svBgCXP
         FoJ35lYNTWEpLc78vHA614T/ERKuvDuXGG8dKpbO8/FUy5+tpp6JpuWJoQ5sXTihHAiO
         1Py4346Y4N8PKGY99gUiaT+fX/GVO73YDxVniaiLqf/jkDlXDAjMXKV8aGoUkBZ/v6Ek
         2P4xUOA29VyqcrMgGtDcozVNhdxOtUX5WmWFLeCWN6/4x0vkJChsCQQp4wzl2O9nq6TM
         1XpdMw9rsFqFfC7GWTY5FH6SpYg21lex4lsJBoufPI9DWowHDHuwO6eN61IpRQW9lG0J
         P20g==
X-Gm-Message-State: APjAAAU48+KH80kt3xXDNgZp7xVk2BBbuBYLFKdCJdC5azJl4ZoySiAU
        lKsCPxtMcY5TJdtQCm/rrmZWfo+zfzltfujSb2TE4w==
X-Google-Smtp-Source: APXvYqwJ3aw2EBWvbMfqY6pmIypZyyJaGuIQTDf+at1oH9RsnMy+pwkcQe7c5MAIBPn6XcOgFBmXDJQI5LsaEmxJs8M=
X-Received: by 2002:ad4:534b:: with SMTP id v11mr32936859qvs.31.1557915868951;
 Wed, 15 May 2019 03:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org> <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx> <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
 <20190514154223.GA11115@rapoport-lnx>
In-Reply-To: <20190514154223.GA11115@rapoport-lnx>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 15 May 2019 18:24:03 +0800
Message-ID: <CAJMQK-gMa81kHaTS1kwTcOy+Avt5GsmNcagfscdLdmzS31Tobw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
To:     Mike Rapoport <rppt@linux.ibm.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Architecture Mailman List <boot-architecture@lists.linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 14, 2019 at 11:42 PM Mike Rapoport <rppt@linux.ibm.com> wrote:

> I'm not sure if early console is available at the time kaslr_early_init()
> is called, but if yes, running with memblock=debug may shed some light.
>
> > I didn't trace the real reason causing this. But in this case, maybe
> > don't call memblock_reserve() in kaslr?
>
> My concern that this uncovered a real bug which might hit us later.
>
Hi Mike,
Thanks for the hint. I tried on my device but seems that earlycon
happens after the warning call trace, so can't more information.

Since on my device kaslr will be runned, I tried call
memblock_reserve() in kaslr and not in
setup_machine_fdt()#fixmap_remap_fdt, but got following warning

[    0.000000] memblock_remove:
[0x0001000000000000-0x0000fffffffffffe] arm64_memblock_init+0x28/0x224
[    0.000000] memblock_remove:
[0x0000004040000000-0x000000403ffffffe] arm64_memblock_init+0x64/0x224
[    0.000000] memblock_reserve:
[0x0000000040080000-0x00000000413c3fff]
arm64_memblock_init+0x188/0x224
[    0.000000] WARNING: CPU: 0 PID: 0 at
/mnt/host/source/src/third_party/kernel/v4.19/mm/memblock.c:583
memblock_add_range+0x1bc/0x1c8
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.38 #222
[    0.000000] Hardware name: MediaTek kukui rev2 board (DT)
[    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO)
[    0.000000] pc : memblock_add_range+0x1bc/0x1c8
[    0.000000] lr : memblock_add_range+0x30/0x1c8
[    0.000000] sp : ffffffab68603ea0
[    0.000000] x29: ffffffab68603ef0 x28: 0000000040954324
[    0.000000] x27: 0000000040080000 x26: 0000000000080000
[    0.000000] x25: 0000000080127e4b x24: ffffffab68716000
[    0.000000] x23: ffffffab680b5000 x22: 0000000001344000
[    0.000000] x21: 0000000040080000 x20: 0000000000000000
[    0.000000] x19: ffffffab6864bf00 x18: 00000000fffffc94
[    0.000000] x17: 000000000000003c x16: ffffffab67d49064
[    0.000000] x15: 0000000000000006 x14: 626d656d5f34366d
[    0.000000] x13: 7261205d66666633 x12: 0000000000000000
[    0.000000] x11: 0000000000000000 x10: ffffffffffffffff
[    0.000000] x9 : 0000000000011547 x8 : ffffffab68765690
[    0.000000] x7 : 696e695f6b636f6c x6 : ffffffab6875dd41
[    0.000000] x5 : 0000000000000000 x4 : 0000000000000000
[    0.000000] x3 : ffffffab678a24a0 x2 : 0000000001344000
[    0.000000] x1 : 0000000040080000 x0 : ffffffab6864bf00
[    0.000000] Call trace:
[    0.000000]  memblock_add_range+0x1bc/0x1c8
[    0.000000]  memblock_reserve+0x60/0xac
[    0.000000]  arm64_memblock_init+0x188/0x224
[    0.000000]  setup_arch+0x138/0x19c
[    0.000000]  start_kernel+0x68/0x380
[    0.000000] random: get_random_bytes called from
print_oops_end_marker+0x3c/0x58 with crng_init=0
[    0.000000] ---[ end trace ea99802b425f7adf ]---
[    0.000000] memblock_reserve:
[0x000000005f800000-0x000000005f811536]
early_init_dt_reserve_memory_arch+0x38/0x48
[    0.000000] memblock_reserve:
[0x00000000ffe00000-0x00000000ffffffff]
early_init_dt_reserve_memory_arch+0x38/0x48

So I guess we just can't call memblock_reserve() in kaslr?
