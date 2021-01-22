Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E59FC300179
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 12:27:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728005AbhAVLZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 06:25:15 -0500
Received: from mail.kernel.org ([198.145.29.99]:57400 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728031AbhAVLYn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 22 Jan 2021 06:24:43 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01B7F23A54
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 11:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611314643;
        bh=3J0wWtjdWX0hlvoGts9QOuTD/DXkCp3jEun8Gmwd6js=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=FghxDv/FAkF9nItr0h2ziDB6kcI8uQy/XvpDhTC8uwEeyrzxLL6UKcLqxOXbv4czQ
         r2QmGJsEavrUfyAjrZevkolQRpUyYR/jfCCTRaxgX/tvOqkjeyHsk8Ampdtx4aqps8
         JTo97zJKNWv5MqHgNWVPoajr00fcJGLIcHLLdo4oboIBtbbFUNXe9lSsTLa6IapHeS
         kb/Y6ZWuLqT8WdbOJXdqy++XGKEJF2PMSzkHev4qai8ISS/1lZQh9t5mFN9BE/YO6d
         67hc7fgHANtDJFWHRCNBYzlp8zfwUpXRo7+Lx+TKXb02G9yEJth6uz2B/UuYEn2wRn
         qx6R4GSEyVzpA==
Received: by mail-oo1-f48.google.com with SMTP id q6so1311775ooo.8
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 03:24:02 -0800 (PST)
X-Gm-Message-State: AOAM533KFeDYmsRELkLpiOfwHU4svXJtdWDk1foPkPb6weNbYMEhgUqC
        d/3VMDE6C2LuL6Fm/P1sLiPQwm5wsU8v2JkfelU=
X-Google-Smtp-Source: ABdhPJxovFO4IsOlNFY29q/0HB86v0k+lR+NKH0wmMm7XLwLssV/9BbwcFhgz6mxMbSpl0aLH5aXje3NQnl5CQxzaFk=
X-Received: by 2002:a4a:bb01:: with SMTP id f1mr3414383oop.66.1611314642145;
 Fri, 22 Jan 2021 03:24:02 -0800 (PST)
MIME-Version: 1.0
References: <20210120202532.9011-1-d-gerlach@ti.com> <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com> <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com> <20210121183909.pwpboiptqbof2dfu@squint>
 <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
In-Reply-To: <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
From:   Arnd Bergmann <arnd@kernel.org>
Date:   Fri, 22 Jan 2021 12:23:46 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0O5cibBfL96ktSsXWTr09qxi4egFYizGO0oaSf3__Fgg@mail.gmail.com>
Message-ID: <CAK8P3a0O5cibBfL96ktSsXWTr09qxi4egFYizGO0oaSf3__Fgg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
To:     Suman Anna <s-anna@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>,
        Tony Lindgren <tony@atomide.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 21, 2021 at 8:57 PM Suman Anna <s-anna@ti.com> wrote:
> On 1/21/21 12:39 PM, Nishanth Menon wrote:
> > On 12:13-20210121, Suman Anna wrote:
> >>
> >> Hmm, this is kinda counter-intuitive. When I see a dts node, I am expecting the
> >
> > What is counter intutive about a -next branch be tested against
> > linux-next tree?
>
> The -next process is well understood. FWIW, you are not sending your PR against
> -next branch, but against primarily a -rc1 or -rc2 baseline.
>
> As a developer, when I am submitting patches, I am making sure that things are
> functional against the baseline you use. For example, when I split functionality
> into a driver portions and dts portions, I need to make sure both those
> individual pieces boot fine and do not cause regressions, even though for the
> final functionality, you need both.
> >
> >
> > Now, if you want to launch a product with my -next branch - go ahead, I
> > don't intent it for current kernel version - you are on your own.
> >
> > If there is a real risk of upstream next-breaking - speakup with an
> > real example - All I care about is keeping upstream functional and
> > useable.
>
> This is all moot when your own tree doesn't boot properly. In this case, you are
> adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
> nodes that were added or you need additional driver patches (which is not how
> maintainer-level trees are verified).
>
> Arnd,
> Can you please guide us here as to what is expected in general, given that the
> pull-request from Nishanth goes through you, and if there is some pre-existing
> norms around this?

There are two very different cases to consider, and I'm not sure which one
we have here:

- When submitting any changes to a working platform, each patch on
  a branch that gets merged needs to work incrementally, e.g. a device
  tree change merged through the soc tree must never stop a platform
  from booting without a patch that gets merged through another branch
  in the same merge window, or vice versa.
  As an extension of this, I would actually appreciate if we never do
  incompatible binding changes at all. If a driver patch enables a new
  binding for already supported hardware, a second patch changes
  the dts file to use the new binding, and a third patch removes the
  original binding, this could still be done without regressions over
  multiple merge windows, but it breaks the assumption that a new
  kernel can boot with an old dtb (or vice versa). This second one
  is a softer requirement, and we can make exceptions for particularly
  good reasons, but please explain those in the patch description and
  discuss with upstream maintainers before submitting patches that do
  this.

- For a newly added hardware support, having a runtime dependency
  on another branch is not a problem, we do that all the time: Adding
  a device node for an existing board (or a new board) and the driver
  code in another branch is not a regression because each branch
  only has incremental changes that improve hardware support, and
  it will work as soon as both are merged.
  You raised the point about device bindings, which is best addressed
  by having one commit that adds the (reviewed) binding document
  first, and then have the driver branch and the dts branch based on
  the same commit.

I hope that clarifies the case you are interested in, let me know if I
missed something for the specific case at hand.

       Arnd
