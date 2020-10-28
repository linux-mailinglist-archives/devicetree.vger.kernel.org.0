Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCA8129D4A9
	for <lists+devicetree@lfdr.de>; Wed, 28 Oct 2020 22:53:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728612AbgJ1Vxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 17:53:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728594AbgJ1Vxv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 17:53:51 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 573CCC0613D1
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:53:51 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x7so672916wrl.3
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Kgs7oOpZiYMl5H9WjnHmd1QkROQmWLTfKSTmyAsUaIY=;
        b=QT3KbY0cn1J1iTy+1fLJ5oZJ8uOp5dPKiT042ECYgACs1DaqqiFE004N4MiEUzm/sp
         FAGwauvRmcA2zwmtAvP5tm66nl0F5bmxowyhvdvHkCwxaSCMv3YtQfyWj7hKqMK99pi0
         rq5bjRVVgPgc8xm1MiAb8eBS1PmEGqTAsetdy2p0Dee1QAfrvbj6JSLyEingLRR76jaN
         0enE9H0GyhN8UXfmQu0BaAx7y41A+P7mvBrHXBv9gRPzR/lLI4LyA8ZopOafNnfGonG7
         vKpodtSSQw5wZDx52aJEDswkFk29D6mftf+sufUo7K/tHY1PwOpGvSjyEaw5MZwjcwCR
         Ef2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Kgs7oOpZiYMl5H9WjnHmd1QkROQmWLTfKSTmyAsUaIY=;
        b=uXz83qU7se54EPSuxINdGTCGFQKC4uL5GKiMkJ8F5WfyrO6fh8Yd06GOJc+IvthE1e
         ReMS+CGu2F7cbuirBDarqpV55SxExqOk3EA6hP4TIpHQNSlwVN93MHsq5jZb/einyAjw
         TgsWIdUDYOO/oRe1l15u8FruyAdUUSeJZAEbcAUQNsRyrfC9Rmui5Hx5r1vmrhZpHx+T
         ixQEfxD6L8YtUYowzCN29J45G/xLtqgFE0MfO7FLkZFqeMryci8gALwRrkXjKzGbyT9m
         yImoJLwu+AqR50ARmFQsMZIHZGliViRmkT+ekDKqH+guXs/AnTdlu0GS5yzni4HCH/9t
         zyjA==
X-Gm-Message-State: AOAM531LXZk/eE21gb6XBOdAAeKC8UL2OgwHCl6LFHz6sRHtmQ2D3Af9
        tqPqQFAhaUbA4E5XFuHQ9EYKofpgI6pEsg==
X-Google-Smtp-Source: ABdhPJxaoMdHf9VjBHJiaJux8MOBb5IV8da8WyQ7NwAcHNA6kfKRLpioHRTMxrceTg2Ior50e3Xf5Q==
X-Received: by 2002:a5d:420b:: with SMTP id n11mr5541659wrq.218.1603896953907;
        Wed, 28 Oct 2020 07:55:53 -0700 (PDT)
Received: from holly.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id l5sm7110494wrq.14.2020.10.28.07.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 07:55:53 -0700 (PDT)
Date:   Wed, 28 Oct 2020 14:55:51 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Alexandru Stan <amstan@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
Message-ID: <20201028145551.pn6nxi6skcfbqori@holly.lan>
References: <20201022050445.930403-1-amstan@chromium.org>
 <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 21, 2020 at 10:04:43PM -0700, Alexandru Stan wrote:
> The extra 0 only adds one point in the userspace visible range,
> so this change is almost a noop with the current driver behavior.
> 
> We don't need the 0% point, userspace seems to handle this just fine
> because it uses the bl_power property to turn off the display.
> 
> Furthermore after adding "backlight: pwm_bl: Fix interpolation" patch,
> the backlight interpolation will work a little differently. So we need
> to preemptively remove the 0-3 segment since otherwise we would have a
> 252 long interpolation that would slowly go between 0 and 3, looking
> really bad in userspace. So it's almost a noop/cleanup now, but it will
> be required in the future.
> 
> Signed-off-by: Alexandru Stan <amstan@chromium.org>

Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
> 
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> index af77ab20586d..4a148cf1defc 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> @@ -20,7 +20,7 @@ / {
>  
>  &backlight {
>  	/* Jaq panel PWM must be >= 3%, so start non-zero brightness at 8 */
> -	brightness-levels = <0 8 255>;
> +	brightness-levels = <8 255>;
>  	num-interpolated-steps = <247>;
>  };
>  
> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> index f8b69e0a16a0..82fc6fba9999 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -39,7 +39,7 @@ volum_up {
>  
>  &backlight {
>  	/* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -	brightness-levels = <0 3 255>;
> +	brightness-levels = <3 255>;
>  	num-interpolated-steps = <252>;
>  };
>  
> diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
> index 069f0c2c1fdf..52a84cbe7a90 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
> @@ -23,7 +23,7 @@ / {
>  
>  &backlight {
>  	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -	brightness-levels = <0 3 255>;
> +	brightness-levels = <3 255>;
>  	num-interpolated-steps = <252>;
>  };
>  
> -- 
> 2.28.0
