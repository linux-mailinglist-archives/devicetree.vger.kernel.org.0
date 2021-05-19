Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 654FE389195
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:41:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354350AbhESOmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:42:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354428AbhESOld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:41:33 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D637C061357
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:39:32 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id n2so14368571wrm.0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=brguJP1TRfkhoTJgsl8Q1B6FJtdnvT+9aum6CCLmyKI=;
        b=BSofIscenrll+wtAbZVziWi2CjNiD3KGjR7g8Y/cQgbk2KYNrwhXwX0fAOCqcTAUcR
         1m6u35SMvrNsMiN4T4z3PyLe+kwJGHZgg1tpLr6ALjsBgAA1vc8eUIuVTu8y1AdvdWYN
         gjz5NHThtBnnt5pEUVwRZsnWCSR/6tyn95Mjs3JJnqGSpLAWglu6647iOGUXaz8X8X3D
         nQ1UDPp0RYP0wc07+vAOqVa9EK3fA84cSEY5woWkFI2dGakoIxGY/RZKuDHhvTjJcxEy
         OXPKrxh5bmj+3g4Su69PFC1/RHpKc3Syjz87pR2K2UdtrshnNgIBvjGtNLRlOqq4Tz4m
         RGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=brguJP1TRfkhoTJgsl8Q1B6FJtdnvT+9aum6CCLmyKI=;
        b=JEuAHP5sgg8uu2i67N+atnYlEZuUvsFP/LN7sUDp0NNSWUUDgmR3vCtPD3eO8seSFg
         Fp0E+Y6WgrzZtZDja0O6Wxs+VVvqq52CIigfDJVm8p/OHwxbWvVxLHG/RV8/XkNM/2dj
         qIo/ErplHbPA2/Fowlu6+UGA4aJAiywlx3eVLOwuuX9gDThxwY0yl6p0IWM7Ba6eMI8o
         alZFhAVQlqHFQgQbvmyxkloEMYW/ZCX1EBIav7FZMuPA9LdCBEUDFEu7l1PzTeFMnFKT
         Qm0bDbQeOBJFxxpRq14vua08KLQ9ZtoUhL64xHqfrn+rC1L2h1CE5WeleBhxateEhA27
         DHNQ==
X-Gm-Message-State: AOAM531q2JqedvWMoiIM5L935+LIKQU26EBi7TYeL4xha8HpQDJACh7C
        GkCwIfHouGpk3zY4NzgigxX8eA==
X-Google-Smtp-Source: ABdhPJz09XPcH5af8DhPokNsIK+NhdlGR/EmcisNcRXKH1/9rm4wA0gp+EyQCV9V7mZI2l2AMaDP2Q==
X-Received: by 2002:a05:6000:104a:: with SMTP id c10mr15035593wrx.45.1621435170708;
        Wed, 19 May 2021 07:39:30 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id c15sm25760443wro.21.2021.05.19.07.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:39:30 -0700 (PDT)
Date:   Wed, 19 May 2021 15:39:28 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v11 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210519143928.GG2415519@dell>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
 <20210515025749.11291-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210515025749.11291-2-macroalpha82@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 May 2021, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add rk817 codec support cell to rk808 mfd driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
> ---
>  drivers/mfd/rk808.c       | 83 +++++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/rk808.h | 81 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 164 insertions(+)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index ad923dd4e007..b94f805719a6 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -65,6 +65,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
>  	switch (reg) {
>  	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
>  	case RK817_RTC_STATUS_REG:
> +	case RK817_CODEC_DTOP_LPT_SRST:
>  	case RK817_INT_STS_REG0:
>  	case RK817_INT_STS_REG1:
>  	case RK817_INT_STS_REG2:
> @@ -163,6 +164,9 @@ static const struct mfd_cell rk817s[] = {
>  		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
>  		.resources = &rk817_rtc_resources[0],
>  	},
> +	{
> +		.name = "rk817-codec",
> +	},

This should be on a single line please.

Once fixed, please apply my:

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
