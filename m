Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A51037FA29
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 17:01:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233423AbhEMPCf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 11:02:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233073AbhEMPCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 11:02:35 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C0EFC061574
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:01:25 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id n184so25536572oia.12
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ldgM2NO/Seow+Q56F+YNVD+hDuAL7t+LwPBtglqZh1k=;
        b=uYchrcCSs746S+q+9gMFDs6pbFLse8WQ2iy43FWr0fZToAUlq/4rnF1ltQEKoNweE9
         CkkEYo4Eya6PfW2wAroDNcr1tL3SML6J2unwF5momMpunX923eAMlEMk6qYGR8bC1NCR
         ctx9nHfoAzpWkueL6j7Jt+6M9qpgkLEI+r5AK6+eMlGJPSWogR271QQ49emat4oZYOWO
         zG6lhb42WpTw5HEs6ClOhIXmRNItwJqkEH3th/EzSx3UUD0+J8bFW3uCRNtMJn893i8T
         xpjIBeAiFz2e8FgOGIDjfBF5bFM0W7wAPYKIaBi/+Cr+ub2CZDlf5vhQwBKjVreDzSEA
         9eCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ldgM2NO/Seow+Q56F+YNVD+hDuAL7t+LwPBtglqZh1k=;
        b=a2mjXrtK/AjK4Wd4T8c0HeY5YWn7pHC5nVjgkIffeL9ha5Vz3toGE9m16vkKWDWxbw
         IqlZC/MrwrNZly90vSQKrABcxhA7EvQGyMBvxSWLaGE0yX+ADcPADzq7GwQkcvxAW7B1
         zrSpuA6aXyYKz5bj1fRZ1A281Dr/6MbsSSYj1V8RscmXEvS1+cZGxlnhHQIk/3+B2NPJ
         JW1YzUDEocR/3FX1nQl9chKK7rsTJ6ylszytsQJsx3eOo474dc2MQZUfJUI+fjI5SNea
         nUtQfIKoerJYzyfmttbfJ+5H1+5vVoKkDP2P8HpIxU0w5TvE/uvrR6uxPUG0NeVgorY8
         Q4Pw==
X-Gm-Message-State: AOAM531nKsRwudCGvGVqD1JYubpiRPvm8ge9OTZnXEt9W3WwBOoSJ1Q3
        2xYmv3e+IdG2gFQEf5uXAw4=
X-Google-Smtp-Source: ABdhPJyt5yDteKzelnGnRuRCn9CZhQKv5LRroEA1l8WsVRyhotR5+3i5X3VeFHbmGyO221CzU290OQ==
X-Received: by 2002:aca:5d08:: with SMTP id r8mr735254oib.51.1620918084722;
        Thu, 13 May 2021 08:01:24 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id x30sm694721ott.41.2021.05.13.08.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 08:01:24 -0700 (PDT)
Date:   Thu, 13 May 2021 10:01:22 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210513150122.GA8450@wintermute.localdomain>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
 <20210510162329.GD751702@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210510162329.GD751702@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 10, 2021 at 05:23:29PM +0100, Lee Jones wrote:
> On Wed, 05 May 2021, Chris Morgan wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add rk817 codec support cell to rk808 mfd driver.
> > 
> > Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> 
> Nit: These should be chronological.

Acknowledged. I will make sure to do this if a v10 is necessary.

> 
> > ---
> > Changes in v9:
> >  - Add cover letter.
> >  - Remove documentation for interrupt parent per Rob Herring's request.
> >  - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
> >    robot.
> > Changes in v8:
> >  - Added additional documentation for missing properties of #sound-dai-cells,
> >    interrupt-parent, and wakeup-source for mfd documentation.
> >  - Corrected order of elements descriptions in device tree documentation.
> >  - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
> >  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
> >  - Removed unused resets and reset-names from the i2s1_2ch node.
> > Changes in v7:
> >  - Removed ifdef around register definitions for MFD.
> >  - Replaced codec documentation with updates to MFD documentation.
> >  - Reordered elements in example to comply with upstream rules.
> >  - Added binding update back for Odroid Go Advance as requested.
> >  - Submitting patches from gmail now.
> > Changes in v6:
> >  - Included additional project maintainers for correct subsystems.
> >  - Removed unneeded compatible from DT documentation.
> >  - Removed binding update for Odroid Go Advance (will do in seperate series).
> > Changes in v5:
> >  - Move register definitions from rk817_codec.h to main rk808.h register
> >    definitions.
> >  - Add volatile register for codec bits.
> >  - Add default values for codec bits.
> >  - Removed of_compatible from mtd driver (not necessary).
> >  - Switched to using parent regmap instead of private regmap for codec.
> > Changes in v4:
> >  - Created set_pll() call.
> >  - Created user visible gain control in mic.
> >  - Check for return value of clk_prepare_enable().
> >  - Removed duplicate clk_prepare_enable().
> >  - Split DT documentation to separate commit.
> > Changes in v3:
> >  - Use DAPM macros to set audio path.
> >  - Updated devicetree binding (as every rk817 has this codec chip).
> >  - Changed documentation to yaml format.
> >  - Split MFD changes to separate commit.
> > Changes in v2:
> >  - Fixed audio path registers to solve some bugs.
> > 
> >  drivers/mfd/rk808.c       | 85 +++++++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/rk808.h | 81 +++++++++++++++++++++++++++++++++++++
> >  2 files changed, 166 insertions(+)
> > 
> > diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> > index ad923dd4e007..9231209184e0 100644
> > --- a/drivers/mfd/rk808.c
> > +++ b/drivers/mfd/rk808.c
> > @@ -65,6 +65,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
> >  	switch (reg) {
> >  	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
> >  	case RK817_RTC_STATUS_REG:
> > +	case RK817_CODEC_DTOP_LPT_SRST:
> >  	case RK817_INT_STS_REG0:
> >  	case RK817_INT_STS_REG1:
> >  	case RK817_INT_STS_REG2:
> > @@ -163,6 +164,11 @@ static const struct mfd_cell rk817s[] = {
> >  		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
> >  		.resources = &rk817_rtc_resources[0],
> >  	},
> > +#ifdef CONFIG_SND_SOC_RK817
> > +	{
> > +		.name = "rk817-codec",
> > +	},
> > +#endif
> 
> No #ifery please.
> 
> Just replace it with a comment.
> 
> If no associated driver exists, it just won't match/bind.

I did the "if" here because I noticed that if I have a rk817 and do not
utilize the codec I receive a dmesg warning. I put the if here to silence
it in the event that someone was using this PMIC but didn't want to use
the audio codec. I will make the change if you say so though, but I just
want to confirm that it's acceptable to have a warning for all rk817s
that do not use the codec about a missing codec.  The hardware is always
present, I just can't say for certain it will always be used.

Thank you.

> 
> -- 
> Lee Jones [李琼斯]
> Senior Technical Lead - Developer Services
> Linaro.org │ Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog
