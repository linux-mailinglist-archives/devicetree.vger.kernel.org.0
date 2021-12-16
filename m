Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87EEB476953
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 06:02:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233677AbhLPFCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 00:02:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233663AbhLPFCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 00:02:52 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A55C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 21:02:51 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id r130so22664164pfc.1
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 21:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pfDndh5e7Tg9q69/YQCj2DgRuK6iAt8tciGnd8xjSmI=;
        b=mQ60iAZHmviFhEZtFnaYnuwg7xBPRGJJ8/24Gz5sxtDAv4ZjLaJWmxB+KO0MAA13tO
         Qd1nmvYJFU8zT5YOa1qI7rWVU4gKTR3/dJHiPA7L7fdo2Wjfu2vHT7klLTbcde6k8HVX
         2009CeKdaus3+e1oCfWW3eZDD1BwKTMVXB3+foDdqUGH+nbAyjyQbo5I7KliLtVRCRkA
         +Cn8geXx9lHF5vZv6SepQssTvui2xIxZSOEU4EFH+kg+7OfgAROubebzmmfGsOQo/hSq
         ivD92P1tFRDCCukstrweUvb/gdLH3WJ0jK/fA990hefh/eT/yV6CSscXz3DBV0Qnc+OW
         Asaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pfDndh5e7Tg9q69/YQCj2DgRuK6iAt8tciGnd8xjSmI=;
        b=S850mHKy0eOEkmfNRzInXtrH5kmkJT0SBIeGgwRpff077q8va4wlIvOAFY7BC8Tihv
         HvM/JET2LmRDWtWI37WFQC/3xzflWslHdkapGcRqBsFCuC0VB+s1pdTelvfxL5cB0uhw
         sN7RZJuF/Bl8Jjyeqp+twltyhQTv+R0ZorlWR9Ja0l1PjkMDXtRiFl9aZQkgEwzCSJ30
         gW/tWz7QiErKe6C9e+I3v0WZj4dZyo99ts2J/rEniDTY56UoBpcJ+WyJ+0akKeZlieaN
         6LOregSlAZxytBxW+g815aJaBfD3qymNKyZI6eGC/EVtFVDA+Uqg0shgCv1s1+kLVePY
         /ccg==
X-Gm-Message-State: AOAM532xPisSXlKZEAP/woxQ3f6LeZri+8rAI+MgpBJRdf+9Txo3qsyW
        xUB/7QZDoqPhVQYIT3u/GH1ezg==
X-Google-Smtp-Source: ABdhPJwVq8Jr3aN71SKClzCOk34eBWZvVcMoOmFxHXjyNBwML3uULOKbn6p3eon3jHFwIvPuypS/8w==
X-Received: by 2002:a63:5a18:: with SMTP id o24mr10519774pgb.459.1639630970703;
        Wed, 15 Dec 2021 21:02:50 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:af33:9cc2:c307:ce8c])
        by smtp.gmail.com with ESMTPSA id j22sm4599968pfj.130.2021.12.15.21.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 21:02:50 -0800 (PST)
Date:   Thu, 16 Dec 2021 13:02:47 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     Trevor Wu <trevor.wu@mediatek.com>
Cc:     broonie@kernel.org, tiwai@suse.com, robh+dt@kernel.org,
        matthias.bgg@gmail.com, alsa-devel@alsa-project.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, jiaxin.yu@mediatek.com,
        shumingf@realtek.com
Subject: Re: [PATCH 1/2] ASoC: mediatek: mt8195: update control for RT5682
 series
Message-ID: <YbrId5gnJSjeT1Ni@google.com>
References: <20211215065835.3074-1-trevor.wu@mediatek.com>
 <YbmlT+OSwpGuylsx@google.com>
 <0b99c46f84c98c56e8fc99b2e103f52f756b5bf9.camel@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b99c46f84c98c56e8fc99b2e103f52f756b5bf9.camel@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 16, 2021 at 11:37:34AM +0800, Trevor Wu wrote:
> On Wed, 2021-12-15 at 16:20 +0800, Tzung-Bi Shih wrote:
> > On Wed, Dec 15, 2021 at 02:58:34PM +0800, Trevor Wu wrote:
> > > @@ -1072,6 +1119,19 @@ static int
> > > mt8195_mt6359_rt1011_rt5682_dev_probe(struct platform_device *pdev)
> > >  		return -EINVAL;
> > >  	}
> > >  
> > > +	priv->i2so1_mclk = devm_clk_get(&pdev->dev, "i2so1_mclk");
> > > +	if (IS_ERR(priv->i2so1_mclk)) {
> > > +		ret = PTR_ERR(priv->i2so1_mclk);
> > > +		if (ret == -ENOENT) {
> > > +			dev_dbg(&pdev->dev,
> > > +				"Failed to get i2so1_mclk, defer
> > > probe\n");
> > > +			return -EPROBE_DEFER;
> > > +		}
> > 
> > Does devm_clk_get_optional() could make the block more concise?
> 
> Even though we use devm_clk_get_optional, we still have to handle the
> (-ENOENT) case in probe function. In my opinion, original
> implementation could be kept.

I am neutral to my original suggestion but devm_clk_get_optional() returns NULL if -ENONENT.
