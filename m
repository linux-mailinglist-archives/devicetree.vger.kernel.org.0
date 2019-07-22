Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACDAB6F910
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 07:54:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726862AbfGVFyC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 01:54:02 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:32957 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726534AbfGVFyC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 01:54:02 -0400
Received: by mail-qk1-f196.google.com with SMTP id r6so27769918qkc.0
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2019 22:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ALpZrOrvgH+r7X2cMMcT3uazbVSi6LZd2S6e6b7HWF4=;
        b=bhk1S958rGZBS6IEGXloGFPbjRFD/ifwQs5J8bpIbKoLNxWYouoDqsXARyuDAJOP3a
         FhvZFvxqJS7NSPoGT6HKX21gwXhgd7uLzYfk0+liNpXD5P8+Nv1tpo/pWOSp6lQRdMia
         NufcCHw9qga7kxTfV/sKcSmAj/BuRmPi+ewjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ALpZrOrvgH+r7X2cMMcT3uazbVSi6LZd2S6e6b7HWF4=;
        b=avnROBYX5IjerEQfoQ6k/sD1IcdB/8IJW8alGr6Ddj0T5EbwzwcfTPxpxpc1SBR4IM
         3J640Q3iq2YgSbYmCorzQrPh/kq6X5Qn0nOGLnCiifK5OREcpg0vFhYpG5aNvCwYBytc
         XijbsoWRPA4r2Ivfsa/D+kYrnw3lDmVW1jelQ7rUwKCn276VRH75rMS51KuGFHqsqQ/u
         Eg7o6+KD2R/QBonIJ3EP2OUg8WWtFOx5uLMIbFAkA4PcBHbYkLt/FNM4lrR9KPT9Znc0
         T2KIkdklcmKJiVhN2aM4rqvcPlsr59FwBF+VVmxDKcWAILHaw2viCQowc3bOmu1NzKUE
         ipfw==
X-Gm-Message-State: APjAAAXmcCN6aAUBt4OzHgu3aBd4G8UeqBWeO35JOFAilK/a9m+K5um1
        3Cl7h37UgflAVuoMlZPsKaXudur4GSPBceDJodDGkQ==
X-Google-Smtp-Source: APXvYqyJS23zphBFVEahm9k+YlYFppVjg+Ahm5ctjBpTcgFAVUGpCf3TDqrV67yInPXuq6NdYTudh86LjK8xE8uirFw=
X-Received: by 2002:ae9:f017:: with SMTP id l23mr45458670qkg.457.1563774841009;
 Sun, 21 Jul 2019 22:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190703050827.173284-1-drinkcat@chromium.org>
 <815a8414-bfbe-c693-3208-1580779815ec@gmail.com> <CAL_JsqLETdazfnz5EU0Qw4TVVBhWmzk12Z5zYMo5Hm2ACPXh1w@mail.gmail.com>
 <421844aa-cf68-d4d2-f02d-aefaf8954fdf@gmail.com>
In-Reply-To: <421844aa-cf68-d4d2-f02d-aefaf8954fdf@gmail.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Mon, 22 Jul 2019 13:53:49 +0800
Message-ID: <CANMq1KB_VZ2DsHeWJK5HLx6pa9Mad6UXhvnfL0u_1ik-_NnXfw@mail.gmail.com>
Subject: Re: [PATCH] of/fdt: Make sure no-map does not remove already reserved regions
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        KarimAllah Ahmed <karahmed@amazon.de>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Ian Campbell <ian.campbell@citrix.com>,
        Grant Likely <grant.likely@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 7:17 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 7/16/19 4:12 PM, Rob Herring wrote:
> > On Tue, Jul 16, 2019 at 4:46 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >>
> >> On 7/2/19 10:08 PM, Nicolas Boichat wrote:
> >>> If the device tree is incorrectly configured, and attempts to
> >>> define a "no-map" reserved memory that overlaps with the kernel
> >>> data/code, the kernel would crash quickly after boot, with no
> >>> obvious clue about the nature of the issue.
> >>>
> >>> For example, this would happen if we have the kernel mapped at
> >>> these addresses (from /proc/iomem):
> >>> 40000000-41ffffff : System RAM
> >>>   40080000-40dfffff : Kernel code
> >>>   40e00000-411fffff : reserved
> >>>   41200000-413e0fff : Kernel data
> >>>
> >>> And we declare a no-map shared-dma-pool region at a fixed address
> >>> within that range:
> >>> mem_reserved: mem_region {
> >>>       compatible = "shared-dma-pool";
> >>>       reg = <0 0x40000000 0 0x01A00000>;
> >>>       no-map;
> >>> };
> >>>
> >>> To fix this, when removing memory regions at early boot (which is
> >>> what "no-map" regions do), we need to make sure that the memory
> >>> is not already reserved. If we do, __reserved_mem_reserve_reg
> >>> will throw an error:
> >>> [    0.000000] OF: fdt: Reserved memory: failed to reserve memory
> >>>    for node 'mem_region': base 0x0000000040000000, size 26 MiB
> >>> and the code that will try to use the region should also fail,
> >>> later on.
> >>>
> >>> We do not do anything for non-"no-map" regions, as memblock
> >>> explicitly allows reserved regions to overlap, and the commit
> >>> that this fixes removed the check for that precise reason.
> >>>
> >>> Fixes: 094cb98179f19b7 ("of/fdt: memblock_reserve /memreserve/ regions in the case of partial overlap")
> >>> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >>> ---
> >>>  drivers/of/fdt.c | 10 +++++++++-
> >>>  1 file changed, 9 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> >>> index cd17dc62a71980a..a1ded43fc332d0c 100644
> >>> --- a/drivers/of/fdt.c
> >>> +++ b/drivers/of/fdt.c
> >>> @@ -1138,8 +1138,16 @@ int __init __weak early_init_dt_mark_hotplug_memory_arch(u64 base, u64 size)
> >>>  int __init __weak early_init_dt_reserve_memory_arch(phys_addr_t base,
> >>>                                       phys_addr_t size, bool nomap)
> >>>  {
> >>> -     if (nomap)
> >>> +     if (nomap) {
> >>> +             /*
> >>> +              * If the memory is already reserved (by another region), we
> >>> +              * should not allow it to be removed altogether.
> >>> +              */
> >>> +             if (memblock_is_region_reserved(base, size))
> >>> +                     return -EBUSY;
> >>> +
> >>>               return memblock_remove(base, size);
> >>
> >> While you are it, the nomap argument (introduced with
> >> e8d9d1f5485b52ec3c4d7af839e6914438f6c285) predates the introduction of
> >> memblock_is_nomap() (bf3d3cc580f9960883ebf9ea05868f336d9491c2), so
> >> should just remove memblock_remove() and use memblock_mark_nomap()
> >> instead here.
> >
> > Perhaps like this patch[1]? Though the reasoning is different and the
> > commit message here is more thorough, so can I get a combined patch.
>
> From a quick reading it does look like memblock_isolate_range(), as
> called by memblock_setclr_flag() should be able to detect this region
> was already reserved, though I have not tried it.

I quickly tested it, and just using memblock_mark_nomap does not seem
be be enough (the call does not fail, and the nomap memory is still
allocated).

> > However, I don't under how handling a misconfigured DT and aligned
> > with EFI are the same patch. What's considered valid for EFI is not
> > for DT regions?
>
> That I don't know how to answer.
> --
> Florian
