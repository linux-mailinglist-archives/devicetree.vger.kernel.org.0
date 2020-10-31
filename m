Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35B8B2A1802
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 14:56:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727498AbgJaN4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 09:56:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727460AbgJaN4X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Oct 2020 09:56:23 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6D8FC0617A6
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 06:56:23 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id c11so9002414iln.9
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 06:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/LN9xNGIprn5EVjtx8y2uJe/ugryWLBw3tWbyNok+DI=;
        b=p1Kh3rcxKUvxwemFaGYJ1AgKy0V5e+ezzxLhsxjeFuDzIVR37+duG5m+pNpb3sb3SS
         ELIzGH2tjUOrHgeixjO2t0SYwctTU2dSIP4tBVb1AmH+pchfO9QDPeb371BfeZBn4GuJ
         XAIGFUWRS9S3qxlJaaQF+aT2Slxxr3GWbIIOfN2ZYWqSL9L2i4xtUbu24d/sU2Q8n3Ml
         M81cdkKKr50RMZfuaLOaZi7etuUwwjplznrzvTSl5TbDLph1T4SpZWWvqE3WimZZUUBr
         iAmK0cca/xtfNBhVGAausEDPzAaiTdxqC5w+YurWV8HtLAge0qcNAU0zIZljes4Mll1L
         zo1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/LN9xNGIprn5EVjtx8y2uJe/ugryWLBw3tWbyNok+DI=;
        b=DsS7NYycwg6KehK0walNtkHenpqP7bmBG10TPuQL/9bjtwWhclFj7N3uSzNudTSFZ8
         pxSSNlonB2cJuoAO34TQKy4zt7O5p+6Qj/D5aWpjOOYOrqw8Sr3eQRrmwhPsOhbPZfIj
         4/fX6WZ0JA43Fcv8GPh5DVGbzaIx6uNeGaFZVgKEowZEQhBHo2XaBNZsNaEkiL1CdJx5
         K5SxTyXLG03h5bj4XYDwO6qUExlr4OVC8A21RJj7tcTBovA4zylVmR8swTvp6/3jDbTI
         9CiaH5WwO86weFjqLSqhruYi/6CgJcEB5SUQPYHCUlbptMpgtOTkZp1hk3PgNQRXvvES
         o1ng==
X-Gm-Message-State: AOAM531jneqbVMHfaz5GTa4y/eTh0uAGG1qyuZQm035f81SsA9pmbeBd
        38a3vywk8VrzBaBBSn18AnRwMtzQcdg8gbI3fgY=
X-Google-Smtp-Source: ABdhPJwuCp4K7zW4+brTQzxa1fobbIzLAcN3bsFcV4qbne14fjcwfNGKjGvtjGnx+zloHNDkXguqEkEUzUA74U5nvUY=
X-Received: by 2002:a92:290b:: with SMTP id l11mr5508291ilg.46.1604152582852;
 Sat, 31 Oct 2020 06:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
 <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
 <AM0PR04MB4915BC0D047EBD63D4E4366587090@AM0PR04MB4915.eurprd04.prod.outlook.com>
 <18c98a86aaac86a5742d6f8c4c671ae522751dda.camel@pengutronix.de>
 <DB6PR0402MB27604614CB067AB6594221ED88050@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <4985eb0d018d488d93e427db27be9418057d9440.camel@pengutronix.de> <DB6PR0402MB276078487A13C2904FA16EA688170@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB276078487A13C2904FA16EA688170@DB6PR0402MB2760.eurprd04.prod.outlook.com>
From:   Adam Ford <aford173@gmail.com>
Date:   Sat, 31 Oct 2020 08:56:11 -0500
Message-ID: <CAHCN7x+JoR0_1eOik7mF4pVDvTv8wvH-d18DA3j9c+zQvhujjg@mail.gmail.com>
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Peng Fan <peng.fan@nxp.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 28, 2020 at 8:51 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Lucas,
>
> > Subject: Re: [PATCH 00/11] i.MX8MM power domain support
> >
> > Hi Peng,
> >
> > On Mi, 2020-10-14 at 01:23 +0000, Peng Fan wrote:
> > [...]
> > > > > > > 3. either 8MM, 8MN, or 8MP, the power domain design is
> > > > > > > different, I am not
> > > > > > sure if it is the good to add hundreds line of code in GPCv2
> > > > > > each time
> > > > > > >   a new SOC is added.
> > > > > >
> > > > > > I don't buy into this argument. We have lots of drivers in the
> > > > > > Linux kernel that require some changes for new SoC generations,
> > > > > > that's what Linux drivers are for. The complexity of the
> > > > > > hardware doesn't disappear just because you push some of the
> > > > > > driver bits into TF-A, you just handle the complexity at a
> > > > > > different palce and IMHO that the wrong place. The power domains
> > > > > > have complex interactions with other drivers in the Linux
> > > > > > system, so debugging and deplyong fixes is much easier when the
> > > > > > power domain handling is fully done by a kernel
> > > > driver.
> > > > > Actually, due to the security requirement from other system
> > > > > solution provider, for example, Microsoft Azure Sphere, it has
> > > > > strict requirement for power domain to be controlled by secure
> > > > > subsystem(either
> > > > TF-A, TEE or dedicated secure domain controller).
> > > > > Same requirement for reset control, and system critical clock control.
> > > >
> > > > Yes, I'm aware of those requirements, but to satisfy those you need
> > > > a full implementation of all those parts in the secure subsystem.
> > > > Doing it just for the power domains adds complexity for no gain, as
> > > > you still won't be able to meet all the requirements and frankly I
> > > > don't think this is a realistic goal to achieve with the current i.MX8M
> > family of SoCs.
> > >
> > > At least we are moving to that direction.
> >
> > To me it seems like the current way (custom TF-A interface and
> > implementation) is one step in the right direction, but two steps backwards in
> > terms of complexity.
> >
> > > > Meeting those requirements needs a fully system approach where the
> > > > secure subsystem parts are made sufficiently independent from the
> > > > non- secure parts on a hardware level, which I don't see on the
> > > > i.MX8M SoC and hardware design guide.
> > >
> > > CSU could restrict the access permission.
> >
> > While this is true, my argument is much broader and not only focused on
> > on-SoC peripherals. For example some of the power domains need different
> > voltages for specific performance states, which means you need to
> > communicate with a external PMIC or other voltage regulator, which in turn
> > means you need to set aside the necessary i2c bus and/or GPIO banks
> > required for this communication at system design time, so it isn't shared
> > between TF-A and the rich OS. I don't see this in any of the i.MX8M designs.
> >
> > > > > For NXP i.MX8M family, it is ok to implement in linux kernel, just
> > > > > a tradeoff to find out a place to hide the complexity ^_^.
> > > > >
> > > > > BTW, for virtualization support, it is better to put the power
> > > > > domain in a central place to simplify the VM implementation.
> > > >
> > > > Same as above. If you can make all the relevant bits (clock, reset,
> > > > power-domain, regulator) available via a virtualization friendly
> > > > API, then I would see a point in adding complexity for this
> > > > abstraction. As long as this added abstraction only solves a very
> > > > tiny bit of the overall picture, I just don't see the point in the added
> > complexity and (from a Linux PoV) obfuscation.
> > >
> > > Could we use SCMI for power domain, system critical clocks, smc
> > > watchdog and etc?
> >
> > If you could demonstrate a working solution with all those pieces hidden
> > behind a standard SCMI interface, this would make for a much more
> > compelling story supporting the secure subsystem argument.
> >
> > > Or we support two approaches, one is let Linux control everything, the
> > > other is using SCMI.
> > >
> > > Thoughts?
> >
> > I wouldn't be opposed to such a solution. If you can put all this behind a
> > standard SCMI interface, I guess we wouldn't need two different SoC specific
> > drivers for the same purpose, so we could easily have a Linux full-control
> > solution (i.e. this patchset) coexist with a SCMI based implementation,
> > possibly with just a slightly different base SoC DT with all the power domains,
> > clocks and other system level control stuff behind SCMI.
> >
> > What I'm strongly opposed to is having a custom TF-A interface and all the
> > added complexity for little to no gain in actual system security.
>
> Understand. There are truly the SoC design might not fit well to protect
> all the stuff.
>
> It is good that you did this patchset. Vote for you to add more support
> on i.MX.
>
> Your patchset not conflict with SCMI, as you said, this is true.
>
> Please continue your effort.

Despite ongoing efforts to get the displaymix (and probably vpumix)
operational, it would be nice to have operational USB which needs two
of the power domains.  Could we apply the initial framework and only
the DT nodes for the functional power domains (hsiomix and pgc_otg1) .

While it's not a perfect solution, I think incremental improvements
are better than going stale while we wait for the perfect solution.
Having them pulled into a staging branch also helps coordinate
efforts.

adam
>
> Thanks,
> Peng.
>
> >
> > Regards,
> > Lucas
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
