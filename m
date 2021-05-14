Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BCCC38128B
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 23:05:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231795AbhENVGN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 17:06:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230141AbhENVGG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 17:06:06 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EE9DC06138A
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 14:04:12 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id v13-20020a4ac00d0000b029020b43b918eeso158046oop.9
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 14:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kPsrSGNLOizkCAKBiLnRmnyslOtMn2HPUetpjlj9ass=;
        b=gmg0uTvE+oR8hGseo5ZXul0Xt/uIiy78Qxwtv8aEV3EB41+Qmff2E8JFEaRU9rI8Se
         IfsVub1vxb/n/MBUcO+LpUmSZpdACFIdBeF4FCD0klz8/NEF6HhFmCCYg9dV27wVkXk4
         qYqoG0RcPpDdf/FVb9uYPL/6GeAsO64kz0msN2bG8S4RfwC5gt1nWypSUF0gA04rYnsf
         5CTmWJwLtAEdjDMLmmcpCW6PufLWt97gqiNHJjpvDjjUN2rYu8zX71cRyHvTcfCoU3MZ
         aup/3LoYV+7gzA8VW1kSKqvLMoEUbKPLnjj6MZNiNJ/tl7SARhjILFjjsnW4OWfsSS7Q
         j0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kPsrSGNLOizkCAKBiLnRmnyslOtMn2HPUetpjlj9ass=;
        b=EEXZyIOYmkHP4aZffuLse1O7Emz8ObZnTWQPC7AQRUbVla7NLCxYCIpmCoUI3vh/EV
         tFAe+/bUTCTraNfqcUEDpxcvfSU+/h5Ny9kGlZudOlM+GneiOxmPpwJilg0H0BTD0Ewp
         Jg0R/jdPAuvo3xDCRFqLGuEi703jMrQ4/qoeHPqJLkavkwxhsCnjhepUcSmrX37QzE4k
         zcJ6x9VGrvFSVuoLUF2jnnKjAT+/EJzl0oaDsQ0X4260QhMgKckwUkeK6XQRplhd96yA
         oYlMG9axG+a0OmX9aLS6vVCNfPC/Y/pSlhyuH460zULPHHBORrxJUUURi7DK/aaWuDqR
         CS6Q==
X-Gm-Message-State: AOAM533kjPCValhvtAjajfL0AJp8W2uoWaJvSJyIVPFlAoeOqeRPP5mn
        FHYvaSx7wIBScRTDSH3wijQ=
X-Google-Smtp-Source: ABdhPJywA71X32l+efBN953nFSTeFQ8QaU2Msij6JPHZaQjR/Bplli3+ys66OBToEQLSKLHrVZXbNg==
X-Received: by 2002:a05:6820:611:: with SMTP id e17mr11158941oow.0.1621026251826;
        Fri, 14 May 2021 14:04:11 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id c95sm1492964otb.80.2021.05.14.14.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 14:04:11 -0700 (PDT)
Date:   Fri, 14 May 2021 16:04:09 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514210409.GA4597@wintermute.localdomain>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
 <20210514174958.GC6516@sirena.org.uk>
 <20210514183324.GA20917@wintermute.localdomain>
 <20210514195835.GD6516@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210514195835.GD6516@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 08:58:35PM +0100, Mark Brown wrote:
> On Fri, May 14, 2021 at 01:33:24PM -0500, Chris Morgan wrote:
> > On Fri, May 14, 2021 at 06:49:58PM +0100, Mark Brown wrote:
> 
> > > > +	if (!node) {
> > > > +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> > > > +			__func__);
> 
> > > There's no need to fail the probe here, you won't be able to read any DT
> > > properties but that shouldn't stop the driver binding.
> 
> > If I'm not mistaken this is actually telling us to fail if the parent
> > device (the PMIC itself) isn't present. I think I'll remove this as not
> > necessary since if the parent node isn't present the mfd driver will
> > never load, meaning this driver will never load either.
> 
> So it is - I edited incorrectly when I went to reply.
> 
> > Below this line however we're failing if the codec node isn't present.
> > Are you telling me we want to bind the driver if the node isn't present
> > (such as in the edge case where the driver is present and the PMIC is a
> > rk817, but the CODEC is not in use)? I will remove the return code if
> 
> Yes.
> 
> > you think that is what needs to be done. My concern there though is if
> > we do that we'll either be in a position to again report a bunch of
> > errors for the edge case of users who want to use the PMIC but not the
> > codec (in this case missing clocks and whatnot) if we try to bind the
> 
> Why would there be any errors?

There won't be here. I'm thinking of the edge case where a user has
this driver but doesn't want to use this hardware again, but I'm
getting scatterbrained and thinking overall and not in the context of
this one section.

Once I remove these lines the last place for an error to occur is when
fetching/activating the mclk in the main probe function. A user who is
trying to use this hardware would want to get an error associated with
a missing clock or one that couldn't be activated, whereas a user who
does not want to use this hardware won't care. How do you think I
should handle that?

I'm assuming if the clock isn't present or working that's where we'd
want to stop the driver, since without the clock it's useless. I'm
thinking if the clock is not present we should simply exit out and drop
a dev_dbg message to aid in troubleshooting when someone wants to use
this hardware but forgets to define their clock. However, if either the
clock is present but fails to activate or the codec fails to register,
that should probably give an actual error message (and still prevent
the driver from binding successfully).

So I'll clean up the rk817_codec_parse_dt_property to not check for a
parent node (useless), and remove the return values from it since
neither of the remaining conditions should cause the driver to fail to
probe. I'll also remove checking for the device parent in
rk817_platform_probe, since its' not necessary. If you think it's the
best solution I'll then change the clock dev_err to a dev_dbg, and
leave everything else the same.

Thank you.
