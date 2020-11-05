Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71C312A7927
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 09:23:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729490AbgKEIXf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 03:23:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725287AbgKEIXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 03:23:34 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2CE2C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 00:23:31 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id g12so654672wrp.10
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 00:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=4Qdw96BcpJmHZY0g7ed1NLtf7VniEYgB+KrDiXrAPvU=;
        b=tjHqgiICtDpyh3yNeU3lQucVZPooyRBbcEPGg0/7ydlw6S2MtMCOn5q8N+OsCJFB5w
         Jity8AXhQm+byNDZkwmX6TL1nTGK7unukBlyyh3X23ObQy8VgWjlZfU5kw5QhmhXxHKx
         60Z/Kadcue3i9+zd5tKNXDdCKqH6l5afZ2H8dXgiR6ocgjktBOJorxC6ExVEUlsxkRtP
         JNH9L5dBQiqKaOiTfs2dFY9yTLU9S4eyJHqzDgFpTtGza5xxMGdtx6SEVBgO+WfhGlUt
         UTlOBS6bhhUybbyUpxCWuTQQUCcsIbgivLfXHkzIyjHNH4/kv9YT1GYColycoMIyCtvc
         NrLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=4Qdw96BcpJmHZY0g7ed1NLtf7VniEYgB+KrDiXrAPvU=;
        b=FHfv2ESnMngav7lOji5XohzGaoNlk5dz/03352bzgHiHkK7J0wTiCZ4ZjRZuVSz3TH
         0SWTK7NHmRdueYEreEIOqaEkvxSXhAqTk23s9B6TRdRxgSy3NPBHndLbQaXCoMQDgERV
         wP0b1qMdAJf7osx7Y3CNFyTDhObGLOrCQdpPCdAnHLluq1jPJnx/2u8OwPRvybqLH+tO
         th9BIGAFDZlLyrKrHIZMYgQSdkaRiEntq8aAQte2T72zyU6bQ3SwFS6xlwo8WeMbmhiw
         w3hij5VSAtXF07djxZRx1eEdGoAEfAO+pytjdGP0NkQslowDkX/gIYIiJIp+/QBu7aJh
         SsyQ==
X-Gm-Message-State: AOAM5316jm8P93vlkkUPjsbv2EbYoazoMYWSsV3OyeKO/JJRwvW1FOe8
        4tPtnunWMp8xmLRpSvhBgiNpKw==
X-Google-Smtp-Source: ABdhPJxKsFn9ZecT0WTRKJvEO/Q32NUdscrZxMe95r4py6FpZACFEpZ2AKp+sW6pZNPR0dFa+4VbWA==
X-Received: by 2002:adf:cd01:: with SMTP id w1mr1443572wrm.298.1604564610752;
        Thu, 05 Nov 2020 00:23:30 -0800 (PST)
Received: from dell ([91.110.221.242])
        by smtp.gmail.com with ESMTPSA id o17sm1451523wmd.34.2020.11.05.00.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 00:23:30 -0800 (PST)
Date:   Thu, 5 Nov 2020 08:23:28 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     mazziesaccount@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-power@fi.rohmeurope.com,
        linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v4 2/4] mfd: Support ROHM BD9576MUF and BD9573MUF
Message-ID: <20201105082328.GV4488@dell>
References: <cover.1603877481.git.matti.vaittinen@fi.rohmeurope.com>
 <c7a838830b7d5ea1c281e419cf0eff0cc50363e0.1603877481.git.matti.vaittinen@fi.rohmeurope.com>
 <20201104155153.GQ4488@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201104155153.GQ4488@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 04 Nov 2020, Lee Jones wrote:

> On Wed, 28 Oct 2020, Matti Vaittinen wrote:
> 
> > Add core support for ROHM BD9576MUF and BD9573MUF PMICs which are
> > mainly used to power the R-Car series processors.
> > 
> > Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> > ---
> >  drivers/mfd/Kconfig              |  11 +++
> >  drivers/mfd/Makefile             |   1 +
> >  drivers/mfd/rohm-bd9576.c        | 130 +++++++++++++++++++++++++++++++
> >  include/linux/mfd/rohm-bd957x.h  |  59 ++++++++++++++
> >  include/linux/mfd/rohm-generic.h |   2 +
> >  5 files changed, 203 insertions(+)
> >  create mode 100644 drivers/mfd/rohm-bd9576.c
> >  create mode 100644 include/linux/mfd/rohm-bd957x.h

[...]

> > +static const struct regmap_range volatile_ranges[] = {
> > +	{
> > +		.range_min = BD957X_REG_SMRB_ASSERT,
> > +		.range_max = BD957X_REG_SMRB_ASSERT,
> > +	},
> > +	{
> 
> The way you space your braces is not consistent.
> 
> > +		.range_min = BD957X_REG_PMIC_INTERNAL_STAT,
> > +		.range_max = BD957X_REG_PMIC_INTERNAL_STAT,
> > +	},
> > +	{
> > +		.range_min = BD957X_REG_INT_THERM_STAT,
> > +		.range_max = BD957X_REG_INT_THERM_STAT,
> > +	},
> > +	{
> > +		.range_min = BD957X_REG_INT_OVP_STAT,
> > +		.range_max = BD957X_REG_INT_SYS_STAT,
> > +	}, {
> > +		.range_min = BD957X_REG_INT_MAIN_STAT,
> > +		.range_max = BD957X_REG_INT_MAIN_STAT,
> > +	},
> > +};

Don't forget about this.

I would prefer to have the braces on the same line (even if it means
you have to change an extra line when editing), but I'm not 100% dead
set on it.  Consistency however, I am.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
