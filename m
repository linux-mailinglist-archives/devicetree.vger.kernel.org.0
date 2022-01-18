Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADD54493118
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 23:59:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350076AbiARW7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 17:59:48 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:33110 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344248AbiARW7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 17:59:48 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A0CC614C3;
        Tue, 18 Jan 2022 23:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1642546786;
        bh=oQxJRzBrf6lHKGTHWKd6MEe0cG2GGX7UJoS3jk8VEhc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jBGceSU6x7NuMMI/g4LA6JGxbDvYj2GzP+jT8T47lK3jQGesMz6t25O4aEAT3ybrA
         OmMa8i2OZ32Zo4xf0xKFia/qVFWXmd/hHSUSr2ICkg+3qefwBXc96OVJpjPbATxhep
         CbbYtw1SK1mxJfiyppJj5ESaNOhA/6oNLUOaIbHo=
Date:   Wed, 19 Jan 2022 00:59:32 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Message-ID: <YedGVE6Ow+VLpaoS@pendragon.ideasonboard.com>
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
 <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
 <YecnebByrBplFEsU@pendragon.ideasonboard.com>
 <41d2ff4a-79eb-5071-3a35-efa8cccec074@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <41d2ff4a-79eb-5071-3a35-efa8cccec074@kleine-koenig.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

On Tue, Jan 18, 2022 at 11:41:19PM +0100, Uwe Kleine-König wrote:
> On 1/18/22 21:47, Laurent Pinchart wrote:
> > On Tue, Jan 18, 2022 at 12:00:50PM -0800, Florian Fainelli wrote:
> >> On 1/18/22 11:45 AM, Jean-Michel Hautbois wrote:
> >>> This is also needed for camera and display support.
> >>> I tested it successfully with imx219 + unicam on mainline.
> >>
> >> Thanks for testing, can you reply with a Tested-by tag so it could be
> >> applied to the commit message when this gets picked up?
> > 
> > Well, this also points out that there's an issue: if the mux is needed
> > for other devices, it shouldn't be in bcm2711-rpi-cm4-io.dts :-) We
> > could move it to bcm2711-rpi.dtsi (so far all bcm2711-based boards use
> > either I/O pins 0+1 or 44+45)
> 
> If I understand correctly it's not used on rpi-4-b, so bcm2711-rpi.dtsi 
> would be wrong.

rpi-4-b muxes I2C0 on pins 0+1 and 44+45. The latter is wired to the
camera connector, and used for the camera sensor. Same thing on rpi-cm4.
rpi-400 has no camera connector, but I believe the display I2C bus is
also on pins 44+45 (at least according to the downstream DT sources,
rpi-400 muxes I2C0 on 0+1 and 44+45 too).

> > , or move it to per-board files.
> 
> It is in an board file now?! So I don't understand your suggestion here.

Sorry, I meant have it in per-board files, not more it there.

> > In the
> > latter case, instead of duplicating the same block everywhere, it could
> > be moved to a .dtsi included in those board files. This is what the
> > downstream kernel does.
> 
> How does it call the dtsi file? I wonder if that is sensible expecting 
> that the devices on the bus are different for different boards?!

Downstream has a bcm283x-rpi-i2c0mux_0_44.dtsi that just contains

&i2c0mux {
	pinctrl-0 = <&i2c0_gpio0>;
	pinctrl-1 = <&i2c0_gpio44>;
};

with i2c0mux defined in bcm283x.dtsi as

	i2c0mux: i2c0mux {
		compatible = "i2c-mux-pinctrl";
		#address-cells = <1>;
		#size-cells = <0>;

		i2c-parent = <&i2c0if>;

		pinctrl-names = "i2c0", "i2c_csi_dsi";

		status = "disabled";

		i2c0: i2c@0 {
			reg = <0>;
			#address-cells = <1>;
			#size-cells = <0>;
		};

		i2c_csi_dsi: i2c@1 {
			reg = <1>;
			#address-cells = <1>;
			#size-cells = <0>;
		};
	};

The following board files #include "bcm283x-rpi-i2c0mux_0_44.dtsi":

- bcm2710-rpi-3-b.dts
- bcm2710-rpi-3-b-plus.dts
- bcm2710-rpi-zero-2-w.dts
- bcm2711-rpi-400.dts
- bcm2711-rpi-4-b.dts
- bcm2711-rpi-4-b.dts.orig
- bcm2711-rpi-cm4.dts

We don't have to replicate the exact same mechanism and use the same
names, but for rpi-4-b and rpi-cm4, to enable camera support (which
we're working on, Jean-Michel has posted a driver for the Unicam CSI-2
receiver to the linux-media mailing list, the ISP will follow), we need
the mux. Given that those two boards have a camera connector, I think it
makes sense to define the mux in a different file than
bcm2711-rpi-cm4-io.dts. The RTC node can stay in bcm2711-rpi-cm4-io.dts.

-- 
Regards,

Laurent Pinchart
