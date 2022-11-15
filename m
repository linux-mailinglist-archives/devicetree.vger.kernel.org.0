Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30109629DCD
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 16:41:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbiKOPlR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 10:41:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231538AbiKOPlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 10:41:11 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2B1AC2E9C2
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:40:56 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id D788380E0;
        Tue, 15 Nov 2022 15:30:55 +0000 (UTC)
Date:   Tue, 15 Nov 2022 17:40:54 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>,
        Georgi Vlaev <g-vlaev@ti.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: k3-am62: Add general purpose
 timers for am62
Message-ID: <Y3OzBslhKLd7xrk5@atomide.com>
References: <20221107163533.48777-1-tony@atomide.com>
 <20221107163533.48777-4-tony@atomide.com>
 <20221115144604.qjtor4wsetqmxnlh@hatching>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221115144604.qjtor4wsetqmxnlh@hatching>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Nishanth Menon <nm@ti.com> [221115 14:36]:
> On 18:35-20221107, Tony Lindgren wrote:
> > ---
> >  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 97 ++++++++++++++++++++++++
> >  arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi  | 45 +++++++++++
> >  2 files changed, 142 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> > --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> > @@ -192,6 +192,103 @@ main_pmx0: pinctrl@f4000 {
> 	[...]
> > +
> > +	main_timer7: timer@2470000 {
> > +		compatible = "ti,am654-timer";
> > +		reg = <0x00 0x2470000 0x00 0x400>;
> > +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> > +		clocks = <&k3_clks 43 2>;
> > +		clock-names = "fck";
> > +		assigned-clocks = <&k3_clks 43 2>;
> > +		assigned-clock-parents = <&k3_clks 43 3>;
> > +		power-domains = <&k3_pds 43 TI_SCI_PD_EXCLUSIVE>;
> > +		ti,timer-pwm;
> > +	};
> > +
> > +
> ^^ Looks like an extra EoL crept in here.

Oops, will send out an updated set with that fixed and without
the last patch.

Regards,

Tony
