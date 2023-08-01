Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1DD76BEEF
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 23:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbjHAVFB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 17:05:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbjHAVFA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 17:05:00 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D916F12B
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 14:04:58 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id C6B8F8D;
        Tue,  1 Aug 2023 23:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1690923834;
        bh=GCyqxzdxlfTG19N37VCSuLtmZ4uuNPL0pnSnjwteoBs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dyiuBR92QL1Tuu8WN5JuTk5l9s8vvRiJ0Fke37IXvYfZJypQ65q1cpSItN/IvUNfZ
         x0MeHEcCxRbhIoMz1ZnqJOcfAfd7TliL0G6fRxynoDcly9wT83UKlIWJ5EGMcRvnDT
         TgNfhzadDCCcDPoRTlQMYnU2MCNlWWrq34g7+VAA=
Date:   Wed, 2 Aug 2023 00:05:02 +0300
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
Message-ID: <20230801210502.GB8578@pendragon.ideasonboard.com>
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
 <CAPY8ntD07rCC5ttudKtbXkDcKFLJb5htRdawWR+S7p914ti4MA@mail.gmail.com>
 <20230801144313.GB25590@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230801144313.GB25590@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 01, 2023 at 05:43:15PM +0300, Laurent Pinchart wrote:
> On Tue, Aug 01, 2023 at 03:22:17PM +0100, Dave Stevenson wrote:
> > On Mon, 31 Jul 2023 at 22:55, Laurent Pinchart wrote:
> > >
> > > Hello,
> > >
> > > This series is an attempt to revive support for pinmuxed I2C0 on the
> > > Raspberry Pi BCM2711-based board.
> > >
> > > On BCM2711-based boards, the I2C0 controller can be muxed between pins
> > > 0+1 or 44+45. The former is exposed through the 40-pins GPIO connector,
> > > and the latter is used for the RTC on the CM4 I/O board, but also routed
> > > to the display and camera connectors on the Raspberry Pi 4B board. The
> > > other BCM2711-based board, the Raspberry Pi 400, does not expose or
> > > connect anything to pins 44+45.
> > >
> > > A previous version was posted ([1]) a year and a half ago by Uwe. It
> > > bundled the pinmuxing and RTC in a single patch, with the mux added to
> > > the CM4 I/O board device tree. This version splits this in two, and
> > > moves the pinumxing to the bcm2711-rpi.dtsi to also support the
> > > Raspberry Pi 4B.
> > >
> > > The Raspberry Pi downstream kernel has a more complex DT architecture in
> > > order to support different I2C0 pinmuxing for other boards. Two files,
> > > bcm283x-rpi-i2c0mux_0_28.dtsi and bcm283x-rpi-i2c0mux_0_44.dtsi, define
> > > the two I2C0 pinxmuxing options (pins 0+1 and 28+29, or pins 0+1 and
> > > 44+45). Each board .dts then includes the appropriate file. I'm hoping
> > > to avoid this additional complexity for now, by addressing the I2C0
> > > pinmuxing for BCM2711-based boards only. If/when support for I2C0
> > > pinmuxing on boards will be needed, we can revisit this topic.
> > >
> > > Compared to the Raspberry Pi downstream kernel, the two muxed I2C buses
> > > are labelled i2c0_0 and i2c0_1 instead of i2c0 and i2c_csi_dsi. This
> > > change was made to keep the naming of the I2C controller labels
> > > consistent, avoiding renaming of the I2C0 controller's label from i2c0
> > > to i2c0if.
> > >
> > > Dave, are you fine with the differences between this patch series and
> > > the downstream kernel, or do you expect them to cause issues ?
> > 
> > I've checked with Phil. There's nothing too untoward that will cause
> > us any significant grief.
> 
> Thanks for checking.
> 
> In the meantime, I realized that the CM4S is 2711-based and, according
> to the downstream DT, multiplexes I2C0 on pins 28+29, not 44+45 :-(
> Umang and Kieran also told me that we want to test camera support on the
> Pi 3B. It looks like the only viable approach to support all that will
> be to include per-board I2C0 pinmux .dtsi as done in the downstream
> kernel. I'll send a v5.

This I2C pin muxing is getting trickier than I initially thought :-S
Naming the child buses i2c0_0 and i2c0_1 means that boards exposing I2C0
on the 40-pins GPIO headers would have different labels for that I2C0
interface depending on whether they multiplex I2C0 on other pins (e.g.
on pins 44+45 for the camera connector of the Pi 4B) or not (e.g. the Pi
400). Overlays would thus not be compatible, which I suppose would be
annoying for users.

Before I send a new version of the series, I'd like to know what
direction I should take. Is overlay compatibility between the two cases
listed above important ? If so, I can imagine at least two solutions:

- On boards that use I2C0 pinmuxing, we can rename the physical
  interface to i2c0if and name the two child buses i2c0 and i2c_csi_dsi.
  This is the solution used in the downstream kernel. It is implemented
  with a crude (in my opinion) hack though: board files have constructs
  such as

  #define i2c0 i2c0if
  #include "bcm2711.dtsi"
  #undef i2c0

- Always mux the I2C0 bus, on pins 0+1 and 28+29 or 0+1 and 44+45,
  depending on the board. Boards that don't connect anything to the I2C
  bus on pins 28+29 or 44+45 would still pick one of the two options. As
  there will be no I2C device on the second bus, the corresponding
  pinctrl entry will never be selected, so this should be harmless. The
  downside is that there will be an I2C mux instantiated in the kernel,
  adding a level of indirection to the I2C operations.

Other solutions may be possible.

What would be everybody's favourite option ?

> > Phil has commented that the RTC is an PCF85063AT, so that compatible
> > string should be "nxp,pcf85063a" if you actually want to make use of
> > the alarm output.
> > Then again the driver support for the alarm output appears to want it
> > routed to an IRQ rather than as a system reset/wakeup, so it probably
> > makes little difference. It llargely depends on how exact you want to
> > be in your hardware description.
> 
> I'll update the compatible string, it's an easy change and it's nice to
> be accurate.
> 
> > > [1] https://lore.kernel.org/linux-arm-kernel/20211231115109.94626-1-uwe@kleine-koenig.org/
> > >
> > > Uwe Kleine-König (2):
> > >   ARM: dts: bcm2711-rpi: Add pinctrl-based multiplexing for I2C0
> > >   ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
> > >
> > >  arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 16 ++++++++++++
> > >  arch/arm/boot/dts/bcm2711-rpi.dtsi       | 31 ++++++++++++++++++++++++
> > >  2 files changed, 47 insertions(+)

-- 
Regards,

Laurent Pinchart
