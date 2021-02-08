Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46716313FCF
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 21:01:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235436AbhBHUBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 15:01:45 -0500
Received: from mail.kernel.org ([198.145.29.99]:47812 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236546AbhBHUBW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Feb 2021 15:01:22 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A5B664EBF
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 20:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612814436;
        bh=nw5cx9R2dyXB0g7HMXdaZI25yvlYlTnfp4TqOf/KTu0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=skxU6r4hj2UW+Ln8wABqwJOsauM5oo4IK2QjQ8ND0nfSmeVTP9sCNpthCzv+VmcNq
         nA9k4lRt24j+si2kDptPjgZG9mIxRM3dcfHrcf1Y/qOlX6RQAYLnK1u/iSr7HoSmt5
         huSvPRpBKZq8wKhZk1GUffoAV0h3LvMo31w9NHaFa+r514jJl4NDk74bzOKN9ES8XI
         AiBqLmN8mmL9rwmhR8OnGgaKRSTaaKOnlqM6fdGG/HGN8m+YSl1dCockFolsPckNL3
         FKY7NAwxFZYjAvO7CKb6BORxwh95wHpVqdNutMRburqnggm82CwnYRj3nY0QD/KIH0
         bay3KKdx7fdBA==
Received: by mail-ej1-f42.google.com with SMTP id a9so27210072ejr.2
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 12:00:36 -0800 (PST)
X-Gm-Message-State: AOAM5305lrHzgWe5Z3FoIYdw00w3jvzdDrerAQ8ibkslwNb/B1GAQeXk
        /50cGC2ZVgQOISs6cq4hpNSkG/seMtg9EEAPtg==
X-Google-Smtp-Source: ABdhPJwKUf124j8Q1eVEAfFwHApYDJlBFnTiwiC8ZoTuxPtOH1bmWFik979G2hwiVAZMbJnvocgRPGdcn9wmwZHoBYc=
X-Received: by 2002:a17:906:fca1:: with SMTP id qw1mr17484103ejb.130.1612814434775;
 Mon, 08 Feb 2021 12:00:34 -0800 (PST)
MIME-Version: 1.0
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com> <20210205202505.GA3625674@robh.at.kernel.org>
 <aab05bea310fbdbac38990656647dd0fbf3c8323.camel@wdc.com>
In-Reply-To: <aab05bea310fbdbac38990656647dd0fbf3c8323.camel@wdc.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 8 Feb 2021 14:00:21 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLbMbMx3TLf+CPG-MdimHTz2sdzgQdmmuQkLfnsTJQAvQ@mail.gmail.com>
Message-ID: <CAL_JsqLbMbMx3TLf+CPG-MdimHTz2sdzgQdmmuQkLfnsTJQAvQ@mail.gmail.com>
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
To:     Damien Le Moal <Damien.LeMoal@wdc.com>
Cc:     "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        "seanga2@gmail.com" <seanga2@gmail.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 5, 2021 at 6:13 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On Fri, 2021-02-05 at 14:25 -0600, Rob Herring wrote:
> [...]
> > > +                   otp0: nvmem@50420000 {
> > > +                           #address-cells = <1>;
> > > +                           #size-cells = <1>;
> > > +                           compatible = "canaan,k210-otp";
> > > +                           reg = <0x50420000 0x100>,
> > > +                                 <0x88000000 0x20000>;
> > > +                           reg-names = "reg", "mem";
> > > +                           clocks = <&sysclk K210_CLK_ROM>;
> > > +                           resets = <&sysrst K210_RST_ROM>;
> > > +                           read-only;
> > > +                           status = "disabled";
> >
> > Your disabled nodes seem a bit excessive. A device should really only be
> > disabled if it's a board level decision to use or not. I'd assume the
> > OTP is always there and usable.
>
> Please see below.
>
> >
> > > +
> > > +                           /* Bootloader */
> > > +                           firmware@00000 {
> >
> > Drop leading 0s.
> >
> > Is this memory mapped? If so, you are missing 'ranges' in the parent to
> > make it translateable.
> >
> > > +                                   reg = <0x00000 0xC200>;
> > > +                           };
> > > +
> > > +                           /*
> > > +                            * config string as described in RISC-V
> > > +                            * privileged spec 1.9
> > > +                            */
> > > +                           config-1-9@1c000 {
> > > +                                   reg = <0x1C000 0x1000>;
> > > +                           };
> > > +
> > > +                           /*
> > > +                            * Device tree containing only registers,
> > > +                            * interrupts, and cpus
> > > +                            */
> > > +                           fdt@1d000 {
> > > +                                   reg = <0x1D000 0x2000>;
> > > +                           };
> > > +
> > > +                           /* CPU/ROM credits */
> > > +                           credits@1f000 {
> > > +                                   reg = <0x1F000 0x1000>;
> > > +                           };
> > > +                   };
> > > +
> > > +                   dvp0: camera@50430000 {
> > > +                           compatible = "canaan,k210-dvp";
> >
> > No documented. Seems to be several of them.
>
> There are no Linux drivers for these undocumented nodes. That is why I did not
> add any documentation.

Documentation is required when dts files OR Linux drivers use them.

> make dtbs_check does not complain about that as long as
> the nodes are marked disabled.

'disabled' should only turn off required properties missing checks.
Undocumented compatible strings checks are about to get turned on now
that I've made it work without false positives.

> I kept these nodes to have the DTS in sync with
> U-Boot which has them.

That's a worthwhile goal. Doesn't u-boot require documenting bindings?

> Keeping them also creates documentation for the SoC
> since this device tree is more detailed than the SoC specsheet...

It's already 'documented' in u-boot it seems...

Rob
