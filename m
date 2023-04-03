Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81ADC6D4C59
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 17:47:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229981AbjDCPrU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 11:47:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbjDCPrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 11:47:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C83730F3
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 08:46:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C73B36204D
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 15:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34B87C433A0
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 15:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680536764;
        bh=Ao6yqX2D24tODjY1sgaRHBZtdeO24CKhFuqaKE+w5KQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=MecFDCNG7dUxxAXlqRz9UITlSqHI6zo5IMzRNSIF7+h8aJYd4zw+iOrMsCMkAa/EA
         MEl3ndj2DBwvR9Nxd1ESh+/zl/HktFH4z0QpuX0rlqhJZ3daVSFHoJzHQa/lL0CQut
         HQzwS4tUQTNoF+hFRNI/q8IuZTBw9eJ798RH4axaWP5h1APiamV6kvWdeCqE2cC2jp
         z8dqY8BsQANu4LGUBTF+mMY9c598zKMmE/dhCuAaqjmpoXaksDEttWplEvBNLsGqFo
         1BPUIlGJaFLNe3LsOXmrOBOyUyRzJ6n4mEI57h8QKUUBxLRSVmznhTybdNt7Fksamh
         k9az+eAIu7NPQ==
Received: by mail-yb1-f178.google.com with SMTP id f188so16852123ybb.3
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 08:46:04 -0700 (PDT)
X-Gm-Message-State: AAQBX9cQ4NjVj62BzongouPGcKzqvOkuArG6ZY+99ztP9zZ5jvgIbpaJ
        EPfz3msZmO4+/KsZSCMn0OKWkxlXLS8I81BxCQ==
X-Google-Smtp-Source: AKy350anwlulsK5LEzTfX0T5sklBZ8cg43osZnSDtvAJDHy8QcOtLFlNaH2qyqZ1P4TkaBnunsOaA4TiJYNost71PAo=
X-Received: by 2002:a25:cf8e:0:b0:b6a:2590:6c63 with SMTP id
 f136-20020a25cf8e000000b00b6a25906c63mr11310396ybg.2.1680536763154; Mon, 03
 Apr 2023 08:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230330165128.3237939-1-james.morse@arm.com> <20230330165128.3237939-2-james.morse@arm.com>
 <CAL_Jsq+kejKAY6+kVQ1xL9z0vR=dxneTHKvufW2MUSy3mzgj-A@mail.gmail.com> <cbbcd0e3-7269-315f-af13-208a3282f17b@arm.com>
In-Reply-To: <cbbcd0e3-7269-315f-af13-208a3282f17b@arm.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 3 Apr 2023 10:45:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKQRNmJkSTio+h6C92dEUoSimoGbmJQ4dMVW_ZAeRku7A@mail.gmail.com>
Message-ID: <CAL_JsqKQRNmJkSTio+h6C92dEUoSimoGbmJQ4dMVW_ZAeRku7A@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
To:     James Morse <james.morse@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-5.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 31, 2023 at 11:59=E2=80=AFAM James Morse <james.morse@arm.com> =
wrote:
>
> Hi Rob,
>
> On 31/03/2023 14:46, Rob Herring wrote:
> > On Thu, Mar 30, 2023 at 11:52=E2=80=AFAM James Morse <james.morse@arm.c=
om> wrote:
> >> The Errata Management SMCCC interface allows firmware to advertise whe=
ther
> >> the OS is affected by an erratum, or if a higher exception level has
> >> mitigated the issue. This allows properties of the device that are not
> >> discoverable by the OS to be described. e.g. some errata depend on the
> >> behaviour of the interconnect, which is not visible to the OS.
> >>
> >> Deployed devices may find it significantly harder to update EL3
> >> firmware than the device tree. Erratum workarounds typically have to
> >> fail safe, and assume the platform is affected putting correctness
> >> above performance.
> >
> > Updating the DT is still harder than updating the kernel. A well
> > designed binding allows for errata fixes without DT changes. That
> > generally means specific compatibles up front rather than adding
> > properties to turn things on/off.
>
> I started with a per-erratum identifier, but there are 8 of them, and its=
 hard to know
> where to put it.

That's still requiring updating the DT to fix things.

> The CPU side is detectable from the MIDR,its an interconnect property
> that we need to know ... but the interconnect isn't described in the DT. =
(but the obvious
> compatible string identifies the PMU)

But the interconnect could be described. In fact, there's a binding
for such things already. Surprisingly, it's called 'interconnects'...
Of course, there are lots of interconnects in SoCs and the one you
need may not be described ('cause it is invisible to s/w (until it's
not)). There's a binding going back to the CCI-400 in fact. So it
isn't really that interconnects aren't described, it's that they
aren't consistently described.

If you can add this errata table to the DT, then why not add
describing the interconnect? Then it will be there for the next thing
we need the interconnect for. I imagine some of the interconnects are
already described if not explicitly in bits and pieces (i.e. clocks or
power domains for the interconnect get tossed into some other node).

> > Do we really want to encourage/endorse/support non-updatable firmware?
> > We've rejected plenty of things with 'fix your firmware'.
>
> A DT property was explicitly requested by Marc Z on the RFC:
> https://lore.kernel.org/linux-arm-kernel/86mt5dxxbc.wl-maz@kernel.org/
>
> The concern is that platforms where the CPU is affected, but the issue is=
 masked by the
> interconnect will never bother with a firmware interface. The kernel can'=
t know this, so
> has to enable the workaround at the cost of performance.

Sure it can. Worst case, the kernel knows the exact SoC and board it
is running on because we have root level compatibles for those. It's
just a question of whether using those would scale or not. Whether
that scales or not depends on both how long the lists are and how
distributed the implementation is (e.g. PCI quirks). More on that
below.

> Adding a DT property to describe the hardware state of the erratum avoids=
 the need for
> separate kernel builds to work around the missing firmware.

DT is not the kernel's runtime configuration mechanism. That assumes a
tight coupling of the DT and kernel. That may work for some cases like
Android with kernel and DT updated together, but for upstream we can't
assume that coupling and must treat it as an ABI (not an issue for
this case).

The kernel command line is a runtime config mechanism for the kernel.
So why not use only that? There's certainly some room for improvement
with handling it. For example, it's not well defined with what happens
with 'bootargs' as you go from a dtb to bootloader to kernel in terms
of overriding/prepending/appending, but that could be addressed.

> >> Instead of adding a device-tree entry for any CPU errata that is
> >> relevant (or not) to the platform, allow the device-tree to describe
> >> firmware's responses for the SMCCC interface. This could be used as
> >> the data source for the firmware interface, or be parsed by the OS if
> >> the firmware interface is missing.
>
> > What's to prevent vendors from only using the DT mechanism and never
> > supporting the SMCCC interface? I'm sure some will love to not have to
> > make a firmware update when they can just fix it in DT.
>
> The firmware interface has to exist for ACPI systems where EL3 can't infl=
uence the ACPI
> tables, which typically get replaced if the part is OEM'd.
>
> Ultimately all the interface is describing is a non-discoverable hardware=
 property
> relevant to an erratum. These are often configurations the silicon manufa=
cturer chooses.
> In this case its the behaviour of the interconnect.
>
> If we didn't have to support ACPI systems, this stuff would only have bee=
n in the DT. With

With...?

I fail to see what ACPI has to do with DT platforms adopting the SMCCC
interface or not.

> > The downside to this extendable binding compared to simple properties
> > is parsing a flat tree is slow and more complicated. So it may be
> > difficult to support if you need this early in boot.
>
> I do need this early in the boot, but I'm not worried about the delay as =
these tables
> should be small.
>
>
> >> Most errata can be detected from CPU id registers. These mechanisms
> >> are only needed for the rare cases that external knowledge is needed.
> >
> > And also have significant performance impact. In the end, how many
> > platforms are there that can't fix these in firmware and need a
> > mainline/distro kernel optimized to avoid the work-around. I suspect
> > the number is small enough it could be a list in the kernel.
>
> At a guess, its all mobile phones produced in the last 2 years that want =
to run a version
> of Android that uses virtualisation. Cortex-A78 is affected, but I don't =
know when the
> first products were shipped.

How many run mainline and run it well enough to even care about the
optimization yet?

Even if we went with the above list, that's 2 years x 4 vendors (QCom,
Mediatek, Samsung, Google) x 1-2 Soc (high and mid tier). Subtract out
any vendors capable of updating their firmware. So a worst case list
of potentially 8-16 SoCs? It shouldn't grow because anything newer is
going to implement the SMCCC interface, right? That's not unmanageable
in my book.

Rob
