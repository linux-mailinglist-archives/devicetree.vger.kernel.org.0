Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 51F8117CCA
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 17:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727123AbfEHPGP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 11:06:15 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:44151 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726914AbfEHPGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 11:06:15 -0400
Received: by mail-qk1-f194.google.com with SMTP id w25so3514125qkj.11
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 08:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oDzDsVMU+LJr7Vip7FUWGFjPTFwrPecpVC+p71dwHL0=;
        b=YyvjUF7kcpOEi0nE6dzVsg/gcQTmv5N8+kMHVneU2YA724wvUKi6bG88nc2ddw8bwh
         xQWEOtv1wgEx0039HHBmyRo0mYya6XFQesGUURR537siA2xMVgsISqv6MqgcHvOE01gZ
         WUTtn0x8U7/FWPvWp3kHk1dWp4H/CicnYmdTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oDzDsVMU+LJr7Vip7FUWGFjPTFwrPecpVC+p71dwHL0=;
        b=rRTIk8aWAx3yHHPwnWnKcXUZLMiXDjBaFTzv+BArINVyV/Kjyfw6+7a6CZyecyNSCt
         Lgv/e7PBKq9ZruiP8fChKuIh//YxKUYo+J6njZ3zDg3juvb7X1+FP60Ic/EBthiq1DA8
         zqzJXHwrzOMwKptLUjIaaOqpH6fF7S2dO/D51whHQkuqa7Rg2PJXCLNcoLfXUacjnNBr
         Oy/M92oFVMnN3iNLqsI5ZZmfYQcleQGWai7bUnauRd5LZScIguyc3hsQdbYyyHOKrPmN
         y2A58IOmB1dA5tyrJhU7zzSFOszdZppkVR/QoWZ1aj5nQR0SuKk/l9i4vV1kVXtan7Uq
         8Ubw==
X-Gm-Message-State: APjAAAWcAa8J19Z55DzyGPncl1B6rCPLQYIYvsP2/pCgDd/d+IwxvUD9
        c7+ft2nnf5uwfCrd1H3g1Hmuq8xGUECM07eIDrUdUQ==
X-Google-Smtp-Source: APXvYqzKF9hpiQ7++7G8HoeOWq1DqYNKoDcAsjHDKXSfNfIFkZYm1Ylb5eOULOWWNB0JjrIWx70mQF4jn2aNPXQtqnc=
X-Received: by 2002:a05:620a:16c3:: with SMTP id a3mr6908351qkn.222.1557327974036;
 Wed, 08 May 2019 08:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org> <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com> <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
In-Reply-To: <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 8 May 2019 23:05:47 +0800
Message-ID: <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To:     Rob Herring <robh+dt@kernel.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Architecture Mailman List <boot-architecture@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 8, 2019 at 10:04 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, May 7, 2019 at 11:08 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > +boot-architecture list as there was some discussion about this IIRC.
> > >
> > > On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > > >
> > > > Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> > > > that can be passed to kernel called very early to increase device
> > > > randomness. Bootloader should provide this entropy and the value is
> > > > read from /chosen/rng-seed in DT.
> > > >
> > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > >
> > > > ---
> > > >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
> > >
> > > Actually, this file has been converted to json-schema and lives
> > > here[1]. I need to remove this one (or leave it with a reference to
> > > the new one).
> > >
> > > >  arch/arm64/kernel/setup.c                    |  2 ++
> > > >  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
> > > >  include/linux/of_fdt.h                       |  1 +
> > > >  4 files changed, 50 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> > > > index 45e79172a646..bfd360691650 100644
> > > > --- a/Documentation/devicetree/bindings/chosen.txt
> > > > +++ b/Documentation/devicetree/bindings/chosen.txt
> > > > @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
> > > >  the Linux EFI stub (which will populate the property itself, using
> > > >  EFI_RNG_PROTOCOL).
> > > >
> > > > +rng-seed
> > > > +-----------
> > > > +
> > > > +This property served as an entropy to add device randomness. It is parsed
> > > > +as a 64 byte value, e.g.
> > >
> > > Why only 64-bytes?
> > We can also not specify size and read what bootloader can provide.
> > >
> > > > +
> > > > +/ {
> > > > +       chosen {
> > > > +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> > > > +       };
> > > > +};
> > > > +
> > > > +This random value should be provided by bootloader.
> > > > +
> > > >  stdout-path
> > > >  -----------
> > > >
> > > > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > > > index 413d566405d1..ade4261516dd 100644
> > > > --- a/arch/arm64/kernel/setup.c
> > > > +++ b/arch/arm64/kernel/setup.c
> > > > @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
> > > >         early_fixmap_init();
> > > >         early_ioremap_init();
> > > >
> > > > +       early_init_dt_rng_seed(__fdt_pointer);
> > > > +
> > >
> > > I'm trying to reduce or eliminate all these early_init_dt_* calls.
> > >
> > > Why is this arch specific and why can't this be done after
> > > unflattening? It doesn't look like add_device_randomness() needs
> > > anything early.
> > Currently unflattening is called after setup_machine_fdt(), which
> > called fixmap_remap_fdt() //__fixmap_remap_fdt(dt_phys, &size,
> > PAGE_KERNEL_RO), and we can't modify DT after that since it's read
> > only. But we need to clear (eg. write 0 to it) the rng-seed after
> > reading from DT.
>
> Why do you need to clear it? That wasn't necessary for kaslr-seed.
I think it's for security purpose. If we know the random seed, it's
more likely we can predict randomness.
Currently on arm64, kaslr-seed will be wiped out (in
arch/arm64/kernel/kaslr.c#get_kaslr_seed(), it's set to 0) so we can't
read from sysfs (eg. /sys/firmware/devicetree/.../kaslr-seed)
I'm not sure on other arch if it will be wiped out.
>
> Why not change the mapping to RW? It would be nice if this worked on
> more than one arch.
>
> Rob
