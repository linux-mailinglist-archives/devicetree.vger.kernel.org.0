Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 017E72A79E8
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 09:58:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730154AbgKEI6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 03:58:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726756AbgKEI6O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 03:58:14 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A199C0613D2
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 00:58:14 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id 33so777186wrl.7
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 00:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=C64vfAzohlbl3oXX4sm2PzWD/v8jPgW0sIcIItKTbrA=;
        b=yL93fXz9X70npFWtsDKM/I7FXfceNmJpeQKfaJkSh/1zIhq5CkL0BXluc1shtQap6m
         ciVb9ZpzUc95ZK4QBnxysdkYqZMmvSI3GJ3zA6ii836G4LBfqI/YACiEG070Gy7x95AJ
         /BCVZBDDmJDY5QlUPC1grBbUrYSd1yiUJfLyoU0TPrPlbQOj6wmDNhTXb8SMtW+XWAAO
         bq4po+PFSlA3JVZuBGdb0uHamVcXWLuQ6PhLlmQDdyammkZ52QpT7p154phAVb+SgCDd
         XC0iLqUyI8RJZ2TgUm4qYktybONdAPj0X4XNWlsAF6MjcC0JsgLpspq9zWZ++SkIdyog
         fqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=C64vfAzohlbl3oXX4sm2PzWD/v8jPgW0sIcIItKTbrA=;
        b=OvE7I2sdsdeUZZcrzfQL8rMlb/Yy/XC+cHB95yqsSlijdkhP3GlUx3JFGrjLbp+8Lk
         +JAjfAPPHQemPuzv/GCZlQ+bxDqS37547Sacs+z88aN/9OJVRFIKCQAp3HutFl/ZJGMH
         m4E59gvHuWhPWP5KbLw8+OvKsIi66yU9xqsYCaSb9G4hr8ipz4xgVH74em5yOjJe22kM
         vLloDa0XyzxN91MV8UJE0uviCZm5r/dtpsJeJBDwiNvETxSFCbeYFis3pRgeLnSRafxX
         VXPRsKWRbhoWwY5M7v1vT8ZNK19Iaru2vfVDX8XUL7aZRnBvXzXxL2H8OXijTA9yz9Zg
         5EKg==
X-Gm-Message-State: AOAM531mFD3JgqA2A2Z3goSDCkktlFmEnHhb5zE7aCBhvK9p5UZ0SlyI
        ZJRHE5HPVWx1HJIB9Itwa5Xl2Q==
X-Google-Smtp-Source: ABdhPJwEvGUR3NXfEQhcj31CvjZxkcrWKkm7Qv9+67OFfyvqQ7ZXldAbYPmo5Zr5+X+LwQg+02o0VA==
X-Received: by 2002:a5d:490a:: with SMTP id x10mr1523392wrq.289.1604566692856;
        Thu, 05 Nov 2020 00:58:12 -0800 (PST)
Received: from dell ([91.110.221.242])
        by smtp.gmail.com with ESMTPSA id i13sm1591419wrs.9.2020.11.05.00.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 00:58:12 -0800 (PST)
Date:   Thu, 5 Nov 2020 08:58:10 +0000
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
Message-ID: <20201105085810.GD4488@dell>
References: <cover.1603877481.git.matti.vaittinen@fi.rohmeurope.com>
 <c7a838830b7d5ea1c281e419cf0eff0cc50363e0.1603877481.git.matti.vaittinen@fi.rohmeurope.com>
 <20201104155153.GQ4488@dell>
 <058913084af32743f2e23228a46944bbfcbd52d2.camel@fi.rohmeurope.com>
 <98d3a090462d21a97dd15490ac1e9de011819b35.camel@fi.rohmeurope.com>
 <20201105082122.GU4488@dell>
 <c969857d70c3fea3e5369651d09aa4ba668418f7.camel@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c969857d70c3fea3e5369651d09aa4ba668418f7.camel@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Nov 2020, Vaittinen, Matti wrote:

> 
> On Thu, 2020-11-05 at 08:21 +0000, Lee Jones wrote:
> > On Thu, 05 Nov 2020, Vaittinen, Matti wrote:
> > 
> > > On Thu, 2020-11-05 at 08:46 +0200, Matti Vaittinen wrote:
> > > > Morning Lee,
> > > > 
> > > > Thanks for taking a look at this :) I see most of the comments
> > > > being
> > > > valid. There's two I would like to clarify though...
> > > > 
> > > > On Wed, 2020-11-04 at 15:51 +0000, Lee Jones wrote:
> > > > > On Wed, 28 Oct 2020, Matti Vaittinen wrote:
> > > > > 
> > > > > > Add core support for ROHM BD9576MUF and BD9573MUF PMICs which
> > > > > > are
> > > > > > mainly used to power the R-Car series processors.
> > > > > > 
> > > > > > Signed-off-by: Matti Vaittinen <
> > > > > > matti.vaittinen@fi.rohmeurope.com
> > > > > > ---
> > > > > > +	unsigned int chip_type;
> > > > > > +
> > > > > > +	chip_type = (unsigned int)(uintptr_t)
> > > > > > +		    of_device_get_match_data(&i2c->dev);
> > > > > 
> > > > > Not overly keen on this casting.
> > > > > 
> > > > > Why not just leave it as (uintptr_t)?
> > > > 
> > > > I didn't do so because on x86_64 the address width is probably 64
> > > > bits
> > > > whereas the unsigned int is likely to be 32 bits. So the
> > > > assignment
> > > > will crop half of the value. It does not really matter as values
> > > > are
> > > > small - but I would be surprized if no compilers/analyzers
> > > > emitted a
> > > > warning.
> > > > 
> > > > I must admit I am not 100% sure though. I sure can change this if
> > > > you
> > > > know it better?
> > 
> > What if you used 'long', which I believe changed with the
> > architecture's bus width in Linux?
> 
> I think this is exactly what uintptr_t was created for. To provide type
> which assures a pointer conversion to integer and back works.
> 
> I guess I can change the
> 
> unsigned int chip_type;
> 
> to uintptr_t and get away with single cast if it looks better to you.
> For me the double cast does not look that bad when it allows use of
> native int size variable - but in this case it's really just a matter
> of taste. Both should work fine.

I do see people casting to uintptr and placing the result into a long.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
