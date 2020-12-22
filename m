Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3CE92E0772
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 09:52:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726232AbgLVIvt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 03:51:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725820AbgLVIvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 03:51:49 -0500
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2917C0613D3
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 00:51:07 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id 143so11253607qke.10
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 00:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jw7pAvMhTMzCdwMwDUYDkty+J1oyK3sGi3/Q3qZzhI4=;
        b=M7rKzFAvnf1eVok6BR2BkWW8L3u6lT17e0MCu4a7zRxzT1SFl2ADqVVldn9Vs1J8ZK
         cVN8iYFnRfq2Hna8rrb/BzeVVqTvA3vltkdkcj7hnu+PcOsS0hpvRhj8hlJZwygFm4m9
         t5Hz9EHUlAUFFiPYn2caTRqRc6VwgN+WAq6OE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jw7pAvMhTMzCdwMwDUYDkty+J1oyK3sGi3/Q3qZzhI4=;
        b=QJff244U+s8SUNqMi1R/p411mHGMbCByOOSwb7lMacTEaeC10mSWKc0qC6orXtxdDE
         GxYk1/teAAmqHbfULpvSdLxly+FTWxo4cTjeu3zB9xM5f9xHta5Nxc3aMB3WkUAqFDr7
         rjLLszqyWMPNBdGZ/1PFqVC2P+Py7VMPS9SEssudq9/ynAm5b1/RRDsBMJiTDbM7CovI
         Fiv0mhC41dGSXVFIr8C/qu3Ez6V7gwJouDCnBontno9n3cIkSF1EmfkOnEB4p4hhD0p0
         iWYnT3qLZSajxinw822lwXFkA5Jjj6sYnTi5ION+Dnk9X9tHVtUfBjuqh2ykzuLRdXNs
         TbJQ==
X-Gm-Message-State: AOAM533zSTiyUYA/a3ESrzhNYOIyxUWUAiFhfdW2i0kVWZhbEKoSUA0z
        I/XBkB3vEI+BDPUulMr6cYkMrnzfk6GfU1mxBGyQJGuenGiTiEw6
X-Google-Smtp-Source: ABdhPJx8RkliIALcQxSbRGxUhy8aMdeHkw9BI0+O7yz/6tnxHqaYrBeFbmioRudR3PD6pX7lsQYQ0xyzp7n61rjUTiQ=
X-Received: by 2002:a37:a1d6:: with SMTP id k205mr21033434qke.384.1608627067021;
 Tue, 22 Dec 2020 00:51:07 -0800 (PST)
MIME-Version: 1.0
References: <20201221113151.94515-1-jagan@amarulasolutions.com>
 <20201221113151.94515-7-jagan@amarulasolutions.com> <20201221140642.GF31176@kozik-lap>
 <CAMty3ZDWoorJ6y2zATAyd10TqbOAcjMdAkdini5tKt1euY0_7Q@mail.gmail.com> <20201221210601.GB2504@kozik-lap>
In-Reply-To: <20201221210601.GB2504@kozik-lap>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 22 Dec 2020 14:20:55 +0530
Message-ID: <CAMty3ZDbSdv9k+SK=tEs-jNNDvGAASt-0zQjo0i3KseTLixSVQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini
 EDIMM2.2 Starter Kit
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Matteo Lisi <matteo.lisi@engicam.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 22, 2020 at 2:36 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Dec 22, 2020 at 01:03:07AM +0530, Jagan Teki wrote:
> > On Mon, Dec 21, 2020 at 7:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Mon, Dec 21, 2020 at 05:01:51PM +0530, Jagan Teki wrote:
> > > > Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
> > > > Evaluation Board.
> > > >
> > > > Genaral features:
> > > > - LCD 7" C.Touch
> > > > - microSD slot
> > > > - Ethernet 1Gb
> > > > - Wifi/BT
> > > > - 2x LVDS Full HD interfaces
> > > > - 3x USB 2.0
> > > > - 1x USB 3.0
> > > > - HDMI Out
> > > > - Mini PCIe
> > > > - MIPI CSI
> > > > - 2x CAN
> > > > - Audio Out
> > > >
> > > > i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.
> > > >
> > > > i.Core MX8M Mini needs to mount on top of this Evaluation board for
> > > > creating complete i.Core MX8M Mini EDIMM2.2 Starter Kit.
> > > >
> > > > PCIe, DSI, CSI nodes will add it into imx8mm-engicam-edimm2.2.dtsi once
> > > > Mainline Linux supported.
> > > >
> > > > Add support for it.
> > > >
> > > > Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > > Changes for v2:
> > > > - updated commit message
> > > > - dropped engicam from filename since it aligned with imx6 engicam
> > > >   dts files naming conventions.
> > > >
> > > >  arch/arm64/boot/dts/freescale/Makefile        |  1 +
> > > >  .../freescale/imx8mm-engicam-edimm2.2.dtsi    |  7 +++++++
> > > >  .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts | 21 +++++++++++++++++++
> > > >  3 files changed, 29 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
> > > >
> > > > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > > > index 8d49a2c74604..43783076f856 100644
> > > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > > @@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
> > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
> > > > new file mode 100644
> > > > index 000000000000..294df07289a2
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
> > > > @@ -0,0 +1,7 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +/*
> > > > + * Copyright (c) 2020 Engicam srl
> > > > + * Copyright (c) 2020 Amarula Solutions(India)
> > > > + */
> > > > +
> > > > +#include "imx8mm-engicam-common.dtsi"
> > >
> > > It seems you ignored my comments from previous email. That's not how we
> > > go with the process.
> > >
> > > Don't create confusing or overcomplicated hierarchy of includes. Don't
> > > create files which do nothing.
> >
> > Idea is to move common nodes in separate dtsi instead of adding
> > redundant nodes into respective areas. let me know if it still
> > confusing.
>
> A file which *only* includes another file does not fulfill this idea of
> moving common nodes to a separate DTSI file. Or if I still miss
> something, please point me, what common nodes are stored in
> imx8mm-engicam-edimm2.2.dtsi?

imx8mm-engicam-edimm2.2.dtsi for EDIMM2.2 Carrier
imx8mm-engicam-ctouch2.dtsi for C.TOUCH2 Carrier
imx8mm-engicam-common.dtsi for common nodes for above 2 carrier boards.

Yes, imx8mm-engicam-edimm2.2.dtsi is empty now but nodes like PCIe,
CSI, DSI will support once the respective drivers are part of Mainline
but those are not supported in C.TOUCH2 carrier board dtsi. There are
some GPIO pins differences between EDIMM2.2 and C.TOUCH2 carriers on
WiFi/BT so those will be part of the respective carrier dtsi.

Hope this would clear.

Jagan.
