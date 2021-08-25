Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 631603F7950
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 17:43:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241337AbhHYPoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 11:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240461AbhHYPoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 11:44:12 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9CC8C061757
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 08:43:26 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id q17so15735160edv.2
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 08:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dQNhqLu/gzqmvg4sL6NaepRtaEYeAjgr70D1mgM1FIA=;
        b=LhJZozLRfz9EqYcZ1ZVfyxd9Qs3yu8XPLkAN/KrUyWzwXMqYULYrtSfBHqL0NS+mYD
         dOUhJC5oXCPOCNwTwTwgTPXBdVwctEf0uVegMspW1mSCtyEvlYepyThbR8IUABq85wHe
         xGPcc4d5Wk1dD0kkooPLelRXJGO5FUMmpHDrFtTJTrBbXukxw2T5ZXpQiVRfMnQv53yo
         Nu0VrzJz+3kkyPZ/2d4bssL3cPFEsfFeg1vVtqGXE1kFbxJlzE9vhFH2IlHncBAHHyj1
         hsdJpG1tRNhTQ5vNm9yenxGTwa+/DQEc+NLW8HN8X8j3n2rXRcPWdaYzrzurgMHlVnTV
         yTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dQNhqLu/gzqmvg4sL6NaepRtaEYeAjgr70D1mgM1FIA=;
        b=Z6R5dDig0q6zdZjF0/PW+/OPs+F36zytC/akBzwea5UJc8ES/1s1Q/7aoWUgpHf6Aa
         f7klj85B65QNpDI9DvNImzXcH6bBdZy5mxZb6LlaGpkI/eulWb+4G+a/+fOkBtmBxLPQ
         QNE8V+3S7zlrysHoC89ee82YUSN0u8KMaTvtohOjl+2AAbMA4YR/tqBiEgjqTDbgV+uj
         KyBK9EUYtRDZgpKzy6qv3nmR/4Y6NS4wwDIANFRyxAkGlsiptdNv5J8mrdys9hEeTcDC
         Q+nE/GMEyzLQUh3dKs4AkkuZqXnKdDX7awwVenX3WU1v+05hA6bmpcv2xtbhZzIkwGxZ
         FpMg==
X-Gm-Message-State: AOAM533bXXojpOo1YVaIsfw2N8p1ZO0+bZZXobMJM+7rZw2SBGZAAj+R
        xNVGsqMgDIjN53nyIxEckw0=
X-Google-Smtp-Source: ABdhPJy6cvUQPeHEEzpex0B0VAVEXLFPXZqqmXnlJZK/bDyeQfI+exlIAHppIf/O9bx/aBBot0+ZHw==
X-Received: by 2002:aa7:c1d0:: with SMTP id d16mr10721631edp.110.1629906205296;
        Wed, 25 Aug 2021 08:43:25 -0700 (PDT)
Received: from skbuf ([82.78.148.104])
        by smtp.gmail.com with ESMTPSA id ks20sm12984ejb.125.2021.08.25.08.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 08:43:24 -0700 (PDT)
Date:   Wed, 25 Aug 2021 18:43:23 +0300
From:   Vladimir Oltean <olteanv@gmail.com>
To:     Tom Rini <trini@konsulko.com>
Cc:     Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Michael Walle <michael@walle.cc>,
        Priyanka Jain <priyanka.jain@nxp.com>, u-boot@lists.denx.de,
        heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
Message-ID: <20210825154323.reksf2nyncech6so@skbuf>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat>
 <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat>
 <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210825152408.GW858@bill-the-cat>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 25, 2021 at 11:24:08AM -0400, Tom Rini wrote:
> On Wed, Aug 25, 2021 at 06:12:20PM +0300, Vladimir Oltean wrote:
> > On Wed, Aug 25, 2021 at 10:26:10AM -0400, Tom Rini wrote:
> > > On Wed, Aug 25, 2021 at 05:18:16PM +0300, Vladimir Oltean wrote:
> > > > On Wed, Aug 25, 2021 at 10:00:45AM -0400, Tom Rini wrote:
> > > > > On Wed, Aug 25, 2021 at 03:58:10PM +0200, Michael Walle wrote:
> > > > >
> > > > > > Hi,
> > > > > >
> > > > > > I noticed that there is a fallback to the u-boot device tree for linux
> > > > > > (esp. EFI boot) if no other device tree was found, see [1]. It seems this
> > > > > > is working fine for imx devices, for example, where you can just boot a
> > > > > > stock installer iso via EFI. It will just work and it is quite a nice
> > > > > > feature as a fallback.
> > > > > >
> > > > > > Now for the layerscape architecture, the ls1028a in my case, things are
> > > > > > more difficult because the bindings differ between u-boot and linux - one
> > > > > > which comes to mind is DSA and ethernet.
> > > > > >
> > > > > > Which begs the general question, is it encouraged to have both bindings
> > > > > > diverge? To me it seems, that most bindings in u-boot are ad-hoc and there
> > > > > > is no real review or alignment but just added as needed, which is ok if
> > > > > > they are local to u-boot. But since they are nowadays passed to linux
> > > > > > (by default!) I'm not so sure anymore.
> > > > > >
> > > > > > OTOH The whole structure around a .dts{,i} and -u-boot.dtsi looks like
> > > > > > they should (could?) be shared between linux and u-boot.
> > > > > >
> > > > > > -michael
> > > > > >
> > > > > > [1]
> > > > > > https://elixir.bootlin.com/u-boot/v2021.10-rc2/source/common/board_r.c#L471
> > > > >
> > > > > The U-Boot device tree is supposed to be able to be passed on to Linux
> > > > > and Just Work.  The bindings are not supposed to be different between
> > > > > the two (except for when we take the binding while it's being hashed out
> > > > > upstream BUT THEN RESYNCED).
> > > >
> > > > You might need to spell that out a bit clearer.
> > > >
> > > > You are saying that both U-Boot and Linux are allowed to have their own
> > > > custom properties (like 'u-boot,dm-spl' for U-Boot, and 'managed = "in-band-status"'
> > > > for Linux), as long as the device tree files themselves are in sync, and
> > > > the subset of the device tree blob understood by Linux (i.e. the U-Boot
> > > > blob sans the U-Boot specifics) is compatible with the Linux DT blob?
> > >
> > > I don't know what about the Linux example makes it Linux specific.  But
> > > yes, 'u-boot,dm-spl' is clearly in our namespace and should be ignored
> > > by Linux.  The whole reason we have the -u-boot.dtsi automatic drop-in
> > > logic (as much as it can be used is that device trees are device trees
> >         ^
> >         I don't think this parenthesis ever closes...
>
> Ah, whoops.  Should have been "(as much as it can be used)" because it
> does get #included instead in some cases, for reasons.
>
> >
> > > and describe the hardware and developers don't need to write a device
> > > tree for Linux and a device tree for U-Boot and a device tree for
> > > FreeBSD and ...  So yes, you're supposed to use the device tree for a
> >                 ^
> >                 so I never get the answer to "the whole reason is...".
> >
> > > platform and it works here and there and every where.
> >
> > The fact that only Linux uses it makes it Linux specific.
> >
> > > > To expand even further on that, it means we should put 'managed = "in-band-status"'
> > > > in U-Boot, which is a Linux phylink device tree property, even if U-Boot
> > > > does not use phylink?
> > >
> > > We should be able to drop in the device trees from Linux and use them.
> > > Custodians should be re-syncing them periodically.  Some are, even.
> >
> > Are you ready to take up device tree bindings for PTP timers, PCIe root
> > complex event collectors, cascaded interrupt controllers, things which
> > U-Boot will never ever need to support?
> >
> > At least in Linux there is a policy to not add device tree nodes that do
> > not have drivers. Is the same policy not true for U-Boot? At least your
> > ./scripts/checkpatch.pl does have the same "check for DT compatible
> > documentation" section as Linux. You might consider removing it if you
> > want people to not strip the DTs they submit to U-Boot.
> >
> > And why do we even maintain the device tree bindings in Linux at all?
> > It seems rather counter-productive for both ends to do that, if it is
> > expected that the kernel works with DT blobs provided by third parties too,
> > and if all third parties need to resync with it (there are other boot
> > loaders too beyond U-Boot, and other kernels beyond Linux). Somehow it
> > doesn't feel right for the reference to be the Linux kernel. Maybe this
> > is something that needs to be brought up with higher-level Linux maintainers.
> >
> > I have no problem at all with structuring the device tree in the same
> > way in U-Boot as in Linux, as long as that proves to not be a foolish
> > endeavor.
>
> DT is ABI is hardware description and OS-agnostic has been the rule for
> 10+ years.  If that's no longer the case, can someone please tell me?

So if Michael's board with DT provided by U-Boot doesn't work for some
stupid reason like "Linux expects the pcie node to be under /soc", or
"Linux wants all PCIe BARs of a RCIEP ECAM to be spelled out in the
'ranges' property, because it's too dumb to detect them itself", or
something like that, I've got no argument against that, let's go ahead
and resync U-Boot with Linux.

But "DT is ABI is hardware description" is a pretty vague truism that
does not actually help here.

Will you accept device trees with devices for which a driver will never
probe in U-Boot, and will you remove the checkpatch warnings about those,
to not discourage people from submitting them prior to the actual public
review?

If a U-Boot driver will be written for a device that does not have a
driver yet in Linux, then the Linux driver will be written but with
DT bindings incompatible with what was established in U-Boot, will you
wake up the U-Boot developer from the grave and ask them to resync the
driver to follow Linux? Or will you accept drivers at all for hardware
that is not supported by Linux?

I also think there are various degrees of what it means "to work" with a
device tree provided directly by U-Boot. Distros like Arch Linux ARM
have a package for device tree blobs, and it is expected that these are
updated by the distro, and U-Boot just loads them. As Michael points out,
the DT provided by U-Boot is just a fallback. The OS should boot to
prompt and have a network connection to set itself up properly again.
But we need to draw a harder line on what we _actually_ desire to work
beyond that.
