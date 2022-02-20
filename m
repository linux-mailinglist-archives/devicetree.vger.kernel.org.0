Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3EE04BCDF2
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 11:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243753AbiBTKFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 05:05:09 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242566AbiBTKFJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 05:05:09 -0500
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com [91.221.196.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB69F54693
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 02:04:47 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx1.smtp.larsendata.com (Halon) with ESMTPS
        id 87e2d19b-9234-11ec-9faa-0050568c148b;
        Sun, 20 Feb 2022 10:04:45 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id 733EC194B46;
        Sun, 20 Feb 2022 11:04:46 +0100 (CET)
Date:   Sun, 20 Feb 2022 11:04:42 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     devicetree@vger.kernel.org, david@lechnology.com,
        dave.stevenson@raspberrypi.com, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, thierry.reding@gmail.com, maxime@cerno.tech
Subject: Re: [PATCH v4 3/3] drm/tiny: Add MIPI DBI compatible SPI driver
Message-ID: <YhISOrwTYsn2w6zo@ravnborg.org>
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-4-noralf@tronnes.org>
 <YhFqxklH9hsLrI1X@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YhFqxklH9hsLrI1X@ravnborg.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,

> > +static int panel_mipi_dbi_get_mode(struct mipi_dbi_dev *dbidev, struct drm_display_mode *mode)
> > +{
> > +	struct device *dev = dbidev->drm.dev;
> > +	u32 width_mm = 0, height_mm = 0;
> > +	struct display_timing timing;
> > +	struct videomode vm;
> > +	int ret;
> > +
> > +	ret = of_get_display_timing(dev->of_node, "panel-timing", &timing);
> > +	if (ret) {
> > +		dev_err(dev, "%pOF: failed to get panel-timing (error=%d)\n", dev->of_node, ret);
> > +		return ret;
> > +	}
> > +
> > +	videomode_from_timing(&timing, &vm);
> > +
> > +	if (!vm.hactive || vm.hfront_porch || vm.hsync_len ||
> > +	    (vm.hback_porch + vm.hactive) > 0xffff ||
> > +	    !vm.vactive || vm.vfront_porch || vm.vsync_len ||
> > +	    (vm.vback_porch + vm.vactive) > 0xffff ||
> > +	    vm.flags) {
> > +		dev_err(dev, "%pOF: panel-timing out of bounds\n", dev->of_node);
> > +		return -EINVAL;
> > +	}
> We should have a helper that implements this. Maybe the display_timing
> => display_mode helper could do it.

It would be nice with a drm_display_timing_to_mode() but that can come
later - the comment above should not be understood that I consider it
mandatory for this driver.

	Sam
