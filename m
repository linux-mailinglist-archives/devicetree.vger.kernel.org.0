Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 694CF2A78F4
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 09:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728632AbgKEIV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 03:21:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725287AbgKEIV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 03:21:28 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 387E8C0613D2
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 00:21:26 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id x12so653679wrm.8
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 00:21:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=EGm2NorsGv4NVpF0JuZ+YhufziByoMe/D5L7IgafVoo=;
        b=l73u9BPhLQwGMUIi7oUy49iKpajVfS0uL6u7IqgsGOe1stfuOFzjELtb46fzuXrpbA
         ACFuAAPdiXlqVz3ENWfHW1L7yJIncpr3a0GOEuFv9Ry7bUEKDzD2A7EmfF2+2KysFuIv
         Wma7PkdpMWDUkeRAfvIpgI3VOBtnSwFW/beECfIwOaLlYNJVILFIl+Fs0eosSKqrNCHq
         ze39AmWAOndgmGNpiwWwtoCsFm0n/lo+FKuFpt8Zhe1pkyl15sddy0To2Nu5KF1S32Dq
         ad3ObQOyaNfRMdx0AFpMCTbS1MpzOjar1VD4NTtbJUufHAy+BSz1vUBaOfYkRmkRCYZY
         NROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EGm2NorsGv4NVpF0JuZ+YhufziByoMe/D5L7IgafVoo=;
        b=ms16slwApmabt2UrOmjAFcNoxMr2jDOgMRcn1FtakBuo0CmrVR9cXkQZLKJtNNbrH/
         nS7BRaO4sghUlNTp3hXp8pY2kTSasXzrpK+uXtjfypArHmdZW6m4aUIpDDDXlsFprgH2
         FT1LMiBVaTYBPKvJBOC8Go5FFu06sGTZrOgXu0JCse2F328R0n4QhQXQpve67hX2Gyel
         c9+61InuPH5bwjYi2JPgjGRfamNOpBsiXlYc+XxhRvAXikhGSdS8al5F382ehbAlqDf4
         g+kC1WudU3GXAZRg/frPzNWVSBrM/amAyheJ2h23I2KeLFCHzCp6SAm8cDlQdvxYaZiD
         fxaQ==
X-Gm-Message-State: AOAM5303dO9kr0L901AmpaJnkUWu4LUE8364C5QucdMoFRVEzrzlFPCT
        bvImcGs8rRGp9mAEqIY9VdhfTQ==
X-Google-Smtp-Source: ABdhPJz+aPOanI9nNufsSlPIrZvXNwvL6whEAMe+oxV2195BJuc/Z12VLFYAI4dNeS15dhAq0gB+9g==
X-Received: by 2002:adf:914c:: with SMTP id j70mr1526513wrj.170.1604564484981;
        Thu, 05 Nov 2020 00:21:24 -0800 (PST)
Received: from dell ([91.110.221.242])
        by smtp.gmail.com with ESMTPSA id a17sm1398761wra.61.2020.11.05.00.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 00:21:24 -0800 (PST)
Date:   Thu, 5 Nov 2020 08:21:22 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
Cc:     "linux@roeck-us.net" <linux@roeck-us.net>,
        "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
        "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-power <linux-power@fi.rohmeurope.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v4 2/4] mfd: Support ROHM BD9576MUF and BD9573MUF
Message-ID: <20201105082122.GU4488@dell>
References: <cover.1603877481.git.matti.vaittinen@fi.rohmeurope.com>
 <c7a838830b7d5ea1c281e419cf0eff0cc50363e0.1603877481.git.matti.vaittinen@fi.rohmeurope.com>
 <20201104155153.GQ4488@dell>
 <058913084af32743f2e23228a46944bbfcbd52d2.camel@fi.rohmeurope.com>
 <98d3a090462d21a97dd15490ac1e9de011819b35.camel@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98d3a090462d21a97dd15490ac1e9de011819b35.camel@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Nov 2020, Vaittinen, Matti wrote:

> 
> On Thu, 2020-11-05 at 08:46 +0200, Matti Vaittinen wrote:
> > Morning Lee,
> > 
> > Thanks for taking a look at this :) I see most of the comments being
> > valid. There's two I would like to clarify though...
> > 
> > On Wed, 2020-11-04 at 15:51 +0000, Lee Jones wrote:
> > > On Wed, 28 Oct 2020, Matti Vaittinen wrote:
> > > 
> > > > Add core support for ROHM BD9576MUF and BD9573MUF PMICs which are
> > > > mainly used to power the R-Car series processors.
> > > > 
> > > > Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com
> > > > >
> > > > ---
> > > > +	unsigned int chip_type;
> > > > +
> > > > +	chip_type = (unsigned int)(uintptr_t)
> > > > +		    of_device_get_match_data(&i2c->dev);
> > > 
> > > Not overly keen on this casting.
> > > 
> > > Why not just leave it as (uintptr_t)?
> > 
> > I didn't do so because on x86_64 the address width is probably 64
> > bits
> > whereas the unsigned int is likely to be 32 bits. So the assignment
> > will crop half of the value. It does not really matter as values are
> > small - but I would be surprized if no compilers/analyzers emitted a
> > warning.
> > 
> > I must admit I am not 100% sure though. I sure can change this if you
> > know it better?

What if you used 'long', which I believe changed with the
architecture's bus width in Linux?

> > > What happens when you don't cast to (uintptr_t) first?
> > 
> > On some systems at least the gcc will warn:
> > > warning: cast from pointer to integer of different size [-Wpointer-
> > to-int-cast]
> > 
> > I am pretty sure I did end up this double casting via trial and error
> > :)

It's not uncommon. :)

> > > > +static const struct of_device_id bd957x_of_match[] = {
> > > > +	{
> > > > +		.compatible = "rohm,bd9576",
> > > > +		.data = (void *)ROHM_CHIP_TYPE_BD9576,
> > > > +	},
> > > > +	{
> > > 
> > > You could put the 2 lines above on a single line.
> > 
> > Braces? I put braces on separate lines on purpose. Been doing this
> > after we had this discussion:
> > 
> > https://lore.kernel.org/lkml/20180705055226.GJ496@dell/
> > https://lore.kernel.org/lkml/20180706070559.GW496@dell/
> > 
> > ;)
> > 
> > I can change it if you wishfeel it is important - not a point I feel
> > like fighting over ;)
> > 
> 
> Ah. I guess you meant:
> static const struct of_device_id bd957x_of_match[] = {
>         { .compatible = "rohm,bd9576", .data = (void *)ROHM_CHIP_TYPE_BD9576, },
>         { .compatible = "rohm,bd9573", .data = (void *)ROHM_CHIP_TYPE_BD9573, },
>         {},
> }; 

This would be better, yes.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
