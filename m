Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CA20FAF71B
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 09:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726966AbfIKHnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 03:43:51 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:43659 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbfIKHnv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 03:43:51 -0400
Received: by mail-ed1-f68.google.com with SMTP id c19so19678665edy.10
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 00:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D79DS/qeav08JV9/DBxW2c3IKmyMITRXqQrJr3nPakk=;
        b=Tm5C87tK8/1JwAkxTKJdMwxboef2RfKkO/lSUYPdn1NFyv92BL0yaO+A8oyGOEo9xU
         F1zf09QG6UON6IR9Qzl1/ObCpOITPRX5927iwYCwxFX8TGDuzpN0j5XraZmWVOlpPQYD
         sR9MKXZTjq5dD8kaLPVjnHPz4ek8AVKddlySZgkhgQPkBXfOC22nKEdXEd9TQRqoo6Rh
         q1w0AeChZaVSBcHANjLJm6EkTVo0X5w6643avGLdzYJPPtF1O4jfBydZqW6kkIc6K2Ps
         G77PnRjAwPB9bUaUd77Q+C/nqS3OezQsRE1W7c8NBgrNTcSdIwoqHJ0no5PWXKB7hfXM
         zQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D79DS/qeav08JV9/DBxW2c3IKmyMITRXqQrJr3nPakk=;
        b=duUw8+8bpvP0XZh9byHXWBjhtl2FXZQr1nwLrAzVMT028DG1+wmh8QKLvnpon7HjHP
         grl3Zw5YEhZLwMJ0luPJQU/CVirFWQHWssYRiG6q9Px2pWAb2gf2s1SZ/xkpsXcOVfsw
         GnyA69BdPKd53guWI68BVb6eCdeBQ2rwCtxfPJNpCJpcQNiFrF1L746/mGjwU9RjjAG1
         q+h5XsQlG8cvArQyPgkx99RhHJ6KQl4Xx3JhBW9SW5+Qx+/Fta3s2VUDJRkTnaiDZn8Z
         BOlEWlz4xf8Hu7hYMHJ4b8aCO1Nzf5ZS5OxyY0HAYYWjetpzlUQSo2F/x47ypEI8gtKR
         SLqg==
X-Gm-Message-State: APjAAAWqSLBL37313IXWSjbUTRDIZP+k8hD5Mv7iY0DdA0wROohmOET0
        V40PURejz5PnLAx2GUEBx+QRkhuvkJgFsuPivSzoQXD+
X-Google-Smtp-Source: APXvYqwytA/GzMRsdrExP+MZ4AP86Kg5MJEJdU/M+L3R4YkJhqrEzhOzopxDuEyeAfMjswUwKMMstjzfPG85AyOYtIQ=
X-Received: by 2002:a50:9512:: with SMTP id u18mr34554349eda.182.1568187829595;
 Wed, 11 Sep 2019 00:43:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190908093551.27679-1-marcus@mc.pp.se> <CAEUhbmVmg+AQKW9VoDeLu06jgwk+DcsgJ7A9DoONESV8n=ssBA@mail.gmail.com>
 <yf98sqzeyno.fsf@mc.pp.se> <CAEUhbmW0i-JQh9zBxbM=8GuTQ5dHH2coA+H_fGeDpGipx5egtQ@mail.gmail.com>
 <yf98sqzj585.fsf@mc.pp.se> <CAEUhbmURUFfk6Hg_si-bAKQzDmEt_rJ+jUPy-4HB0=q_hZzUBQ@mail.gmail.com>
 <yf9v9u2j12y.fsf@mc.pp.se> <CAEUhbmXTe2pLpuUT8aOFT9ZytVC0RgDB=wQzHtQvj=tAghL7Ug@mail.gmail.com>
 <yf9a7bdxkee.fsf@mc.pp.se> <CAEUhbmXOcVTF3A6ttTNtvL5wUQrU_4jon0jPkJPcy4_HfKEGAw@mail.gmail.com>
 <yf9ftl487wk.fsf@mc.pp.se> <CAEUhbmWkvW98q6b6DJR+NkW0eo0ZHXXcvPG9knyTe_8AJE9hpw@mail.gmail.com>
 <CAAhSdy1iqctvnQj977Yjrss8MYMN_hYMCuJyhTDkW9rYnt-hAQ@mail.gmail.com>
In-Reply-To: <CAAhSdy1iqctvnQj977Yjrss8MYMN_hYMCuJyhTDkW9rYnt-hAQ@mail.gmail.com>
From:   Bin Meng <bmeng.cn@gmail.com>
Date:   Wed, 11 Sep 2019 15:43:37 +0800
Message-ID: <CAEUhbmWkPou+nbBi4VMz1dRnxFgeWYq3rRWuYwetPsho1NC=SA@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH] clk: sifive: Fix ethernet regression on HiFive Unleashed
To:     Anup Patel <anup@brainfault.org>,
        devicetree <devicetree@vger.kernel.org>
Cc:     Marcus Comstedt <marcus@mc.pp.se>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+devicetree

On Wed, Sep 11, 2019 at 2:25 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Wed, Sep 11, 2019 at 7:28 AM Bin Meng <bmeng.cn@gmail.com> wrote:
> >
> > Hi Marcus,
> >
> > On Tue, Sep 10, 2019 at 11:53 PM Marcus Comstedt <marcus@mc.pp.se> wrote:
> > >
> > >
> > > Hi Bin,
> > >
> > > Bin Meng <bmeng.cn@gmail.com> writes:
> > >
> > > > So 4.14 definitely was an out-of-tree kernel
> > >
> > > Everything before 5.2 was out-of-tree.
> > >
> > >
> > > > No one can guarantee an out-of-tree implementation will be
> > > > keeping compatible after it's accepted in-tree.
> > >
> > > Reviewers/maintainers can guarantee compatibility with existing
> > > hardware and DT by not instisting on breaking changes.
> > >
> > > It's not really about keeping in-tree and out-of-tree compatible with
> > > each other, but about keeping both of them compatible with the actual
> > > hardware and DT of the system the OS is supposed to run on.
> > >
> >
> > Per my understanding kernel reviewers/maintainers want to have a clean
> > implementation from the start. That's why it's being done this way.
> >
> > >
> > > > Reviewers/maintainers
> > > > may have different view from the author on what's the best
> > >
> > > A reviewer/maintainer could for example have the view that a certain
> > > register in a piece of hardware should really be two registers with
> > > the bits divided between them based on some logical partitioning.  And
> > > they might be right.  But the hardware is what it is, and if they
> > > insist that the driver access two different registers the driver will
> > > not work the hardware.  You'll have a nice driver that works on
> > > nothing (at least until the vendor makes a new spin of the hardware
> > > with the two registers).
> >
> > The original hardware vendor's DT may be written in a way that
> > violates the DT specs. Hence I believe it's really hard to keep the
> > comparability for both.
> >
> > For this specific FU540 ethernet, what you did in this patch does not
> > completely bring back the compatibility. Things were changed a lot in
> > the upstream kernel.
> >
> > For example, the U-Boot GEM GXL-MGMT driver was needed to work with SiFive's DT
> > https://lists.denx.de/pipermail/u-boot/2019-May/369577.html
> >
> > But later, it was dropped due to kernel mainline DT
> > reviewers/maintainers thought it was a misuse of clock node and the
> > GXL-MGMT module should be part of the GEM spec.
> > https://lists.denx.de/pipermail/u-boot/2019-June/373306.html
> >
> > >
> > > My opinion is that the DT should be treated the same way.  It is part
> > > of the hardware (sort of the "metadata" for the hardware).  Sure you
> > > can have some idea of how things could be expressed better and add
> > > support for that, but you need to also keep compat with the actual
> > > hardware platform that the driver is there to interface against,
> > > otherwise the driver won't work.
> > >
> >
> > While I agree with you to some extent that, that's now how things are
> > done with current kernel practice.
>
> Sorry for the slow response...
>
> The DT bindings for most of the Linux drivers accepted upstream have
> changed in a backward in-compatible way for SiFive Unleashed. The
> Linux clock driver implementation also changed quite a bit.
>
> Most of the recent U-Boot changes for SiFive Unleashed were to sync-up
> DT bindings followed by U-Boot drivers with SiFive Unleashed drivers
> accepted in Linux. The built-in DTB passed by FSBL to OpenSBI + U-Boot
> is totally out-of-date. Going forward SiFive folks will use upstreamed Linux
> DT bindings for newer platforms so it made sense to update U-Boot drivers.
>
> The root of the problem is delay in freezing DT bindings by SOC vendors.
>
> I think the SOC vendors should get DT bindings reviewed very early before

The question is when we can call that "very early"? Normally SoC
vendors will ship their own software stack (bootloaders, kernels, dtb)
on their evaluation board and provided forked git repos of these
software for their customers, aka SDK. If we expect bringing DT
bindings in a very early phase to fix such compatibility problem, that
means SoC vendors cannot ship their SDK to their customers before
every DT bindings used in their SoC get reviewed and approved. That
sounds unrealistic.

> sending patches to Linux or U-Boot. The Linux kernel is still a central place
> for all DT bindings documentation across architectures.
>
> May be things would be different if DT bindings documentation was
> maintained as separate project ???

I vaguely remember a similar proposal was once discussed in the LKML.
If we manage to go with that direction, I think we should also request
all DTS files to be dual licensed with one BSD-style permissive
license model for other projects to use.

> For now, we can insist SOC vendors to get DT bindings reviewed/froozen
> in LKML before sending U-Boot driver patches. Suggestions ??
>

So U-Boot upstream drivers always work with upstream DT in Linux
kernel. Sounds good to me. But again this does not help with the
out-of-tree U-Boot fork provided by the SoC vendor to their customers
...

Regards,
Bin
