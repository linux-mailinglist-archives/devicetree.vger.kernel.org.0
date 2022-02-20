Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFD6C4BD20D
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 22:37:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235508AbiBTVbW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 16:31:22 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbiBTVbV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 16:31:21 -0500
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com [91.221.196.228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D57041625
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 13:30:59 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx2.smtp.larsendata.com (Halon) with ESMTPS
        id 7012d53f-9294-11ec-b2df-0050568cd888;
        Sun, 20 Feb 2022 21:31:17 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id 238C8194B05;
        Sun, 20 Feb 2022 22:30:59 +0100 (CET)
Date:   Sun, 20 Feb 2022 22:30:54 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        maxime@cerno.tech, robh+dt@kernel.org, thierry.reding@gmail.com
Subject: Re: [PATCH v4 3/3] drm/tiny: Add MIPI DBI compatible SPI driver
Message-ID: <YhKzDi9CBrjLGm/X@ravnborg.org>
References: <35cd42a3-5183-2f21-8728-ee9d65dd1740@tronnes.org>
 <388f7dc3-afcd-e4c3-592f-8e8401819371@tronnes.org>
 <YhKdEuU3qoY/x/ie@ravnborg.org>
 <5357536f-c2ff-d778-dbd6-87c8079ab855@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5357536f-c2ff-d778-dbd6-87c8079ab855@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,

> >> 	    mode->flags) {
> >> 		dev_err(dev, "%pOF: panel-timing out of bounds\n", dev->of_node);
> >> 		return -EINVAL;
> >> 	}
> > With the display_timing => drm_display_mode I think the above is no
> > longer required.
> > 
> 
> I still need to verify the values to ensure that front_porch and
> sync_len are zero. Maybe I need a comment now to tell what I'm checking
> since I'm further away from the DT values:
> 
> /*
>  * Make sure width and height are set and that only back porch and
>  * pixelclock are set in the other timing values. Also check that
>  * width and height don't exceed the 16-bit value specified by MIPI DCS.
>  */
Yes, that would be nice.
> 
> >>
> >> 	/* The driver doesn't use the pixel clock but it is mandatory so fake
> >> one if not set */
> >> 	if (!mode->pixelclock)
> >> 		mode->pixelclock = mode->htotal * mode->vtotal * 60 / 1000;
> >>
> >> 	dbidev->top_offset = vback_porch;
> >> 	dbidev->left_offset = hback_porch;
> >>
> >> 	return 0;
> >> }
> >>
> >>
> >> int of_get_drm_panel_display_mode(struct device_node *np,
> >> 				  struct drm_display_mode *dmode, u32 *bus_flags)
> >> {
> > Not sure about the bus_flags argument here - seems misplaced.
> > 
> 
> I did the same as of_get_drm_display_mode(), don't panel drivers need
> the bus flags?

In my haste I missed the display_timing combines flags for the bus and
the mode - so yes it is needed.


> 
> >> 	u32 width_mm = 0, height_mm = 0;
> >> 	struct display_timing timing;
> >> 	struct videomode vm;
> >> 	int ret;
> >>
> >> 	ret = of_get_display_timing(np, "panel-timing", &timing);
> >> 	if (ret)
> >> 		return ret;
> >>
> >> 	videomode_from_timing(&timing, vm);
> >>
> >> 	memset(dmode, 0, sizeof(*dmode));
> >> 	drm_display_mode_from_videomode(&vm, dmode);
> >> 	if (bus_flags)
> >> 		drm_bus_flags_from_videomode(&vm, bus_flags);
> > 
> > This does a:
> > display_timing => video_mode => drm_display_display_mode
> > 
> > We could do a:
> > display_timing => drm_display_mode.
> > 
> 
> I'll leave this to others to sort out. I want the function to look the
> same as of_get_drm_display_mode() and it uses videomode. If videomode
> goes away both can be fixed at the same time.

When I have dig myself out of the bridge hole I am in I may take a
look at this.

	Sam
