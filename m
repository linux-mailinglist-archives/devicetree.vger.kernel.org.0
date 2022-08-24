Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86EAA59F825
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 12:47:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236160AbiHXKqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 06:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236437AbiHXKq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 06:46:26 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8C2C4832E4
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 03:45:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 727FE80CF;
        Wed, 24 Aug 2022 10:38:19 +0000 (UTC)
Date:   Wed, 24 Aug 2022 13:45:27 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am65: Add general purpose timers
 for am65
Message-ID: <YwYBR0b03KO5rOfk@atomide.com>
References: <20220407104725.41755-1-tony@atomide.com>
 <20220407104725.41755-2-tony@atomide.com>
 <20220706232157.thvbsr6emvyy6i5o@resend>
 <YvpDRLLp7rVkMDAu@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YvpDRLLp7rVkMDAu@atomide.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Tony Lindgren <tony@atomide.com> [220815 16:03]:
> Hi,
> 
> * Nishanth Menon <nm@ti.com> [220706 23:16]:
> > On 13:47-20220407, Tony Lindgren wrote:
> > > diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> > > --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> > > +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> > > @@ -271,6 +271,114 @@ main_spi4: spi@2140000 {
> > >  		#size-cells = <0>;
> > >  	};
> > >  
> > > +	main_timer0: timer@2400000 {
> > > +		compatible = "ti,am6-timer";
> > > +		reg = <0x00 0x2400000 0x00 0x400>;
> > > +		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
> > > +		clocks = <&k3_clks 23 12>;
> > > +		clock-names = "fck";
> > > +		ti,timer-pwm;
> > > +	};
> > 
> > Tony,
> > Lets hold this back one more window.. ti,am6-timer should come
> > in the next rc1, but I still dont see this yet in next-20220706, So, i am
> > going to have to skip this window at least.
> 
> I'm seeing the clock being too fast although debugfs reports the timer
> source clock at 32k. Not quite sure what is wrong, maybe the clock index
> should be 1 instead of 12 here. Best to wait with the dts patches until
> the clock issue has bee sorted out.

FYI the issue was caused by a wrong clock configuration. To use the 32k
source as the default clock for main_timer0:

clocks = <&k3_clks 23 0>;
clock-names = "fck";
assigned-clocks = <&k3_clks 23 0>;
assigned-clock-parents = <&k3_clks 23 12>;

Regards,

Tony
