Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 438B532C039
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237419AbhCCSiY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:38:24 -0500
Received: from mail.cognitivepilot.com ([91.218.251.140]:31302 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244996AbhCCPN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 10:13:27 -0500
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4DrHXV3FgnzltRYd
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 18:11:54 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 5.447
X-Spam-Level: *****
X-Spam-Status: No, score=5.447 tagged_above=2 required=6.2
        tests=[FSL_HELO_NON_FQDN_1=0.001, HELO_NO_DOMAIN=3.199,
        RDNS_NONE=1.274, SPF_SOFTFAIL=0.972, URIBL_BLOCKED=0.001]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id S20hkBVqvHwx for <devicetree@vger.kernel.org>;
        Wed,  3 Mar 2021 18:11:53 +0300 (MSK)
Received: from NervousEnergy (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTPS id 4DrHXT1xYmzltRYW;
        Wed,  3 Mar 2021 18:11:53 +0300 (MSK)
Date:   Wed, 3 Mar 2021 18:11:43 +0300
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [draft2 PATCH] ARM: dts: sun8i: r40: add devicetree for
 FETA40i-C/OKA40i-C
Message-ID: <20210303181143.5b7f0c3f@NervousEnergy>
In-Reply-To: <20210303130834.401cc50c@slackpad.fritz.box>
References: <c4c13d63-e319-48b5-17e6-26d9967aa66f@cognitivepilot.com>
        <20210303130834.401cc50c@slackpad.fritz.box>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 3 Mar 2021 13:08:34 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

> On Tue, 2 Mar 2021 13:54:15 +0300
> Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:
> 
> Hi Ivan,
> 
> many thanks for spending the time in piecing this together and caring
> about upstreaming!
> 

Many more thanks to you for helping me out with the process. I wouldn't
have gotten anywhere near this far without your help.

> 
> Should be a TAB here.
> 
> And I don't know if this is just my client, but someone mangled equal
> signs into "=3D" everywhere :-(
> I am trying to ignore this for now ...
> Can you force pure text email in Thunderbird? Or use git send-email?
> 

I was using Thunderbird's plain text mode when composing this; looks
like it imposes its own modifications anyway. I've switched to
Claws now, hopefully it'll handle the next iteration more
gracefully.


> > +&reg_dldo1 {
> > +	regulator-always-on;
> > +	regulator-min-microvolt =3D <3300000>;
> > +	regulator-max-microvolt =3D <3300000>;
> > +	regulator-name =3D "vcc-wifi-io";
> > +};
> > +
> > +&reg_dldo4 {
> > +	regulator-always-on;  
> 
> Does this really need to be always on? If it's just for SATA, I'd
> expect this to be enabled by the driver when needed? As you correctly
> do in the ahci node below.
I'm not sure, to be honest. I haven't tested without it. I should
probably try to.

> > +	regulator-min-microvolt =3D <2500000>;
> > +	regulator-max-microvolt =3D <2500000>;
> > +	regulator-name =3D "vdd2v5-sata";  
> 
> Does this end prematurely here?

It does. Looks like I deleted the last line of the file somehow while
creating the patch. 


> > +
> > +&mmc0 {
> > +	vmmc-supply =3D <&reg_dcdc1>;
> > +	vqmmc-supply =3D <&reg_dcdc1>;
> > +	bus-width =3D <4>;
> > +	cd-gpios =3D <&pio 8 11 GPIO_ACTIVE_LOW>; // PI11
> > +	status =3D "okay";
> > +};
> > +
> > +&mmc1 {  
> 
> So this is the SDIO connector on the board, right? Which is just a set
> of header pins? 
Yes, that's it.

> Not sure we should have it in here, then.
OK.
 
> What about MMC3, which is apparently connected to a microSD slot (TF
> card in the schematic)?

I never needed it, so never added it. Probably should.

> 
> > +	regulator-min-microvolt =3D <3300000>;
> > +	regulator-max-microvolt =3D <3300000>;
> > +	regulator-name =3D "vcc-wifi";
> > +};
> > +
> > +&reg_dldo3 { // possibly unneeded  
> 
> If it's unneeded, you can drop it. If it turns out be needed later on,
> we can always add it. Did the board work without it?
> Did you try Wifi? We should not add untested features.

WiFi does work without any hiccups on my board with this DTS. I haven't
tested with the regulator disabled.

> > +	// regulator-always-on;
> > +	regulator-min-microvolt =3D <3300000>;
> > +	regulator-max-microvolt =3D <3300000>;
> > +	regulator-name =3D "vcc-wifi-2";
> > +};
> > +
> > +&reg_eldo2 {
> > +	regulator-always-on;  
> 
> This shouldn't be always on. I guess this AXP pin is connected to the
> VDD-SATA pin on the SoC, so it just drives the integrated SATA PHY.
> Which probably means that this node belong into the SoM .dtsi, as the
> connection is on the SoM. You just reference it from the ahci node
> here.
> 
> > +	regulator-min-microvolt =3D <1200000>;
> > +	regulator-max-microvolt =3D <1200000>;
> > +	regulator-name =3D "vdd1v2-sata";
> > +};
> > +
> > +&reg_eldo3 {
> > +	regulator-always-on;  
> 
> Again, why always on? Do you know where this is connected to?
> If this is VCC_PE on the SoC, then I wonder if this should be moved to
> the SoM .dtsi, with a range between 1.8V and 3.3V, since those are
> valid input voltages for the VCC_PE pin. And then here you overwrite
> this with 2.8V, as this is apparently used for the CSI connector on
> the board, which seems to work on 2.8V.
> But I am not sure if this is too much, and just having this node here
> is sufficient.

I'll look into both of those.

> > +	regulator-min-microvolt =3D <2800000>;
> > +	regulator-max-microvolt =3D <2800000>;
> > +	regulator-name =3D "vcc-pe";
> > +};
> > +
> > +&tcon_tv0 {
> > +	status =3D "okay";
> > +};
> > +
> > +&uart0 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&uart0_pb_pins>;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart3 {  
> 
> Please add uart3 to the aliases section then.

Sure. 

I think I'll post a new version of the patch tomorrow, which should fix
formatting and address the issues you've raised that can be fixed
immediately without much further testing. It will also include the
other uarts that are available on the devboard (2,4 and 7).


Thank you for your assistance once more, you've been tremendously
helpful. 


