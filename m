Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B526033D81B
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 16:50:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237476AbhCPPte (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 11:49:34 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:22543 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231390AbhCPPtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 11:49:02 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F0HlJ1GwFzpCYQZ
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 18:49:00 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 5.346
X-Spam-Level: *****
X-Spam-Status: No, score=5.346 tagged_above=2 required=6.2
        tests=[FSL_HELO_NON_FQDN_1=0.001, HELO_NO_DOMAIN=3.099,
        RDNS_NONE=1.274, SPF_SOFTFAIL=0.972] autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id JymlHgCpyuil for <devicetree@vger.kernel.org>;
        Tue, 16 Mar 2021 18:48:59 +0300 (MSK)
Received: from NervousEnergy (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTPS id 4F0HlG6QcqzpBSbB;
        Tue, 16 Mar 2021 18:48:58 +0300 (MSK)
Date:   Tue, 16 Mar 2021 18:48:58 +0300
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org\" <linux-arm-kernel@lists.infradead.org>, Andre Przywara <andre.przywara@arm.com>, Icenowy Zheng <icenowy@aosc.io>"@cognitivepilot.com
Subject: Re: [PATCH v1] ARM: dts: sun8i: r40: add dts for Forlinx FETA40i-C
 & OKA40i-C
Message-ID: <20210316184858.77c48315@NervousEnergy>
In-Reply-To: <20210315152904.gqwie3xnmizvid3w@gilmour>
References: <20210311153056.69337f0a@NervousEnergy>
        <20210315152904.gqwie3xnmizvid3w@gilmour>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Maxime,

Thanks for your comments.

On Mon, 15 Mar 2021 16:29:04 +0100
Maxime Ripard <maxime@cerno.tech> wrote:
> Hi,
> 
> You seem to have some issues with your mailer that mangles the mail,
> you should try using git-send-email instead.

Will do.

> There's also a bunch of checkpatch --strict issues you want to get rid
> of.

Thanks for pointing this out.
Besides the style warnings, which I've fixed, there are also warnings pertaining to
documentation. Should I add the compatible strings to
Documentation/devicetree/bindings/, and/or myself to the MAINTAINERS file?
If so, would you suggest that I do so in a separate patch, or as part
of another patch that adds the relevant files? 

> On Thu, Mar 11, 2021 at 03:30:56PM +0300, Ivan Uvarov wrote:
> > Add support for the Forlinx FETA40i-C SoM and OKA40i-C devboard[1]
> > based on it. The DT is split into a .dtsi, which (hopefully)
> > corresponds to the functions of the SoM itself, and a .dts for the
> > devboard.
> > 
> > [1]:https://linux-sunxi.org/Forlinx_OKA40i-C  
> 
> Instead of a URL that might be dead at some point, it would be better
> to have a proper commit log explaining why you did your patch that way

I'm not sure I understand. 

By "that way" do you mean that I should explain why I've split up the
devicetree, or something else?

The linked page is just a collection of information about the device; 
should I describe the SoM and/or devboard in my commit log instead?

> > ...

> > @@ -601,6 +603,14 @@ mmc2_pins: mmc2-pins {
> >  				bias-pull-up;
> >  			};
> >  
> > +			mmc3_pins: mmc3-pins {
> > +				pins = "PI4", "PI5", "PI6",
> > +				       "PI7", "PI8", "PI9";
> > +				function = "mmc3";
> > +				drive-strength = <30>;
> > +				bias-pull-up;
> > +			};
> > +  
> 
> This should be in a separate patch
> 
> >  			/omit-if-no-ref/
> >  			spi0_pc_pins: spi0-pc-pins {
> >  				pins = "PC0", "PC1", "PC2";
> > @@ -636,6 +646,16 @@ uart0_pb_pins: uart0-pb-pins {
> >  				function = "uart0";
> >  			};
> >  
> > +			uart2_pi_pins: uart2-pi-pins {
> > +				pins = "PI18", "PI19";
> > +				function = "uart2";
> > +			};
> > +
> > +			uart2_rts_cts_pi_pins:
> > uart2-rts-cts-pi-pins{
> > +				pins = "PI16", "PI17";
> > +				function = "uart2";
> > +			};
> > +  
> 
> Ditto, and it should have /omit-if-no-ref/

Should the MMC pins be in the same patch as the UART pins?
Also, would it be a good idea to add /omit-if-no-ref/ to the uart3 pins as well while I'm here?

> >  			uart3_pg_pins: uart3-pg-pins {
> >  				pins = "PG6", "PG7";
> >  				function = "uart3";
> > @@ -645,6 +665,21 @@ uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
> >  				pins = "PG8", "PG9";
> >  				function = "uart3";
> >  			};
> > +
> > +			uart4_pg_pins: uart4-pg-pins {
> > +				pins = "PG10", "PG11";
> > +				function = "uart4";
> > +			};
> > +
> > +			uart5_ph_pins: uart5-ph-pins {
> > +				pins = "PH6", "PH7";
> > +				function = "uart5";
> > +			};
> > +
> > +			uart7_pi_pins: uart7-pi-pins {
> > +				pins = "PI20", "PI21";
> > +				function = "uart7";
> > +			};  
> 
> Ditto
> 
> maxime

Since this won't be a monolithic patch anymore, would it make more
sense to make this a three+-patch series:

1. add board+SOM DT without mmc3 or extra uarts; 
2+. add pins to r40.dtsi; 
3. add mmc3&uarts to the devboard DT,

or to make only two(+) patches:

1+. add pins to r40;
2. add board+SOM DT?

--
Regards,
Ivan Uvarov
