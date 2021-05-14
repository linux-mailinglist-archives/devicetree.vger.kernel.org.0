Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0A2380FCE
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 20:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233405AbhENSev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 14:34:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbhENSev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 14:34:51 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A6ECC061574
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 11:33:28 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id v19-20020a0568301413b0290304f00e3d88so81702otp.4
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 11:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MyepW9OZoA5Tfnsk829LBdO7lppfBfCNDTAkF2rLFjw=;
        b=CSruQYkZcAvyzO2bwdSLSevjn6wHjzL16r4vHhL3WjVB3Wmud9BONG+RXENhltUe5z
         QbRig6W7y1v7Hqiv6xbTxAMtt/QzbcbWfbbWvJNLnEEpzWgm3/2GakdSSSHlvXR2/huV
         0wYXCs0tFCLIi4zF1EE674UyBsA5BDSDAYcRr1ox9xCLM6L/uQCk4ikuDbAYtOZu6HMB
         BrfcFLZYIQueonpmtZKGNThbUD2M+8wrfudMTV7Uk4z+tIQA5XC10G6qi8JgGyZ1U/nG
         IVd3RtCeROniLEIr73zMa2pltdFkKC+Re4rRPXtFcgNEeVttA0bRsE3/1HiiVR275ONS
         nI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MyepW9OZoA5Tfnsk829LBdO7lppfBfCNDTAkF2rLFjw=;
        b=K8M2uDkkkjdqKOVr8cXCKEmKO/QodM3Z3ktzmVDA+hrMx5LaKrcJKWTn+j1oxR9D4F
         /E8RXdR2uRoUJH+i0DUzATEWEmJULExUb2RzldzdTCVZKTWdrj6yMFeePL6cSMaBmw2Q
         2r2dephPgLvj3MevKdnokLrB0nFHHYYHCto4YEkOFkYySIsf3N4SOwtDZluEYNOl+eRi
         x3Y2oNQ0pqfuAIabDXxH4eTwuHYS68gaR8eb4yogMfMSjkKJgxHBhi8+JSbwYItmTouP
         KUZsZAbX5Od1mgV5hqnnsu6kAaOhTvFI3HU4sVIDaDpWAJdj/J/myGkuEOOKeprEm1E/
         8o+g==
X-Gm-Message-State: AOAM530aAL6U7LcIZa1mXNhlXedtjFvcAlzeY+2UobtEAk+UvWQRWijC
        OuOymarArOKV6phleZlL4r7uaf0lslE=
X-Google-Smtp-Source: ABdhPJxXAj49fp1LA89JGsmz+P/omVWNY4qgVVhPM43OY3SY7lNrKcSbRajKZ4rZRZprL6MVcO7rRg==
X-Received: by 2002:a05:6830:1693:: with SMTP id k19mr18376058otr.210.1621017206861;
        Fri, 14 May 2021 11:33:26 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id u201sm1296914oia.10.2021.05.14.11.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 11:33:26 -0700 (PDT)
Date:   Fri, 14 May 2021 13:33:24 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514183324.GA20917@wintermute.localdomain>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
 <20210514174958.GC6516@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210514174958.GC6516@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 06:49:58PM +0100, Mark Brown wrote:
> On Fri, May 14, 2021 at 12:19:38PM -0500, Chris Morgan wrote:
> 
> > +static int rk817_codec_parse_dt_property(struct device *dev,
> > +					 struct rk817_codec_priv *rk817)
> > +{
> > +	struct device_node *node = dev->parent->of_node;
> > +
> > +	if (!node) {
> > +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> > +			__func__);
> > +		return -ENODEV;
> > +	}
> 
> There's no need to fail the probe here, you won't be able to read any DT
> properties but that shouldn't stop the driver binding.

If I'm not mistaken this is actually telling us to fail if the parent
device (the PMIC itself) isn't present. I think I'll remove this as not
necessary since if the parent node isn't present the mfd driver will
never load, meaning this driver will never load either.

Below this line however we're failing if the codec node isn't present.
Are you telling me we want to bind the driver if the node isn't present
(such as in the edge case where the driver is present and the PMIC is a
rk817, but the CODEC is not in use)? I will remove the return code if
you think that is what needs to be done. My concern there though is if
we do that we'll either be in a position to again report a bunch of
errors for the edge case of users who want to use the PMIC but not the
codec (in this case missing clocks and whatnot) if we try to bind the
driver and the user doesn't want it. I can also set those errors to
debug level, but I think that they might be important enough for users
who DO want to use the codec to keep them as dev_err.

Let me know what you think.

Thank you.
