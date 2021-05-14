Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4964E380D94
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 17:50:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232883AbhENPvY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 11:51:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230326AbhENPvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 11:51:23 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66466C061574
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 08:50:12 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id t4-20020a05683014c4b02902ed26dd7a60so16685277otq.7
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=sZ49ShKIaNwQHidJObzN6bEDvol7JHlJL1Wi/UaAnxU=;
        b=GYXaNZsWNePfNOac3fPkooPRbg2kZJTHNs0N3Z/eJHHA38WTiqQPDaKCwKtavhEm/c
         UoCfL76HrqFIZY80AwGm2dQmbWDrF4Qkh1lVKfnwglYXGFhOwvy99xZi8X48tYPBPTVv
         XsGTbvy6PsPq7y96LlqpK7Ee+7P1G1vPNgaoK04p0SfYcapVAqlgNzlV27K8Wp5g4dPM
         iAQTOS17OGxguKFPuy0asOnVZNwrJNcD4DIhlZRlA67dV2IdiHt22pHCbfMtdsfHfE81
         yASkmbL5IrTY2k7ZueMZy7vuY44aBvN9C3um0OFqTuJcT7fG81/9pcKeu4gdZzdnzpOE
         Ogdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=sZ49ShKIaNwQHidJObzN6bEDvol7JHlJL1Wi/UaAnxU=;
        b=FIwxur8djDN9OzHkzoYnCXnFJvTgO8DRlymAIHnQdOWdg1IG+R2IjhG5Wicr81qaOA
         Ksga06gw3pOQYZ9mt9UE54Nwxg90+uHM33s6gseoO8ic/cEwJlcQ+Ex61aPOiABKWjxy
         /IrUF41fthGTTySVGKZ3k7aEhD5PMlHDl7o3jUyqv7z74nNNYv3FrGu79vvaQr9JpHX2
         Gopl0EYxc0HR58+zNoPBcbf8pYTN4ckpUc0RqU0RGJINXaPMpFhisEEDAWjv3jDR5pX6
         Mryv3s/AQi6m4ZNFBd4obWojtnkt3lyjrQTgXA+ZG++aAl4N0s5RPi13aEo8I1MktMHJ
         k/TQ==
X-Gm-Message-State: AOAM530M5DkOib2bYfG7br6QU7iPcPu4kOvRDbSKgWA43SAY7AEBd6/+
        mXvIx5eXJbIwVXqBeLdQMBnYC21uIxQ=
X-Google-Smtp-Source: ABdhPJxjeIcCmjTfmhzVGhK3314cJcUyudKyb+hUO6U7bkwBaEpW9n6IfEK1qsbDY4o9ghN6dT0R/Q==
X-Received: by 2002:a9d:6e92:: with SMTP id a18mr40646346otr.169.1621007411636;
        Fri, 14 May 2021 08:50:11 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id g11sm1263544oif.27.2021.05.14.08.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 08:50:10 -0700 (PDT)
Date:   Fri, 14 May 2021 10:50:08 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514155008.GA5719@wintermute.localdomain>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
 <20210510162329.GD751702@dell>
 <20210513150122.GA8450@wintermute.localdomain>
 <20210513201114.GE805368@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210513201114.GE805368@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 13, 2021 at 09:11:14PM +0100, Lee Jones wrote:
> On Thu, 13 May 2021, Chris Morgan wrote:
> 
> > On Mon, May 10, 2021 at 05:23:29PM +0100, Lee Jones wrote:
> > > On Wed, 05 May 2021, Chris Morgan wrote:
> > > 
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > 
> > > > Add rk817 codec support cell to rk808 mfd driver.
> > > > 
> > > > Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
> > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Nit: These should be chronological.
> > 
> > Acknowledged. I will make sure to do this if a v10 is necessary.
> > 
> > > 
> > > > ---
> > > > Changes in v9:
> > > >  - Add cover letter.
> > > >  - Remove documentation for interrupt parent per Rob Herring's request.
> > > >  - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
> > > >    robot.
> > > > Changes in v8:
> > > >  - Added additional documentation for missing properties of #sound-dai-cells,
> > > >    interrupt-parent, and wakeup-source for mfd documentation.
> > > >  - Corrected order of elements descriptions in device tree documentation.
> > > >  - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
> > > >  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
> > > >  - Removed unused resets and reset-names from the i2s1_2ch node.
> > > > Changes in v7:
> > > >  - Removed ifdef around register definitions for MFD.
> > > >  - Replaced codec documentation with updates to MFD documentation.
> > > >  - Reordered elements in example to comply with upstream rules.
> > > >  - Added binding update back for Odroid Go Advance as requested.
> > > >  - Submitting patches from gmail now.
> > > > Changes in v6:
> > > >  - Included additional project maintainers for correct subsystems.
> > > >  - Removed unneeded compatible from DT documentation.
> > > >  - Removed binding update for Odroid Go Advance (will do in seperate series).
> > > > Changes in v5:
> > > >  - Move register definitions from rk817_codec.h to main rk808.h register
> > > >    definitions.
> > > >  - Add volatile register for codec bits.
> > > >  - Add default values for codec bits.
> > > >  - Removed of_compatible from mtd driver (not necessary).
> > > >  - Switched to using parent regmap instead of private regmap for codec.
> > > > Changes in v4:
> > > >  - Created set_pll() call.
> > > >  - Created user visible gain control in mic.
> > > >  - Check for return value of clk_prepare_enable().
> > > >  - Removed duplicate clk_prepare_enable().
> > > >  - Split DT documentation to separate commit.
> > > > Changes in v3:
> > > >  - Use DAPM macros to set audio path.
> > > >  - Updated devicetree binding (as every rk817 has this codec chip).
> > > >  - Changed documentation to yaml format.
> > > >  - Split MFD changes to separate commit.
> > > > Changes in v2:
> > > >  - Fixed audio path registers to solve some bugs.
> > > > 
> > > >  drivers/mfd/rk808.c       | 85 +++++++++++++++++++++++++++++++++++++++
> > > >  include/linux/mfd/rk808.h | 81 +++++++++++++++++++++++++++++++++++++
> > > >  2 files changed, 166 insertions(+)
> > > > 
> > > > diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> > > > index ad923dd4e007..9231209184e0 100644
> > > > --- a/drivers/mfd/rk808.c
> > > > +++ b/drivers/mfd/rk808.c
> > > > @@ -65,6 +65,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
> > > >  	switch (reg) {
> > > >  	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
> > > >  	case RK817_RTC_STATUS_REG:
> > > > +	case RK817_CODEC_DTOP_LPT_SRST:
> > > >  	case RK817_INT_STS_REG0:
> > > >  	case RK817_INT_STS_REG1:
> > > >  	case RK817_INT_STS_REG2:
> > > > @@ -163,6 +164,11 @@ static const struct mfd_cell rk817s[] = {
> > > >  		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
> > > >  		.resources = &rk817_rtc_resources[0],
> > > >  	},
> > > > +#ifdef CONFIG_SND_SOC_RK817
> > > > +	{
> > > > +		.name = "rk817-codec",
> > > > +	},
> > > > +#endif
> > > 
> > > No #ifery please.
> > > 
> > > Just replace it with a comment.
> > > 
> > > If no associated driver exists, it just won't match/bind.
> > 
> > I did the "if" here because I noticed that if I have a rk817 and do not
> > utilize the codec I receive a dmesg warning. I put the if here to silence
> > it in the event that someone was using this PMIC but didn't want to use
> > the audio codec. I will make the change if you say so though, but I just
> > want to confirm that it's acceptable to have a warning for all rk817s
> > that do not use the codec about a missing codec.  The hardware is always
> > present, I just can't say for certain it will always be used.
> 
> What is the dmesg warning you receive?

It appears I was confused, I will update the code. No warning is
received when I take away the ifdef guard. However, if I build the
codec and don't include a devicetree node for it I get the following
lines in dmesg:

rk817-codec rk817-codec: rk817_codec_parse_dt_property() Can not get child: codec
rk817-codec rk817-codec: rk817_platform_probe() parse device tree property error -19

So it looks like this ifdef was meant to "fix" a problem that it
doesn't even fix. I'll get rid of it and resubmit. To that end, do you
think these messages above are okay, or should we try to fix them in
the edge case of a user with an rk817 who doesn't use the codec but
still has the codec driver compiled?

Thank you.

> 
> -- 
> Lee Jones [李琼斯]
> Senior Technical Lead - Developer Services
> Linaro.org │ Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog
