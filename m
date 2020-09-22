Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 677002748E5
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 21:14:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbgIVTOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 15:14:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:57134 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726573AbgIVTOz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Sep 2020 15:14:55 -0400
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 86756238D7
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 19:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1600802094;
        bh=K+FrKaAh3M2RF05RFR8JYisPOdNOgL1KtkDgvvTgNw4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=WoGpDfo+b71YQehweqKVvRVhUqpOX8wGCIr1D7KBVtECMtntprYcahScgc1FY6zMi
         67mN/XlmZiVY+yXTfx/NOnHITC5QaSjE6mFKCZqLaOWy2G3yorxWv/wBBwOuLoizNF
         93xXmtSBtCpMWcOoe67BfbQXFoTh6vL2Nx5q5APc=
Received: by mail-ot1-f45.google.com with SMTP id g96so16647775otb.12
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 12:14:54 -0700 (PDT)
X-Gm-Message-State: AOAM533aTPMcXXbYO8Iid6S8Gw62gCuSxJIGKLJGSLaMO3i2UdtmJQUu
        iP8TQpos8zrwzLevjF+rfz9QjU9g3Yw7z9AYWw==
X-Google-Smtp-Source: ABdhPJyVX7r0tEN2yw5zRjAYHq+1PnOgkxXKpqO5O9Azdg5etPRi/tvoNzgrgjii6rc0qrT18YB9L0+LKo50aovAoJg=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr3834273otp.129.1600802093800;
 Tue, 22 Sep 2020 12:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1599343429.git.chunkeey@gmail.com> <47109d80c7bd481c7747c949e8a3ecd498d9c039.1599343429.git.chunkeey@gmail.com>
 <20200915010543.GB612463@bogus> <7bf866fd-6499-68e4-9825-5c3e2042ef65@gmail.com>
In-Reply-To: <7bf866fd-6499-68e4-9825-5c3e2042ef65@gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 22 Sep 2020 13:14:42 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+x0jFh-2jVt9pVek6a2=UCv0z0sBJpuh5irxeQG+tbUg@mail.gmail.com>
Message-ID: <CAL_Jsq+x0jFh-2jVt9pVek6a2=UCv0z0sBJpuh5irxeQG+tbUg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] powerpc: apm82181: create shared dtsi for APM bluestone
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        devicetree@vger.kernel.org, Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Arnd Bergmann <arnd@arndb.de>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 19, 2020 at 2:23 PM Christian Lamparter <chunkeey@gmail.com> wrote:
>
> On 2020-09-15 03:05, Rob Herring wrote:
> > On Sun, Sep 06, 2020 at 12:06:12AM +0200, Christian Lamparter wrote:
> >> This patch adds an DTSI-File that can be used by various device-tree
> >> files for APM82181-based devices.
> >>
> >> Some of the nodes (like UART, PCIE, SATA) are used by the uboot and
> >> need to stick with the naming-conventions of the old times'.
> >> I've added comments whenever this was the case.
> >>
> >> Signed-off-by: Chris Blake <chrisrblake93@gmail.com>
> >> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> >> ---
> >> rfc v1 -> v2:
> >>      - removed PKA (this CryptoPU will need driver)
> >>      - stick with compatibles, nodes, ... from either
> >>        Bluestone (APM82181) or Canyonlands (PPC460EX).
> >>      - add labels for NAND and NOR to help with access.
> >> v2 -> v3:
> >>      - nodename of pciex@d.... was changed to pcie@d..
> >>        due to upstream patch.
> >>      - use simple-bus on the ebc, opb and plb nodes
> >> ---
> >>   arch/powerpc/boot/dts/apm82181.dtsi | 466 ++++++++++++++++++++++++++++
> >>   1 file changed, 466 insertions(+)
> >>   create mode 100644 arch/powerpc/boot/dts/apm82181.dtsi
> >>
> >> diff --git a/arch/powerpc/boot/dts/apm82181.dtsi b/arch/powerpc/boot/dts/apm82181.dtsi
> >> new file mode 100644
> >> index 000000000000..60283430978d
> >> --- /dev/null
> >> +++ b/arch/powerpc/boot/dts/apm82181.dtsi
> >> @@ -0,0 +1,466 @@
> >> +// SPDX-License-Identifier: GPL-2.0-or-later
> >> +/*
> >> + * Device Tree template include for various APM82181 boards.
> >> + *
> >> + * The SoC is an evolution of the PPC460EX predecessor.
> >> + * This is why dt-nodes from the canyonlands EBC, OPB, USB,
> >> + * DMA, SATA, EMAC, ... ended up in here.
> >> + *
> >> + * Copyright (c) 2010, Applied Micro Circuits Corporation
> >> + * Author: Tirumala R Marri <tmarri@apm.com>,
> >> + *     Christian Lamparter <chunkeey@gmail.com>,
> >> + *     Chris Blake <chrisrblake93@gmail.com>
> >> + */
> >> +
> >> +#include <dt-bindings/dma/dw-dmac.h>
> >> +#include <dt-bindings/input/input.h>
> >> +#include <dt-bindings/interrupt-controller/irq.h>
> >> +#include <dt-bindings/gpio/gpio.h>
> >> +
> >> +/ {
> >> +    #address-cells = <2>;
> >> +    #size-cells = <1>;
> >> +    dcr-parent = <&{/cpus/cpu@0}>;
> >> +
> >> +    aliases {
> >> +            ethernet0 = &EMAC0; /* needed for BSP u-boot */
> >> +    };
> >> +
> >> +    cpus {
> >> +            #address-cells = <1>;
> >> +            #size-cells = <0>;
> >> +
> >> +            CPU0: cpu@0 {
> >> +                    device_type = "cpu";
> >> +                    model = "PowerPC,apm82181";
> >
> > This doesn't match the existing bluestone dts file.
> >
> > Please separate any restructuring from changes.
>
>
> "I see" (I'm including your comment of the dt-binding as well).
>
> I'm getting the vibe that I better should not touch that bluestone.dts.

I don't know about that.

> An honestly, looking at the series and patches that the APM-engineers
> posted back in the day, I can see why this well is so poisoned... and
> stuff like SATA/AHBDMA/USB/GPIO/CPM/... was missing.
>
> As for the devices. In the spirit of Arnd Bergmann's post of
> <https://lkml.org/lkml/2020/3/30/195>
>
> |It would be nice to move over the the bluestone .dts to the apm82181.dtsi file
> |when that gets added, if only to ensure they use the same description for each
> |node, but that shouldn't stop the addition of the new file if that is needed for
> |distros to make use of a popular device.
> |I see a couple of additional files in openwrt.
>
> I mean I don't have the bluestone dev board, just the consumer devices.

This stuff is old enough, I'd guess no one cares about a dev board.
But we should figure that out and document that with any changes.

> Would it be possible to support those? I can start from a "skeleton" apm82181.dtsi
> This would just include CPU, Memory (SD-RAM+L2C+OCM), UIC (Interrupt-Controller),
> the PLB+OBP+EBC Busses and UART. Just enough to make a board "boot from ram".

This skeleton would be chunks moved over or duplicated? I don't think
we want 2 of the same thing.

The order I would go is split into an apm82181.dtsi with 0 changes to
the built dtb(s). Then make changes/additions you need. As far as
changes to existing bindings, it's only an ABI if someone notices.


Rob
