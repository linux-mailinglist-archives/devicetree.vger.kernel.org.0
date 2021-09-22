Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBAD6414D93
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 17:57:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236495AbhIVP6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 11:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236498AbhIVP6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 11:58:45 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7A29C061756
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 08:57:14 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id q26so8263617wrc.7
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 08:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ptqfW34QUTE2BH0YLmZwXL+JqEPbXsRyxMiFBJ4E1eo=;
        b=FALN0+vsfqfkJP6vMg8743J9hddPca9SzXAkqo2j2aP+/fk02OgF/mMuoK+7PkDcS1
         HONFz6Dw687o93ZrapB82gUkpY2zfFef5uHx76BmzgbvQyxLQxoIgYSH52yJAU9NYllN
         IcyFdlP84tPSBHgGmKWaKiWw35WDntF6+6Tahz7Rr6YrpP5vcVC0c3RIMQzWSqO8WkCa
         qQOy0iZbhkOrJh12VEFix1Wt+uv76JHio+Xow6t/algCtM5Rk6U7TwcvKxZyzUIOmbY0
         gtNYKyh542gqELHc+B9XXtp7uaB934P7GJsnJd8gLH5iKpzJct6Ld8DqhKz43rTRkwY6
         16mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ptqfW34QUTE2BH0YLmZwXL+JqEPbXsRyxMiFBJ4E1eo=;
        b=e0qb4aUTp64bbrvcOh55FkpjQzd+u4rPpYVWzK5le/Yn8qe099AIotTdShN5/WD3ZK
         lKyWDTt/AZZHbt0Bdm2VRSHNnsz7fTBxpfNq92gZKlqunDODGj4IJSknOQXQjDPD/BxN
         wAhc5vjuw04yEDYWleq8wmxQKHISwM73MTQEo7h+vj2bzHBoZn2V0ncJ3YbT3nkBpYux
         1K2M+my9pqk/GxSCx9omvXIBK4kMU5Nj70wzPd20OTYbeOhtY1W4pCrJPyo1jVs+ISNA
         689IRqCQEjcdXlkN7TXVg/2QGg8g7LIPiDcf3HX4Zd3OVj1HaMU8yvwNM+o6M/cjta7M
         P1dA==
X-Gm-Message-State: AOAM533wB2IifYaeEFh8XDWLVcItMTFlsSzm1wxmNOF+xmlO/385H0qF
        frebc3SP38W8EVOtmgF1WIkXtg==
X-Google-Smtp-Source: ABdhPJy2O5EjV2QkTSWtXEPts64vWCLjGcgXukL4nHUjzJNw5qW4QdLNYp1rNqf+jQMF7gOOzmw14g==
X-Received: by 2002:a5d:6ad1:: with SMTP id u17mr384154wrw.204.1632326233289;
        Wed, 22 Sep 2021 08:57:13 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id q3sm1280633wmc.25.2021.09.22.08.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 08:57:12 -0700 (PDT)
Date:   Wed, 22 Sep 2021 16:57:10 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        bcousson@baylibre.com, Tony Lindgren <tony@atomide.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-omap@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Ryan Barnett <ryan.barnett@collins.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Jason Reeder <jreeder@ti.com>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v3 36/47] mfd: ti_am335x_tscadc: Support the correctly
 spelled DT property
Message-ID: <YUtSVo9HBAiomswv@google.com>
References: <20210915155908.476767-1-miquel.raynal@bootlin.com>
 <20210915155908.476767-37-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210915155908.476767-37-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Sep 2021, Miquel Raynal wrote:

> There was in the past a typo in the coordinate readouts property. The
> bindings have been updated, the touchscreen driver as well and now
> supports both. However, the MFD driver that is in charge of verifying
> the validity of the property only checks the bogus one. Add support for
> the correctly spelled DT property.
> 
> Fixes: c9aeb249bf72 ("Input: ti_am335x_tsc - fix spelling mistake in TSC/ADC DT binding")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---
>  drivers/mfd/ti_am335x_tscadc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mfd/ti_am335x_tscadc.c b/drivers/mfd/ti_am335x_tscadc.c
> index 155a8ed879b3..aa46ed669016 100644
> --- a/drivers/mfd/ti_am335x_tscadc.c
> +++ b/drivers/mfd/ti_am335x_tscadc.c
> @@ -144,8 +144,14 @@ static	int ti_tscadc_probe(struct platform_device *pdev)
>  	if (tscadc->data->has_tsc) {
>  		node = of_get_child_by_name(pdev->dev.of_node, "tsc");
>  		of_property_read_u32(node, "ti,wires", &tscmag_wires);
> -		of_property_read_u32(node, "ti,coordiante-readouts", &readouts);
> +		err = of_property_read_u32(node, "ti,coordinate-readouts",
> +					   &readouts);
> +		if (err < 0)
> +			of_property_read_u32(node, "ti,coordiante-readouts",
> +					     &readouts);
> +

How long are you proposing that we support this churn?

>  		of_node_put(node);
> +
>  		if (tscmag_wires)
>  			use_tsc = true;
>  	} else {

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
