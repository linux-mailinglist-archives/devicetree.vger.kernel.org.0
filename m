Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F850302636
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 15:20:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729187AbhAYOTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 09:19:30 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46144 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729349AbhAYOSa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 09:18:30 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10PEGhDk034133;
        Mon, 25 Jan 2021 08:16:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611584203;
        bh=CYWhOZWr5wAHp5EqGRhjm0eM3W1YoDR6+imrUGGupl0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=Av7RqK6aCZHy+4vEUmbk9Pbb5Zevq8MgyMwCFoymq4AMeoqXLm37bB7etJvaBOudf
         W2j//1d+FsTWE7UvjUTG5ocxHXy6ba0me6IL5P/Tq9cdX++MuAI2colzrBnsEWfKJS
         usXDZF+CuZMSARz/p7yNvOxFuBOR5FNs6s4C3brY=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10PEGhcD095343
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 25 Jan 2021 08:16:43 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 Jan 2021 08:16:42 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 Jan 2021 08:16:43 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10PEGg3M072123;
        Mon, 25 Jan 2021 08:16:42 -0600
Date:   Mon, 25 Jan 2021 08:16:42 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tony Lindgren <tony@atomide.com>
CC:     Arnd Bergmann <arnd@kernel.org>, Suman Anna <s-anna@ti.com>,
        Arnd Bergmann <arnd@arndb.de>, Dave Gerlach <d-gerlach@ti.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210125141642.4yybjnklk3qsqjdy@steersman>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
 <20210121183909.pwpboiptqbof2dfu@squint>
 <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
 <CAK8P3a0O5cibBfL96ktSsXWTr09qxi4egFYizGO0oaSf3__Fgg@mail.gmail.com>
 <YArMe2ahPxAjRHsY@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <YArMe2ahPxAjRHsY@atomide.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Arnd, Tony,
On 15:00-20210122, Tony Lindgren wrote:
> * Arnd Bergmann <arnd@kernel.org> [210122 11:24]:
> > On Thu, Jan 21, 2021 at 8:57 PM Suman Anna <s-anna@ti.com> wrote:
> > > On 1/21/21 12:39 PM, Nishanth Menon wrote:
> > > > On 12:13-20210121, Suman Anna wrote:
> > > >>
> > > >> Hmm, this is kinda counter-intuitive. When I see a dts node, I am expecting the
> > > >
> > > > What is counter intutive about a -next branch be tested against
> > > > linux-next tree?
> > >
> > > The -next process is well understood. FWIW, you are not sending your PR against
> > > -next branch, but against primarily a -rc1 or -rc2 baseline.
> > >
> > > As a developer, when I am submitting patches, I am making sure that things are
> > > functional against the baseline you use. For example, when I split functionality
> > > into a driver portions and dts portions, I need to make sure both those
> > > individual pieces boot fine and do not cause regressions, even though for the
> > > final functionality, you need both.
> > > >
> > > >
> > > > Now, if you want to launch a product with my -next branch - go ahead, I
> > > > don't intent it for current kernel version - you are on your own.
> > > >
> > > > If there is a real risk of upstream next-breaking - speakup with an
> > > > real example - All I care about is keeping upstream functional and
> > > > useable.
> > >
> > > This is all moot when your own tree doesn't boot properly. In this case, you are
> > > adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
> > > nodes that were added or you need additional driver patches (which is not how
> > > maintainer-level trees are verified).
> > >
> > > Arnd,
> > > Can you please guide us here as to what is expected in general, given that the
> > > pull-request from Nishanth goes through you, and if there is some pre-existing
> > > norms around this?
> > 
> > There are two very different cases to consider, and I'm not sure which one
> > we have here:
> > 
> > - When submitting any changes to a working platform, each patch on
> >   a branch that gets merged needs to work incrementally, e.g. a device
> >   tree change merged through the soc tree must never stop a platform
> >   from booting without a patch that gets merged through another branch
> >   in the same merge window, or vice versa.
> >   As an extension of this, I would actually appreciate if we never do
> >   incompatible binding changes at all. If a driver patch enables a new
> >   binding for already supported hardware, a second patch changes
> >   the dts file to use the new binding, and a third patch removes the
> >   original binding, this could still be done without regressions over
> >   multiple merge windows, but it breaks the assumption that a new
> >   kernel can boot with an old dtb (or vice versa). This second one
> >   is a softer requirement, and we can make exceptions for particularly
> >   good reasons, but please explain those in the patch description and
> >   discuss with upstream maintainers before submitting patches that do
> >   this.
> > 
> > - For a newly added hardware support, having a runtime dependency
> >   on another branch is not a problem, we do that all the time: Adding
> >   a device node for an existing board (or a new board) and the driver
> >   code in another branch is not a regression because each branch
> >   only has incremental changes that improve hardware support, and
> >   it will work as soon as both are merged.
> >   You raised the point about device bindings, which is best addressed
> >   by having one commit that adds the (reviewed) binding document
> >   first, and then have the driver branch and the dts branch based on
> >   the same commit.
> > 
> > I hope that clarifies the case you are interested in, let me know if I
> > missed something for the specific case at hand.
> 
> Hmm and additionally few more mostly obvious things that have helped
> quite a bit:
> 
> - Each commit in each topic branch should compile and boot so git
>   bisect works
> 
> - Each topic branch should be ideally based on -rc1 to leave out
>   dependencies to other branches
> 
> - Aiming for a working and usable -rc1 is worth the effort in case
>   git bisect is needed for any top branches based on it :) Otherwise
>   you'll be wasting the -rc cycle chasing regressions..


Thank you both for your valuable insight and direction. much
appreciated.

*) for every patch that is integrated - I already insist on
bisectability, no warnings with W=2 , dtbs_check .... Including
putting additional tooling[1] in place for folks to use - which goes
and tests sparse, coccinelle etc.. The team has been pretty deligent
in making sure things are clean.
*) We also insist on testing with linux-next to maintain rc1
functionality
*) I also maintain the minimal boot requirements equivalent to kernelci
(example:[2]) for my -next branch as well.

Yes, this series introduces 0 regression, new nodes are being added
and the thing I missed for this window, which is insisting on getting
immutable tags from subsystem maintainers for dt-bindings patches they
have picked up, will be rectified in the future. For this window,
for the last time, I am going to depend a bit on the later merge of
arm-soc.


Thanks for the clarifications, once again.

[1] https://github.com/nmenon/kernel_patch_verify
[2] https://storage.kernelci.org/stable/linux-4.14.y/v4.14.217/arm/omap2plus_defconfig/gcc-8/lab-cip/baseline-beaglebone-black.txt
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
