Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8F532D2A2A
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 13:01:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729233AbgLHMBm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 07:01:42 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:37251 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727569AbgLHMBm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 07:01:42 -0500
Received: by mail-wm1-f67.google.com with SMTP id q75so2125628wme.2
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 04:01:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zGP6kpOSIrHV5ySGd1wpuO4BAyfrEWrswPxy2n/nJIk=;
        b=eKqD+eEwuJm+p16HWin5AXERWDB5KeIv3qctKv3Wpjwxura9fYx3ZDugMNXTOp0Pev
         IU49ljQlWvUHFoWRmh5C0puDp6ePRmwuR5ei1k9Sb2Z/QdH1ACuQhp8U+ZufSXCs14dx
         mDn7GjQixNKSeFmr6RQvk7orq+u9Box/2jOD0lG8w7a9dOUXYeCciQucJtWNR67/QExm
         dsrMspx1ELrQSNgvwAxIJDr6U8tnjKCcFOVuMfhWcsa4KcS/Q5xHQEaklAO4GUr04E5x
         LDmkihRqKcZSg3KsJTcQt3pFGEmmTcf5ywuq77I6mJNijMQ04dZ+q0QydPb3hSw4tEi3
         9j/g==
X-Gm-Message-State: AOAM531aWhYb2R5nsQuDqEXmXk+NVtA1EjVhlX7gD6qiBd43p5xh43ri
        DmIOIE9Nstk7ApaKR7sHts55DxmreJKffg==
X-Google-Smtp-Source: ABdhPJw2/5vXw5t27nEr5LTQPnQ7X9OltCHDVNcQ3nkHoMQg210MGNxhdpyqxGoZVe/MAgKIknH1kw==
X-Received: by 2002:a1c:3902:: with SMTP id g2mr3477790wma.117.1607428859416;
        Tue, 08 Dec 2020 04:00:59 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id r13sm19380216wrs.6.2020.12.08.04.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 04:00:58 -0800 (PST)
Date:   Tue, 8 Dec 2020 13:00:56 +0100
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
Message-ID: <20201208120056.GA26280@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
 <1607113982-109524-5-git-send-email-t.remmet@phytec.de>
 <20201207120951.GB27266@kozik-lap>
 <fcc57a9546bbd34f1e787d19c86f3ff8d1cadce2.camel@phytec.de>
 <20201207134618.GA33960@kozik-lap>
 <ba6299a58ffd841c045a75d544a04b3d55c65cad.camel@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ba6299a58ffd841c045a75d544a04b3d55c65cad.camel@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 08, 2020 at 12:53:22PM +0100, Teresa Remmet wrote:
> Hello Krzysztof,
> 
> Am Montag, den 07.12.2020, 14:46 +0100 schrieb Krzysztof Kozlowski:
> > On Mon, Dec 07, 2020 at 02:35:33PM +0100, Teresa Remmet wrote:
> > > Hello Krzysztof,
> > > 
> > > Am Montag, den 07.12.2020, 13:09 +0100 schrieb Krzysztof Kozlowski:
> > > > On Fri, Dec 04, 2020 at 09:33:02PM +0100, Teresa Remmet wrote:
> > > > > Add initial support for phyBOARD-Pollux-i.MX8MP.
> > > > > Supported basic features:
> > > > > 	* eMMC
> > > > > 	* i2c EEPROM
> > > > > 	* i2c RTC
> > > > > 	* i2c LED
> > > > > 	* PMIC
> > > > > 	* debug UART
> > > > > 	* SD card
> > > > > 	* 1Gbit Ethernet (fec)
> > > > > 	* watchdog
> > > > > 
> > > > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > > > ---
> > > > >  arch/arm64/boot/dts/freescale/Makefile             |   1 +
> > > > >  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   |  16 ++
> > > > >  .../boot/dts/freescale/imx8mp-phyboard-pollux.dtsi | 152
> > > > > ++++++++++
> > > > >  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 319
> > > > > +++++++++++++++++++++
> > > > >  4 files changed, 488 insertions(+)
> > > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > > phyboard-
> > > > > pollux-rdk.dts
> > > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > > phyboard-
> > > > > pollux.dtsi
> > > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > > phycore-
> > > > > som.dtsi
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > > > > b/arch/arm64/boot/dts/freescale/Makefile
> > > > > index acfb8af45912..a43b496678be 100644
> > > > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > > > @@ -37,6 +37,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
> > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
> > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
> > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> > > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
> > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
> > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > > > > pollux-
> > > > > rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > > > > rdk.dts
> > > > > new file mode 100644
> > > > > index 000000000000..dd64be32c99d
> > > > > --- /dev/null
> > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > > > > rdk.dts
> > > > > @@ -0,0 +1,16 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > +/*
> > > > > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > > > > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > > > > + */
> > > > > +
> > > > > +/dts-v1/;
> > > > > +
> > > > > +#include "imx8mp-phycore-som.dtsi"
> > > > > +#include "imx8mp-phyboard-pollux.dtsi"
> > > > > +
> > > > > +/ {
> > > > > +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> > > > > +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> > > > > +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> > > > 
> > > > This is the purpose of this file? Why having a DTS to include
> > > > DTSI
> > > > only?
> > > > Usually there is just DTSI for SOM and DTS fot the board.
> > > 
> > > we have different options for the SoMs. Like SPI-NOR flash mounted
> > > or
> > > not. We usually add this to the SoM include, but disable it. We
> > > enable
> > > this in the dts if mounted. This makes it easy to generate
> > > different
> > > device trees for different SoM options. So far upstream is not
> > > every
> > > feature supported. So we don't do anything in the dts yet. But I
> > > want
> > > to setup the layout already.
> > > 
> > > I hope this makes it clear.
> > 
> > You make the upstream DTSes more complicated to make it easier for
> > downstream. No, this does not work this way. You can either upstream
> > other DTSes so such split will make sense, or this contribution
> > should
> > make sense in the upstreamed state.
> > 
> > In the second case, by "matching upstreamed state" I mean that you
> > organize your DTSes in a way they make sense for upstream, for
> > example
> > one DTSI for the SOM and one DTS for the board using it.
> 
> Ok, then i will change it now like you suggested and rework it later
> after more features are available.

If you submit two DTSes using the phyboard DTSI, it will be enough to
justify that split.

[...]

> > > > > +	rtcclkout: rv3028-clkout {
> > > > 
> > > > Is it really a separate oscillator giving 32 kHz? Or maybe this
> > > > is
> > > > actually part of PMIC?
> > > 
> > > It is a clock out of the used i2c rtc. Which I actually trying to
> > > disable. As it is not connected. But it is enabled as default.
> > 
> > This does not make sense at all:
> > 1. This is a node without any reference to hardware,
> > 2. It is being disabled in DTS so it will not have any effect in
> > kernel
> >    therefore will not have any impact on real hardware,
> 
> I measured it. I could see that the clock was being disabled. But yes
> it does not feel like correct solution and needs more investigation.
> I was not able to find the correct property modification.
> Will remove this for now and find a proper solution afterwards. It does
> not have impact on the functionality if it is enabled or not.
> So I will remove the clock part in v2.

Mhmm... I assume you also measured it without this clock-dance in DTS
and the clock was on in such case?

It is pretty confusing... The RV3028 registers a clock provider and its
clock will be disabled by the core because it is not used. Adding a
clock consumer to RV3028 should not change here anything because RV3028
does not use this clock. Adding a fixed clock without reference to HW
also should not change here anything.

Anyway, your RV3028 node with a clock phandle would not pass dtschema
check so it's a hint you are doing something not correct for Linux
kernel.

Best regards,
Krzysztof

