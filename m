Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6B4A76CAED
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 12:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233758AbjHBKfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 06:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232400AbjHBKfT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 06:35:19 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC1F2710
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 03:30:31 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5E5DD8DA;
        Wed,  2 Aug 2023 12:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1690972165;
        bh=ww2DZBxULvCPiTAPcM4KmePT3+uYeoC+5azJ/3te4JA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MZJcenhV0PatW2nqnJztn+CAPe8zXvHyl2uQwgjxB0G8q+3uVnG0uJRb/XDVEClJ5
         CG8JwyNh+/XQvrjiAOyYLIPSci/hL/DVg0hSnHTj4GBRdqtl+GoDxZlVhQewSoukPT
         MWBXqo7YOoVzzIvqUjXp5GBuOa+aCL023S/EX+9I=
Date:   Wed, 2 Aug 2023 13:30:34 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <mripard@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Umang Jain <umang.jain@ideasonboard.com>,
        Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v4 0/2] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Message-ID: <20230802103034.GA5269@pendragon.ideasonboard.com>
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
 <CAPY8ntD07rCC5ttudKtbXkDcKFLJb5htRdawWR+S7p914ti4MA@mail.gmail.com>
 <20230801144313.GB25590@pendragon.ideasonboard.com>
 <20230801203308.GA8578@pendragon.ideasonboard.com>
 <CAPY8ntDU6j79w93GknHmx34-o0v6pRL8L4YK9nZ+V70JAbt9Lg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPY8ntDU6j79w93GknHmx34-o0v6pRL8L4YK9nZ+V70JAbt9Lg@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dave,

On Wed, Aug 02, 2023 at 11:20:32AM +0100, Dave Stevenson wrote:
> On Tue, 1 Aug 2023 at 21:33, Laurent Pinchart wrote:
> > On Tue, Aug 01, 2023 at 05:43:15PM +0300, Laurent Pinchart wrote:
> > > On Tue, Aug 01, 2023 at 03:22:17PM +0100, Dave Stevenson wrote:
> > > > On Mon, 31 Jul 2023 at 22:55, Laurent Pinchart wrote:
> > > > >
> > > > > Hello,
> > > > >
> > > > > This series is an attempt to revive support for pinmuxed I2C0 on the
> > > > > Raspberry Pi BCM2711-based board.
> > > > >
> > > > > On BCM2711-based boards, the I2C0 controller can be muxed between pins
> > > > > 0+1 or 44+45. The former is exposed through the 40-pins GPIO connector,
> > > > > and the latter is used for the RTC on the CM4 I/O board, but also routed
> > > > > to the display and camera connectors on the Raspberry Pi 4B board. The
> > > > > other BCM2711-based board, the Raspberry Pi 400, does not expose or
> > > > > connect anything to pins 44+45.
> > > > >
> > > > > A previous version was posted ([1]) a year and a half ago by Uwe. It
> > > > > bundled the pinmuxing and RTC in a single patch, with the mux added to
> > > > > the CM4 I/O board device tree. This version splits this in two, and
> > > > > moves the pinumxing to the bcm2711-rpi.dtsi to also support the
> > > > > Raspberry Pi 4B.
> > > > >
> > > > > The Raspberry Pi downstream kernel has a more complex DT architecture in
> > > > > order to support different I2C0 pinmuxing for other boards. Two files,
> > > > > bcm283x-rpi-i2c0mux_0_28.dtsi and bcm283x-rpi-i2c0mux_0_44.dtsi, define
> > > > > the two I2C0 pinxmuxing options (pins 0+1 and 28+29, or pins 0+1 and
> > > > > 44+45). Each board .dts then includes the appropriate file. I'm hoping
> > > > > to avoid this additional complexity for now, by addressing the I2C0
> > > > > pinmuxing for BCM2711-based boards only. If/when support for I2C0
> > > > > pinmuxing on boards will be needed, we can revisit this topic.
> > > > >
> > > > > Compared to the Raspberry Pi downstream kernel, the two muxed I2C buses
> > > > > are labelled i2c0_0 and i2c0_1 instead of i2c0 and i2c_csi_dsi. This
> > > > > change was made to keep the naming of the I2C controller labels
> > > > > consistent, avoiding renaming of the I2C0 controller's label from i2c0
> > > > > to i2c0if.
> > > > >
> > > > > Dave, are you fine with the differences between this patch series and
> > > > > the downstream kernel, or do you expect them to cause issues ?
> > > >
> > > > I've checked with Phil. There's nothing too untoward that will cause
> > > > us any significant grief.
> > >
> > > Thanks for checking.
> > >
> > > In the meantime, I realized that the CM4S is 2711-based and, according
> > > to the downstream DT, multiplexes I2C0 on pins 28+29, not 44+45 :-(
> > > Umang and Kieran also told me that we want to test camera support on the
> > > Pi 3B. It looks like the only viable approach to support all that will
> > > be to include per-board I2C0 pinmux .dtsi as done in the downstream
> > > kernel. I'll send a v5.
> > >
> > > > Phil has commented that the RTC is an PCF85063AT, so that compatible
> > > > string should be "nxp,pcf85063a" if you actually want to make use of
> > > > the alarm output.
> > > > Then again the driver support for the alarm output appears to want it
> > > > routed to an IRQ rather than as a system reset/wakeup, so it probably
> > > > makes little difference. It llargely depends on how exact you want to
> > > > be in your hardware description.
> > >
> > > I'll update the compatible string, it's an easy change and it's nice to
> > > be accurate.
> >
> > The driver will print a warning if the quartz-load-femtofarads property
> > isn't set in DT (it can be either 7pF or 12.5pF).
> 
> Really? The bindings [1] don't list it as required, and just trying it
> hasn't logged an error.
> The return value from of_property_read_u32 isn't checked at [2], so
> load remains unchanged at 7000 if not present.

My bad, I've misread the code and missed the initialization of the
variable.

> > If I'm not mistaken,
> > the quartz oscillator on the CM4 I/O board is calibrated for a 6pF load
> > capacitance, so 7pF is the closest and best value. Could you confirm
> > that ?
> 
> The relevant hardware person isn't in at present, but schematics for
> the RTC are on page 13 of the cm4io-datasheet [4].
> Crystal is listed as a X32K768S300, and Farnell's copy of the
> datasheet [4] say that has a 6pF load capacitance.

That's what I found too :-) The default value of 7pF seems fine then.

> [1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/rtc/nxp%2Cpcf85063.yaml
> [2] https://github.com/torvalds/linux/blob/master/drivers/rtc/rtc-pcf85063.c#L344
> [3] https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf
> [4] https://www.farnell.com/datasheets/1881558.pdf
> 
> > > > > [1] https://lore.kernel.org/linux-arm-kernel/20211231115109.94626-1-uwe@kleine-koenig.org/
> > > > >
> > > > > Uwe Kleine-König (2):
> > > > >   ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
> > > > >   ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
> > > > >
> > > > >  arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 16 ++++++++++++
> > > > >  arch/arm/boot/dts/bcm2711-rpi.dtsi       | 31 ++++++++++++++++++++++++
> > > > >  2 files changed, 47 insertions(+)

-- 
Regards,

Laurent Pinchart
