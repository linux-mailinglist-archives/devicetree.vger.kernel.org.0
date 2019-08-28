Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90895A057E
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 17:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbfH1PCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 11:02:06 -0400
Received: from mail.nic.cz ([217.31.204.67]:32950 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726439AbfH1PCG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 11:02:06 -0400
Received: from dellmb.labs.office.nic.cz (unknown [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
        by mail.nic.cz (Postfix) with ESMTPSA id 740FB140942;
        Wed, 28 Aug 2019 17:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
        t=1567004524; bh=7qK3CM9j0VplYHVUBUyu1PXM53I6r5LhfXrYrt9impM=;
        h=Date:From:To;
        b=OgMZe2a+sbA80rFfcf3eprHoVta4ceF3yUwcyV0ap9D3dbsWeIE4YswtwIaxRM7iD
         RAvVC/7mC+JxgNYfMLoAm8bY5PEmh+jPCf+roZbg4iSsQLLNZZVEpKArXIHyl8kYhq
         KgSb99DET2NBcmv4PV4HXyb1ICaYf+ZS7aDB8YTU=
Date:   Wed, 28 Aug 2019 17:02:04 +0200
From:   Marek =?ISO-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt64 3/3] arm64: dts: marvell: add DTS for Turris
 Mox
Message-ID: <20190828170204.15340299@dellmb.labs.office.nic.cz>
In-Reply-To: <20190828121909.GB32178@lunn.ch>
References: <20190827151644.12532-1-marek.behun@nic.cz>
        <20190827151644.12532-4-marek.behun@nic.cz>
        <8736hlziv3.fsf@FE-laptop>
        <20190828121909.GB32178@lunn.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
        shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 28 Aug 2019 14:19:09 +0200
Andrew Lunn <andrew@lunn.ch> wrote:

> > > +	leds {
> > > +		compatible = "gpio-leds";
> > > +		red {
> > > +			gpios = <&gpiosb 21 GPIO_ACTIVE_LOW>;
> > > +			linux,default-trigger = "default-on";
> > > +		};  
> 
> I think there would normally be a label here, so the LED has a
> name. There is a convention to follow, which is in the documentation.

I shall rename it to "mox:red:activity" according to convetion.

> > > +	};
> > > +
> > > +	gpio-keys {
> > > +		compatible = "gpio-keys";
> > > +
> > > +		reset {
> > > +			label = "reset";
> > > +			linux,code = <BTN_MISC>;  
> 
> I'm pretty sure there is a linux,code for reset.

KEY_RESTART

> 
> > > +			gpios = <&gpiosb 20 GPIO_ACTIVE_LOW>;
> > > +			debounce-interval = <60>;
> > > +		};
> > > +	};  
> 
> > > +
> > > +	sfp: sfp {
> > > +		compatible = "sff,sfp+";
> > > +		i2c-bus = <&i2c0>;  
> 
> The standard for SFPs sets the maximum bus speed is 100Khz. I'm sure
> some can do 400Khz, but if you want to support all SFPs, you should
> use the lower speed. I don't see anywhere in this file where you set
> the maximum speed. Maybe the bus defaults to 100K so you don't need
> anything?

Ill add it to i2c0

> > > +
> > > +&i2c0 {
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&i2c1_pins>;  
> 
> The node is called i2c0, but here you have i2c1_pins?

That is how this is defined in armada-37xx.dtsi. First i2c has
phandle pointer called i2c0, second i2c1. But the pinctrl drivers uses
i2c1 and i2c2. All device trees need to be changed for this. This can
be done later in a separate commit for all device trees using
armada-37xx.dtsi

> > > +	status = "okay";
> > > +
> > > +	rtc@6f {
> > > +		compatible = "microchip,mcp7940x";
> > > +		reg = <0x6f>;
> > > +	};
> > > +};
> > > +
> > > +&pcie_reset_pins {
> > > +	function = "gpio";
> > > +};  
> 
> Should there be something to indicate which GPIO?

No. The thing here is that the function here should remain "pcie"
ideally. When that pin is configured in pcie mode, modifying specific
pcie register should control the pin. But for some reason on our SOC it
does not. I suspect it does not work for Miquel Raynal either, since he
sent patches for aardvark that use reset-gpio as well (see
https://lkml.org/lkml/2018/12/12/242 ).
So we configure it in gpio mode and than in the pcie node we have
  reset-gpios = <&gpiosb 3 GPIO_ACTIVE_LOW>;

> > +		ports {  
> 
> > > +			switch0port10: port@a {
> > > +				reg = <0xa>;
> > > +				label = "dsa";
> > > +				phy-mode = "2500base-x";
> > > +				managed = "in-band-status";
> > > +				link = <&switch1port9
> > > &switch2port9>;  
> 
> Does u-boot also modify this, if switch2 does not exist? I don't know
> if it actually matters, but if the switch does not exist, but the
> routing entry exists, this switch might still send it frames and use
> up some of your bandwidth?

That port has status = "disabled" by default. U-Boot enables that node
if second switch is present. U-Boot removes all disabled nodes before
boot. Even if it did not, kernel ignores disabled nodes here.

Marek
