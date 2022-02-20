Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC1D4BD20E
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 22:37:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240418AbiBTVcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 16:32:52 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:57488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239734AbiBTVcv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 16:32:51 -0500
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com [91.221.196.228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32173DF81
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 13:32:28 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx2.smtp.larsendata.com (Halon) with ESMTPS
        id a5c774a3-9294-11ec-b2df-0050568cd888;
        Sun, 20 Feb 2022 21:32:47 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id 97906194B05;
        Sun, 20 Feb 2022 22:32:29 +0100 (CET)
Date:   Sun, 20 Feb 2022 22:32:25 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, thierry.reding@gmail.com, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 3/3] drm/tiny: Add MIPI DBI compatible SPI driver
Message-ID: <YhKzaU2vz17y+j4s@ravnborg.org>
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-4-noralf@tronnes.org>
 <YhFqxklH9hsLrI1X@ravnborg.org>
 <08d29bb6-8b44-8355-b9dc-a96b2e20cc20@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08d29bb6-8b44-8355-b9dc-a96b2e20cc20@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,

On Sun, Feb 20, 2022 at 04:59:34PM +0100, Noralf Trønnes wrote:
> 
> 
> Den 19.02.2022 23.10, skrev Sam Ravnborg:
> > Hi Noralf,
> > On Fri, Feb 18, 2022 at 04:11:10PM +0100, Noralf Trønnes wrote:
> >> Add a driver that will work with most MIPI DBI compatible SPI panels.
> >> This avoids adding a driver for every new MIPI DBI compatible controller
> >> that is to be used by Linux. The 'compatible' Device Tree property with
> >> a '.bin' suffix will be used to load a firmware file that contains the
> >> controller configuration.
> > A solution where we have the command sequences as part of the DT-overlay
> > is IMO a much better way to solve this:
> > - The users needs to deal only with a single file, so there is less that
> >   goes wrong
> > - The user need not reading special instructions how to handle a .bin
> >   file, if the overlay is present everything is fine
> > - The file that contains the command sequences can be properly annotated
> >   with comments
> > - The people that creates the command sequences has no need for a special
> >   script to create the file for a display - this is all readable ascii.
> > - Using a DT-overlay the parsing of the DT-overlay can be done by
> >   well-tested functions, no need to invent something new to parse the
> >   file
> > 
> > 
> > The idea with a common mipi DBI SPI driver is super, it is the detail
> > with the .bin file that I am against.
> > 
> 
> The fbtft drivers has an init= DT property that contains the command
> sequence. Example for the MZ61581 display:
> 
> 				init = <0x10000b0 00
> 					0x1000011
> 					0x20000ff
> 					0x10000b3 0x02 0x00 0x00 0x00
> 					0x10000c0 0x13 0x3b 0x00 0x02 0x00 0x01 0x00 0x43
> 					0x10000c1 0x08 0x16 0x08 0x08
> 					0x10000c4 0x11 0x07 0x03 0x03
> 					0x10000c6 0x00
> 					0x10000c8 0x03 0x03 0x13 0x5c 0x03 0x07 0x14 0x08 0x00 0x21 0x08
> 0x14 0x07 0x53 0x0c 0x13 0x03 0x03 0x21 0x00
> 					0x1000035 0x00
> 					0x1000036 0xa0
> 					0x100003a 0x55
> 					0x1000044 0x00 0x01
> 					0x10000d0 0x07 0x07 0x1d 0x03
> 					0x10000d1 0x03 0x30 0x10
> 					0x10000d2 0x03 0x14 0x04
> 					0x1000029
> 					0x100002c>;
> 
> Parsed here:
> https://elixir.bootlin.com/linux/latest/C/ident/fbtft_init_display_from_property
> 
> Before fbdev was closed for new drivers I looked at fixing up fbtft for
> proper inclusion and asked on the Device Tree mailinglist about the init
> property and how to handle the controller configuration generically.
> I was politely told that this should be done in the driver, so when I
> made my first DRM driver I made a driver specifically for a panel
> (mi0283qt.c).
> 
> Later I found another post that in clear words stated that setting
> random registers from DT was not acceptable.
Understood and thanks for the explanation.
It is a shame that the users loose here :-(

	Sam
