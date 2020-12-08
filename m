Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E6E42D2AAB
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 13:24:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729408AbgLHMYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 07:24:36 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:61876 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729388AbgLHMYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 07:24:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607430234; x=1610022234;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:Mime-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=h9IQGh+L6cHwYixe7NnYFJLpyGhG/3pDIgJxoOv8i8E=;
        b=O7hYtuF04/C8Iapc0jIz5J03d5UUrjle0mNkT+1IOVdfLPicMEo1TNGAIzh6b1z4
        Vj19kWRhqGLLbCwKQ+2OoW+lddYSTtFl5GVFlSJWLuN6OEw4ZBm6PWl9h1q4VFmw
        0xB5Q0mzHIBKOCNY2QTVZ+mGm4TTMU0GaFJ+7Re51Ks=;
X-AuditID: c39127d2-981ff70000006435-1c-5fcf705aee02
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id C3.81.25653.A507FCF5; Tue,  8 Dec 2020 13:23:54 +0100 (CET)
Received: from llp-tremmet ([172.16.5.100])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120813235432-938279 ;
          Tue, 8 Dec 2020 13:23:54 +0100 
Message-ID: <0fb695df67a33f25bb47cf050ac026be4a021832.camel@phytec.de>
Subject: Re: [PATCH 4/4] arm64: dts: freescale: Add support for
 phyBOARD-Pollux-i.MX8MP
From:   Teresa Remmet <t.remmet@phytec.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Date:   Tue, 08 Dec 2020 13:23:54 +0100
In-Reply-To: <20201208120056.GA26280@kozik-lap>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
         <1607113982-109524-5-git-send-email-t.remmet@phytec.de>
         <20201207120951.GB27266@kozik-lap>
         <fcc57a9546bbd34f1e787d19c86f3ff8d1cadce2.camel@phytec.de>
         <20201207134618.GA33960@kozik-lap>
         <ba6299a58ffd841c045a75d544a04b3d55c65cad.camel@phytec.de>
         <20201208120056.GA26280@kozik-lap>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 13:23:54,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 08.12.2020 13:23:54,
        Serialize complete at 08.12.2020 13:23:54
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLLMWRmVeSWpSXmKPExsWyRoCBSzeq4Hy8QfsORYv3y3oYLeYfOcdq
        8fCqv8X58xvYLTY9vsZq0br3CLvF3+2bWCxebBF34PBYM28No8fOWXfZPTat6mTz2Lyk3qP/
        r4HH501yAWxRXDYpqTmZZalF+nYJXBkfV85nKnhrVrHsYVYDY6dmFyMnh4SAicSdWUcYuxi5
        OIQEtjJK7PqwhAXCOcYoseJOOxtIFa+Am8TcHxOZQGxhgUiJ2TsPgcXZBDQknq44DRYXEdCU
        uP73OytIM7PAX0aJ5YvfsYAkWARUJZ6cagAr4hTQl7i+cAc7xIY3TBK7r69nhbhDR+LD/U9A
        d3AAbROU+LtDGKRGQqCRSWLClvNMEDVCEqcXn2UGsZkF5CW2v50DZWtKtG7/zT6BUXAWQvss
        JFWzkFQtYGRexSiUm5mcnVqUma1XkFFZkpqsl5K6iREYBYcnql/awdg3x+MQIxMH4yFGCQ5m
        JRFeNamz8UK8KYmVValF+fFFpTmpxYcYpTlYlMR5N/CWhAkJpCeWpGanphakFsFkmTg4pRoY
        WT3k5xpPPvfr0Dqx/X9+MhQLq624sUjx3HPFEydarj2P5y+fIjohPmlhzr9VQud5tcQ1NHXt
        norNe7T3wee0h8phzw//fHba3cyfTdDoO6vfAYstz951t7yW3Xl5ws44ZZkX20q4rlZV6clJ
        a1oExW3KPSt7fodWjCD7zlUOXkkyR9q+N68LVGIpzkg01GIuKk4EAP6N8m1wAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

Am Dienstag, den 08.12.2020, 13:00 +0100 schrieb Krzysztof Kozlowski:
> On Tue, Dec 08, 2020 at 12:53:22PM +0100, Teresa Remmet wrote:
> > Hello Krzysztof,
> > 
> > Am Montag, den 07.12.2020, 14:46 +0100 schrieb Krzysztof Kozlowski:
> > > On Mon, Dec 07, 2020 at 02:35:33PM +0100, Teresa Remmet wrote:
> > > > Hello Krzysztof,
> > > > 
> > > > Am Montag, den 07.12.2020, 13:09 +0100 schrieb Krzysztof
> > > > Kozlowski:
> > > > > On Fri, Dec 04, 2020 at 09:33:02PM +0100, Teresa Remmet
> > > > > wrote:
> > > > > > Add initial support for phyBOARD-Pollux-i.MX8MP.
> > > > > > Supported basic features:
> > > > > > 	* eMMC
> > > > > > 	* i2c EEPROM
> > > > > > 	* i2c RTC
> > > > > > 	* i2c LED
> > > > > > 	* PMIC
> > > > > > 	* debug UART
> > > > > > 	* SD card
> > > > > > 	* 1Gbit Ethernet (fec)
> > > > > > 	* watchdog
> > > > > > 
> > > > > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/freescale/Makefile             |   1 +
> > > > > >  .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   |  16
> > > > > > ++
> > > > > >  .../boot/dts/freescale/imx8mp-phyboard-pollux.dtsi | 152
> > > > > > ++++++++++
> > > > > >  .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 319
> > > > > > +++++++++++++++++++++
> > > > > >  4 files changed, 488 insertions(+)
> > > > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > > > phyboard-
> > > > > > pollux-rdk.dts
> > > > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > > > phyboard-
> > > > > > pollux.dtsi
> > > > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-
> > > > > > phycore-
> > > > > > som.dtsi
> > > > > > 
> > > > > > diff --git a/arch/arm64/boot/dts/freescale/Makefile
> > > > > > b/arch/arm64/boot/dts/freescale/Makefile
> > > > > > index acfb8af45912..a43b496678be 100644
> > > > > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > > > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > > > > @@ -37,6 +37,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
> > > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
> > > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
> > > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
> > > > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> > > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
> > > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
> > > > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> > > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > > > > > pollux-
> > > > > > rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-
> > > > > > pollux-
> > > > > > rdk.dts
> > > > > > new file mode 100644
> > > > > > index 000000000000..dd64be32c99d
> > > > > > --- /dev/null
> > > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-
> > > > > > rdk.dts
> > > > > > @@ -0,0 +1,16 @@
> > > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > > +/*
> > > > > > + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> > > > > > + * Author: Teresa Remmet <t.remmet@phytec.de>
> > > > > > + */
> > > > > > +
> > > > > > +/dts-v1/;
> > > > > > +
> > > > > > +#include "imx8mp-phycore-som.dtsi"
> > > > > > +#include "imx8mp-phyboard-pollux.dtsi"
> > > > > > +
> > > > > > +/ {
> > > > > > +	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
> > > > > > +	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
> > > > > > +		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
> > > > > 
> > > > > This is the purpose of this file? Why having a DTS to include
> > > > > DTSI
> > > > > only?
> > > > > Usually there is just DTSI for SOM and DTS fot the board.
> > > > 
> > > > we have different options for the SoMs. Like SPI-NOR flash
> > > > mounted
> > > > or
> > > > not. We usually add this to the SoM include, but disable it. We
> > > > enable
> > > > this in the dts if mounted. This makes it easy to generate
> > > > different
> > > > device trees for different SoM options. So far upstream is not
> > > > every
> > > > feature supported. So we don't do anything in the dts yet. But
> > > > I
> > > > want
> > > > to setup the layout already.
> > > > 
> > > > I hope this makes it clear.
> > > 
> > > You make the upstream DTSes more complicated to make it easier
> > > for
> > > downstream. No, this does not work this way. You can either
> > > upstream
> > > other DTSes so such split will make sense, or this contribution
> > > should
> > > make sense in the upstreamed state.
> > > 
> > > In the second case, by "matching upstreamed state" I mean that
> > > you
> > > organize your DTSes in a way they make sense for upstream, for
> > > example
> > > one DTSI for the SOM and one DTS for the board using it.
> > 
> > Ok, then i will change it now like you suggested and rework it
> > later
> > after more features are available.
> 
> If you submit two DTSes using the phyboard DTSI, it will be enough to
> justify that split.

Yes, but I don't have any features yet where the DTS files would differ
. So this would not make sense now.

> 
> [...]
> 
> > > > > > +	rtcclkout: rv3028-clkout {
> > > > > 
> > > > > Is it really a separate oscillator giving 32 kHz? Or maybe
> > > > > this
> > > > > is
> > > > > actually part of PMIC?
> > > > 
> > > > It is a clock out of the used i2c rtc. Which I actually trying
> > > > to
> > > > disable. As it is not connected. But it is enabled as default.
> > > 
> > > This does not make sense at all:
> > > 1. This is a node without any reference to hardware,
> > > 2. It is being disabled in DTS so it will not have any effect in
> > > kernel
> > >    therefore will not have any impact on real hardware,
> > 
> > I measured it. I could see that the clock was being disabled. But
> > yes
> > it does not feel like correct solution and needs more
> > investigation.
> > I was not able to find the correct property modification.
> > Will remove this for now and find a proper solution afterwards. It
> > does
> > not have impact on the functionality if it is enabled or not.
> > So I will remove the clock part in v2.
> 
> Mhmm... I assume you also measured it without this clock-dance in DTS
> and the clock was on in such case?

Yes, the clock was on. 

> 
> It is pretty confusing... The RV3028 registers a clock provider and
> its
> clock will be disabled by the core because it is not used. Adding a
> clock consumer to RV3028 should not change here anything because
> RV3028
> does not use this clock. Adding a fixed clock without reference to HW
> also should not change here anything.

True. I will need to investigate here more why it is not being disabled
as it is not used.

Teresa

> 
> Anyway, your RV3028 node with a clock phandle would not pass dtschema
> check so it's a hint you are doing something not correct for Linux
> kernel.
> 
> Best regards,
> Krzysztof
> 

