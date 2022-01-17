Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28899490485
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 10:01:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233535AbiAQJAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 04:00:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233452AbiAQJAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 04:00:51 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A30C061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 01:00:51 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id h127-20020a1c2185000000b0034cd1acd9b5so579076wmh.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 01:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=uNxywBtauiiSbb3v20qOTEdwlBSnjvT+NFkq6wnHG6A=;
        b=uYkZcRpC+5iTrpZNb91jTzRJhL0QSKUVPAyDMv1MG/vmYA1FaYKyiluW/8H3cbEl5m
         AaABkXSAwpn+YTH/gjQedlKZvEa1Emvw20NgSd0XkVIsPqPVji1WIBqEoREbb6BEdK24
         FdFfy750P7/grkZOpaMbXeyRhj+mO8lML2jBMN+2FWkTrjgvQvn2YEVR8UIejpaVMls7
         WDLyypu2FSvzLEiLNjYzS+HFluXWbjErYbfVSP6HBN3Nxmg0nbFfLl3c6Y6sWrETTzoo
         fiw76/uA19CPZUGjm5ZKngbUmtqZqRoluJCyBWWYLCjhMynacVRLur9kUB8jD/D1zBTB
         4YbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=uNxywBtauiiSbb3v20qOTEdwlBSnjvT+NFkq6wnHG6A=;
        b=riU6PDRkxInsGFCOy0LbFm3as+1eZY0RkxgXB2kyJs5JC/OilZJnXiGhzW/MoVyU7e
         nchKyHxTTvkZsupSkA6kf4qgN1EDgqSPjxCxi/ww+0TowdW9jBi4rbn/m1/Bu2C6M3R8
         rMdMKoilzTh3BAnRZj+jWHdykZQa0gwtvt2M+qAxrTQ4iO1gtwxyo9uG502WE11b+Yvu
         /sFoqQG3IeBLeo6gqG3z/kmcJRWU7TAmkVgZ8dWJhdXCHFlrpM6clIjdH5tChBGX3Wiy
         0mxRZpl5Yk7hi5CvRAwvD6AfdY+D5yeaZ3byb3W7DIGY6Wu0FNu4hV4bVsqZ8tqlisrb
         ejdQ==
X-Gm-Message-State: AOAM530aLwHx3UPbmFSzM77wu92tHdDGg0cxOqdmpVvhF2/03/Cwghw2
        fwOlEj60pWKXZeu8cBJeP7JZsw==
X-Google-Smtp-Source: ABdhPJy38hNJCJT4tL2Qb1TkrATt+lRfqvgALC0NS55iT+Qdy/srg+77wndo1Hj9NAop5w193ZmUqg==
X-Received: by 2002:adf:f390:: with SMTP id m16mr18858434wro.651.1642410049663;
        Mon, 17 Jan 2022 01:00:49 -0800 (PST)
Received: from google.com ([31.124.24.179])
        by smtp.gmail.com with ESMTPSA id i6sm8859710wrf.21.2022.01.17.01.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jan 2022 01:00:49 -0800 (PST)
Date:   Mon, 17 Jan 2022 09:00:49 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] iio: adc: sun4i-gpadc-iio: no temp sensor on R40
Message-ID: <YeUwQfkdWbEZlnh2@google.com>
References: <20211119191456.510435-1-boger@wirenboard.com>
 <20211119191456.510435-2-boger@wirenboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211119191456.510435-2-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Nov 2021, Evgeny Boger wrote:

> R40 SoC has touchscreen controller also serving as general-purpose ADC.
> The hardware is very similar to A31, except that R40 has separate
> calibrated thermal sensor IP (handled by sun8i_thermal).
> 
> Despite the temperature sensor in the RTP is never mentioned in
> the R40 family user manuals, it appears to be working. However,
> it's not very useful as it lacks calibration data and there is another
> fully functioning temperature sensor anyway.
> 
> This patch disables the temperature sensor in RTP/GPADC IP on R40.
> 
> The reason for disabling the temperature sensor is that the IP
> needs to be switched back and forth between RTP and GPADC modes for
> temperature measurements. Not only this introduces delays, but it also
> disturbs external circuitry by injecting current into ADC inputs.
> 
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>  drivers/iio/adc/sun4i-gpadc-iio.c | 32 +++++++++++++++++++++++--------
>  drivers/mfd/sun4i-gpadc.c         | 17 ++++++++++++++++

Please split these out.

They don't *need* to go in via a single tree.

>  2 files changed, 41 insertions(+), 8 deletions(-)

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
