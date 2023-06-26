Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AE1A73DAC0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 11:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230164AbjFZJED convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 26 Jun 2023 05:04:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbjFZJDY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 05:03:24 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 95898295B
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 01:59:04 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 356D42F4;
        Mon, 26 Jun 2023 01:50:55 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 948F73F73F;
        Mon, 26 Jun 2023 01:50:09 -0700 (PDT)
Date:   Mon, 26 Jun 2023 09:50:05 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Icenowy Zheng <uwu@icenowy.me>
Cc:     Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, mripard@kernel.org,
        samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/3] arm: dts: sun8i: V3s: Add pinctrl for pwm
Message-ID: <20230626095005.4a95c151@donnerap.cambridge.arm.com>
In-Reply-To: <45cfb4dc93de59a539d48a37b9becffa4d2d6278.camel@icenowy.me>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
        <20230620200022.295674-2-macroalpha82@gmail.com>
        <20230621005000.558b660c@slackpad.lan>
        <45cfb4dc93de59a539d48a37b9becffa4d2d6278.camel@icenowy.me>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 24 Jun 2023 12:57:49 +0800
Icenowy Zheng <uwu@icenowy.me> wrote:

> 在 2023-06-21星期三的 00:50 +0100，Andre Przywara写道：
> > On Tue, 20 Jun 2023 15:00:20 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:
> > 
> > Hi Chris,
> > 
> > thanks for taking care of upstreaming, cute little device.
> >   
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add a default pinctrl for the pwm function.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>  
> > 
> >   
> > > ---
> > >  arch/arm/boot/dts/sun8i-v3s.dtsi | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi
> > > b/arch/arm/boot/dts/sun8i-v3s.dtsi
> > > index b001251644f7..e5977524abe2 100644
> > > --- a/arch/arm/boot/dts/sun8i-v3s.dtsi
> > > +++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
> > > @@ -414,6 +414,11 @@ mmc1_pins: mmc1-pins {
> > >                                 bias-pull-up;
> > >                         };
> > >  
> > > +                       pwm_pins: pwm-pins {
> > > +                               pins = "PB4";
> > > +                               function = "pwm0";
> > > +                       };
> > > +
> > >                         spi0_pins: spi0-pins {
> > >                                 pins = "PC0", "PC1", "PC2", "PC3";
> > >                                 function = "spi0";
> > > @@ -441,6 +446,8 @@ pwm: pwm@1c21400 {
> > >                                      "allwinner,sun7i-a20-pwm";
> > >                         reg = <0x01c21400 0xc>;
> > >                         clocks = <&osc24M>;
> > > +                       pinctrl-0 = <&pwm_pins>;
> > > +                       pinctrl-names = "default";  
> > 
> > How is this supposed to work with multiple channels? There is PWM1 on
> > PB5. If one wants to potentially use that, we would need to add a
> > reference to those pins here as well, and they would all be muxed to
> > PWM upon the PWM controller probing?
> > 
> > So while I see that it's the only output pin for PWM0, this might
> > still
> > need to go into the board .dts, alongside the status = "okay"; line.
> > So
> > each board would specify exactly the pins it needs (PWM0 only, PWM1
> > only, both or none).  
> 
> Maybe we should have two PWM pinctrl nodes, pwm0_pins and pwm1_pins,
> and then enable the controller (with the pinctrl property) in
> individual board DTs.

Yes, that's what I meant: keep the pinctrl node in the .dtsi here, but move
the pinctrl *properties* to each board's .dts.

Cheers,
Andre

> > Otherwise I compared this against the manual and Linux pinctrl
> > driver,
> > it all matches up.
> > 
> > Cheers,
> > Andre
> >   
> > >                         #pwm-cells = <3>;
> > >                         status = "disabled";
> > >                 };  
> >   
> 

