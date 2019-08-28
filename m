Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0855A0177
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 14:19:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726293AbfH1MTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 08:19:14 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:37318 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726300AbfH1MTN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 08:19:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=+tj0AyWEv4Z+dQyySoP99xYWBRRCmJztMoD2W7dYFOw=; b=zz/FqLdwlqfq6r8LESd3Ih1z29
        CtITZfb+dsHF2g8vQrIfAGCDDAAN0yMdma6IZ2UUGvjP2Va+5BuYs5Ex74NTg363LITEB7KDaQGBp
        RC7eiBbn5uGl6VJ/9Sy2ezV3QdFbkJI7mWDRFZ2Gp2pt0HpMN4Trr1qpv8R5FGfPvBU4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
        (envelope-from <andrew@lunn.ch>)
        id 1i2wur-0002UY-Sp; Wed, 28 Aug 2019 14:19:09 +0200
Date:   Wed, 28 Aug 2019 14:19:09 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
        arm@kernel.org, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt64 3/3] arm64: dts: marvell: add DTS for Turris
 Mox
Message-ID: <20190828121909.GB32178@lunn.ch>
References: <20190827151644.12532-1-marek.behun@nic.cz>
 <20190827151644.12532-4-marek.behun@nic.cz>
 <8736hlziv3.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8736hlziv3.fsf@FE-laptop>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > +	leds {
> > +		compatible = "gpio-leds";
> > +		red {
> > +			gpios = <&gpiosb 21 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "default-on";
> > +		};

I think there would normally be a label here, so the LED has a
name. There is a convention to follow, which is in the documentation.

> > +	};
> > +
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +
> > +		reset {
> > +			label = "reset";
> > +			linux,code = <BTN_MISC>;

I'm pretty sure there is a linux,code for reset.

> > +			gpios = <&gpiosb 20 GPIO_ACTIVE_LOW>;
> > +			debounce-interval = <60>;
> > +		};
> > +	};

> > +
> > +	sfp: sfp {
> > +		compatible = "sff,sfp+";
> > +		i2c-bus = <&i2c0>;

The standard for SFPs sets the maximum bus speed is 100Khz. I'm sure
some can do 400Khz, but if you want to support all SFPs, you should
use the lower speed. I don't see anywhere in this file where you set
the maximum speed. Maybe the bus defaults to 100K so you don't need
anything?

> > +		los-gpio = <&moxtet_sfp 0 GPIO_ACTIVE_HIGH>;
> > +		tx-fault-gpio = <&moxtet_sfp 1 GPIO_ACTIVE_HIGH>;
> > +		mod-def0-gpio = <&moxtet_sfp 2 GPIO_ACTIVE_LOW>;
> > +		tx-disable-gpio = <&moxtet_sfp 4 GPIO_ACTIVE_HIGH>;
> > +		rate-select0-gpio = <&moxtet_sfp 5 GPIO_ACTIVE_HIGH>;
> > +
> > +		/* enabled by U-Boot if SFP module is present */
> > +		status = "disabled";
> > +	};
> > +};
> > +
> > +&i2c0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&i2c1_pins>;

The node is called i2c0, but here you have i2c1_pins?

> > +	status = "okay";
> > +
> > +	rtc@6f {
> > +		compatible = "microchip,mcp7940x";
> > +		reg = <0x6f>;
> > +	};
> > +};
> > +
> > +&pcie_reset_pins {
> > +	function = "gpio";
> > +};

Should there be something to indicate which GPIO?

> > +&mdio {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&smi_pins>;
> > +	status = "okay";
> > +
> > +	phy1: ethernet-phy@1 {
> > +		reg = <1>;
> > +	};
> > +
> > +	/* switch nodes are enabled by U-Boot if modules are present */
> > +	switch0@10 {
> > +		compatible = "marvell,mv88e6190";
> > +		reg = <0x10 0>;
> > +		dsa,member = <0 0>;
> > +		interrupt-parent = <&moxtet>;
> > +		interrupts = <MOXTET_IRQ_PERIDOT(0)>;
> > +		status = "disabled";
> > +
> > +		mdio {

> > +		ports {

> > +			switch0port10: port@a {
> > +				reg = <0xa>;
> > +				label = "dsa";
> > +				phy-mode = "2500base-x";
> > +				managed = "in-band-status";
> > +				link = <&switch1port9 &switch2port9>;

Does u-boot also modify this, if switch2 does not exist? I don't know
if it actually matters, but if the switch does not exist, but the
routing entry exists, this switch might still send it frames and use
up some of your bandwidth?

   Andrew
