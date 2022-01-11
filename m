Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8531748B755
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 20:28:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235768AbiAKT2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 14:28:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235749AbiAKT2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 14:28:09 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5B23C06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 11:28:09 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id lr15-20020a17090b4b8f00b001b19671cbebso706582pjb.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 11:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=P9GGnh4ZAPicH6zFbaaibhXVxtkqcKWl+gDZ/9uGstY=;
        b=XJK8WGVdpyWBTW2rl6/42XtxFt9UrgnqqMQzJoOJEHvBzE5ADG38zKOh8jNEzOzfVa
         OV8Ev2SH3em9lpNTeMncSLR63IzJSOQ3uCrPfKhO/cvEZ23mFf8PenF061eqHnIJL4We
         J7B3DqG7aKDJ9jhdpTer+qaNvtAJW7O3cENRZnc6zG0VVpZXuEqq0/cD/qDyRgwrzyOz
         HK9hzbm2TcA49nYlmVZI+ehPKC9zRKi0SE9NZD6zcKHGlv0Lm9VcJ/GibNqcF61mMlgv
         6B3QyrW6v+xcPyw7BynwSsxIxBgZMSpmAhb32RAaKLg9mUXR8C4vql++jG6GA8lrqwhd
         bRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P9GGnh4ZAPicH6zFbaaibhXVxtkqcKWl+gDZ/9uGstY=;
        b=mfpu/FqXk3LXEZa5KWhI1oBLoMUpqb8ZGWYFPSkNQudLBDbk6k/hSDoYpLE4tyNXQp
         +ZM4a5QOKZuMI8B6Dnjim/ZDpTQmFtKEPIKVDKXbViVihobH+evBpzOpUM4LUgclzcQs
         eTQsFm/p+Xuun17ZcGX6zkGqUv+wMURY4hn3bglAoGd5gcfZoJGodjpN54TKnSBg2FEB
         gOfwgZN9MCSlrrEgPBojG0vYbOHL520bg10sxhDEXpSXv6kbweCCBZn/aoyPTkI0+m3x
         TFO+xSgIpHzJYPczTt0nWy/M+ormCLbZ49uRblHfJHeB6dX/b0P+Nby1XmIzTAt/a4vW
         ThqA==
X-Gm-Message-State: AOAM530XxqW4OOlToC0mfhkgQOCeh/4qJ4JkhUefc81XGKs5oraw3q37
        cheyxjKX1jV2KwGg/B3JYj5XaA==
X-Google-Smtp-Source: ABdhPJwn6iFqQcbHTGhaXHMnTyxbURXfuNpqLv1VIhHz64R5T9Ua0/tnAfrcYo1lrQMclNym60pNsw==
X-Received: by 2002:a17:90a:c254:: with SMTP id d20mr4829393pjx.226.1641929289251;
        Tue, 11 Jan 2022 11:28:09 -0800 (PST)
Received: from localhost ([121.99.145.49])
        by smtp.gmail.com with ESMTPSA id t27sm11926893pfg.41.2022.01.11.11.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 11:28:08 -0800 (PST)
Date:   Wed, 12 Jan 2022 08:28:06 +1300
From:   Daniel Beer <daniel.beer@igorinstitute.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andy Liu <andy-liu@ti.com>,
        Derek Simkowiak <derek.simkowiak@igorinstitute.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH 1/2] ASoC: add support for TAS5805M digital amplifier
Message-ID: <20220111192806.GA10345@nyquist.nev>
References: <61dccc59.1c69fb81.e1d98.02e3@mx.google.com>
 <Yd26p8rF3arufd2R@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yd26p8rF3arufd2R@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 11, 2022 at 05:13:11PM +0000, Mark Brown wrote:
> > +static void tas5805m_refresh_unlocked(struct snd_soc_component *component)
> > +{
> > +	struct tas5805m_priv *tas5805m =
> > +		snd_soc_component_get_drvdata(component);
> > +	uint8_t v[4];
> > +	unsigned int i;
> > +	uint32_t x;
> 
> > +	snd_soc_component_write(component, REG_PAGE, 0x00);
> > +	snd_soc_component_write(component, REG_BOOK, 0x8c);
> > +	snd_soc_component_write(component, REG_PAGE, 0x2a);
> 
> This isn't using the regmap paging support and I'm not seeing anything
> that resets the page here.

Hi Mark,

The blob of register writes we get given from PPC3 contains a whole lot
of explicit page and book changes, and there's not an easy way to tell
regmap about this, as far as I know. Do you think it's acceptable to
stick with explicit paging for this reason, or is there a way to make
this work with regmap's paging?

I'll go ahead and address your other comments before resubmitting.

Cheers,
Daniel

-- 
Daniel Beer
Firmware Engineer at Igor Institute
daniel.beer@igorinstitute.com or +64-27-420-8101
Offices in Seattle, San Francisco, and Vancouver BC or (206) 494-3312
