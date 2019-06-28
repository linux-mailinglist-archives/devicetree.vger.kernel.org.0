Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90F575992B
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 13:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726587AbfF1LYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jun 2019 07:24:12 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:38383 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726695AbfF1LYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jun 2019 07:24:12 -0400
Received: by mail-qt1-f196.google.com with SMTP id n11so5809299qtl.5
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2019 04:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X/Ug5dzWgzAo254GigTyB3K1N9vqEmjljvMsZ1gZJ+s=;
        b=mYrk7KIObHI2/13Kp27Vl24AfH1GeS822BC9Blo1INXT9dMN8zg1hOJrqg0OUujE9r
         o/sACm63p6WZMySZR7m28wnwBaSvEaJE65i+L0PXmSg8id7jHR/maNMUwPP1xoB6OFpK
         d55TI5ehAD9OWc3poyR68Yx5AxYZlp1MwGf0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X/Ug5dzWgzAo254GigTyB3K1N9vqEmjljvMsZ1gZJ+s=;
        b=ZHe69QppCwb6WzlbQSl+t37zEs0/NrJtj8a2MRQoQ3Cq5TTWEdjMfIfxT2FfrztrId
         Ve0k5SFBydruPQocYtGxuKLlIOEPf1Gn1/jTDZSk11+yu7BylKQ3efsfOECrRP6OZcOH
         XHipcDNCW8Fx75mce63h/KJ44PRMccJfzErakwpARI6wc+RQf7SSM2tNbrYSruzWs2Jx
         sZW0t8f+VKMsCJjRl5ANOTMhBUA5lVbNFthRdsabC2aDl9L8cJ2nWRcpkolOFoIXi+qg
         dqNAkTkokDO5CLc020YEceTiPw87X+kiT39JAG6MZC0coZGNJ15ZfM7UI6CxVdwhakCT
         4/Fg==
X-Gm-Message-State: APjAAAUwQBHvB4+3HPaztz+etqqsvDmD+gERLQU1l8pxJpCOsHRrQvTC
        DhKGZiyLCRSSo/vD3GaQoQJaFB1dsLry8e+hqu7siw==
X-Google-Smtp-Source: APXvYqyma+rIlgBTxFdrPMygxhmPVjGgIj7WgGfVJNGUReXJEloaTE7RwdyJzDCp0z57gIOQR4eTrJoCGDnA/EKAxmI=
X-Received: by 2002:ac8:4601:: with SMTP id p1mr7671783qtn.181.1561721051369;
 Fri, 28 Jun 2019 04:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190612043258.166048-1-hsinyi@chromium.org> <20190612043258.166048-3-hsinyi@chromium.org>
 <20190628093529.GB36437@lakrids.cambridge.arm.com>
In-Reply-To: <20190628093529.GB36437@lakrids.cambridge.arm.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 28 Jun 2019 19:23:45 +0800
Message-ID: <CAJMQK-g_9bDHJgKr-qKpQ6HwombB+6Asg_z3r6nv+pC4q4j-Aw@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] fdt: add support for rng-seed
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 28, 2019 at 5:35 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Jun 12, 2019 at 12:33:00PM +0800, Hsin-Yi Wang wrote:
> > Introducing a chosen node, rng-seed, which is an entropy that can be
> > passed to kernel called very early to increase initial device
> > randomness. Bootloader should provide this entropy and the value is
> > read from /chosen/rng-seed in DT.
>
> Could you please elaborate on this?
>
> * What is this initial entropy used by, and why is this important? I
>   assume that devices which can populate this will have a HW RNG that
>   the kernel will eventually make use of.
There are a few discussions here[0]. We basically want to add more
randomness for stack canary when device just boot and not much device
randomness was added.
[0] https://lore.kernel.org/patchwork/patch/1070974/#1268553

On Thu, May 9, 2019 at 1:00 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> This early added entropy is also going to be used for stack canary. At
> the time it's created there's not be much entropy (before
> boot_init_stack_canary(), there's only add_latent_entropy() and
> command_line).
> On arm64, there is a single canary for all tasks. If RNG is weak or
> the seed can be read, it might be easier to figure out the canary.

With newer compilers[1] there will be a per-task canary on arm64[2],
which will improve this situation, but many architectures lack a
per-task canary, unfortunately. I've also recently rearranged the RNG
initialization[3] which should also help with better entropy mixing.
But each of these are kind of band-aids against not having sufficient
initial entropy, which leaves the canary potentially exposed.

-Kees

[1] https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff;h=359c1bf35e3109d2f3882980b47a5eae46123259
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0a1213fa7432778b71a1c0166bf56660a3aab030
[3] https://git.kernel.org/pub/scm/linux/kernel/git/tytso/random.git/commit/?h=dev&id=d55535232c3dbde9a523a9d10d68670f5fe5dec3
>
> * How much entropy is necessary or sufficient?
64 bytes should be enough. But depends on how much bootloader can provide.
>
> * Why is the DT the right mechanism for this?
EFI based systems can inject randomness in early boot. This is aimed
to support DT based systems to also have this feature.

https://github.com/torvalds/linux/commit/636259880a7e7d3446a707dddebc799da94bdd0b#diff-3ded2fe21b37c6f3e86c2a8418507714

Thanks
