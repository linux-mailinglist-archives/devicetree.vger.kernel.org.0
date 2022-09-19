Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 666595BCABD
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbiISL3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:29:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230346AbiISL2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:28:41 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6D866220C0
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:28:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 40B738050;
        Mon, 19 Sep 2022 11:20:37 +0000 (UTC)
Date:   Mon, 19 Sep 2022 14:28:38 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am62: Add general purpose timers
 for am62
Message-ID: <YyhSZugsrBS28ufb@atomide.com>
References: <20220914074224.44786-1-tony@atomide.com>
 <5ac6eddb-d77c-113b-d4eb-9b04108e073c@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ac6eddb-d77c-113b-d4eb-9b04108e073c@ti.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Vignesh Raghavendra <vigneshr@ti.com> [220917 06:54]:
> On 14/09/22 1:12 pm, Tony Lindgren wrote:
> > @@ -186,6 +186,103 @@ main_pmx0: pinctrl@f4000 {
> >  		pinctrl-single,function-mask = <0xffffffff>;
> >  	};
> >  
> > +	main_timer0: timer@2400000 {
> > +		compatible = "ti,am654-timer";
> > +		reg = <0x00 0x2400000 0x00 0x400>;
> > +		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
> > +		clocks = <&k3_clks 36 2>;
> > +		clock-names = "fck";
> > +		assigned-clocks = <&k3_clks 36 2>;
> > +		assigned-clock-parents = <&k3_clks 36 3>;
> > +		power-domains = <&k3_pds 36 TI_SCI_PD_EXCLUSIVE>;
> 
> I end up with
> 
> make dtbs_check
> 
> +/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4800000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> +/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4810000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> +/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4820000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> +/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4830000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Looks like schema does not describe power-domains :(

Thanks for catching it, I've sent a patch for the binding for this at [0]
below.

Regards,

Tony

[0] https://lore.kernel.org/linux-devicetree/20220919112357.64997-1-tony@atomide.com/T/#u
