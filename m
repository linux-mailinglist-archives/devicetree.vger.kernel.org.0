Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A074AAD09
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 00:30:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235098AbiBEXau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 18:30:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234211AbiBEXat (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Feb 2022 18:30:49 -0500
X-Greylist: delayed 64807 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 05 Feb 2022 15:30:48 PST
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com [91.221.196.228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A348C061348
        for <devicetree@vger.kernel.org>; Sat,  5 Feb 2022 15:30:48 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx2.smtp.larsendata.com (Halon) with ESMTPS
        id b32debad-844b-11ec-ac19-0050568cd888;
        Wed, 02 Feb 2022 17:15:20 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id AACD0194B6F;
        Wed,  2 Feb 2022 18:14:18 +0100 (CET)
Date:   Wed, 2 Feb 2022 18:14:16 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     Maxime Ripard <maxime@cerno.tech>, robh+dt@kernel.org,
        thierry.reding@gmail.com, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/panel: Add MIPI DBI compatible SPI driver
Message-ID: <Yfq76Mx6O8x9sxZW@ravnborg.org>
References: <20220125175700.37408-1-noralf@tronnes.org>
 <20220125175700.37408-4-noralf@tronnes.org>
 <20220127100452.bmxcgf6ye3nxrgtq@houat>
 <fff71d01-e1c9-2b0f-e4b2-9abb107f7770@tronnes.org>
 <20220202100953.pymb6blsqlaw7jv6@houat>
 <261c76d6-6bb9-1fe1-6560-58af5ba240dd@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <261c76d6-6bb9-1fe1-6560-58af5ba240dd@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,

> > 
> > Parts of it is ergonomics I guess. We're used to having all those
> > properties either in the DT or the driver, but here we introduce a new
> > way that isn't done anywhere else.
> > 
> > And I don't see any real downside to putting it in the DT? It's going to
> > be in an overlay, under the user's control anyway, right?
> > 
> 
> Ok, I'll spin a new version using DT properties.

I like this better than anything else as we then have everything in
a single place when we add a new panel and more.
I just recall some resistance to add such HW specific setup - but the
usecase here is kinda special.

Looks forward to see the updated patch!

	Sam
