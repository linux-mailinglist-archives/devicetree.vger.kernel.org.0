Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B421C38F90B
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 05:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbhEYD41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 23:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbhEYD40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 23:56:26 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0DC7C061756
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 20:54:56 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id c196so20862262oib.9
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 20:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=d4k92N6LykWwMxQhzmWCiHnqT4hZBOdVZCUoC5jBhEs=;
        b=xVBTsraeA0yJoIJPLbHfkCFzVpMzJIzpN7iP5VjYq4c7v85R57995+VX0P5t7NiRPS
         YFWCrjyBg0CFrWG+R+csdaN6sx70TOJpAdXXYufdC5cLRf8Lh7sjYjhaAfKEz8H2aTH8
         tCgm8Z8HzmyLtRQ8U6RqMqjzSLiQdVR+u4S5RYORV0VRe5ZSsNLUWRc8ZLsRI8ylTicu
         NznmbZsCVl2PRlIW0ElryajJyCtcTM2ViG7znOjI5Zj99lJU6RLcY4Tmjk1ZqJTYTAk/
         rLPmbKQTgm00AJfSeSQIGVM2J1cIACbPMbx3sfxgdc6dAPJ6869Orm/wI2HTiAnjSp+8
         Oomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=d4k92N6LykWwMxQhzmWCiHnqT4hZBOdVZCUoC5jBhEs=;
        b=ff8EpMTyibdwPcUHvjfRBfZeetc3pnmbORPnpqlB9/G36w25mXWHr503xGIRT96K9h
         NIfbNJOmUPpomZNoy+dbZqWE0y1JAfMiOe9uScbO68GfO6lrYBFd8BaXds3qVz/MIinv
         /sLULZ6StnDERDXvbhE26k+gYSrMBijfyR0ou9ZjWR9nLPztmmHJiOnO8c7EaS25+IkZ
         wMJz80/yA/hOIW8iJdri+eYSrO38nR7lwp76iWmAwFt6TylbnvSItVkwdqIsoX/4ArQM
         vBNlVdxiTH5YQzq10/EvRTWEdEvxGp55/8WUSIb9wRZNIKeuGvE4lyjAILJD5cMkKvmj
         Gdsw==
X-Gm-Message-State: AOAM533JOsdlzIoUOAWYSOYh8+PT+Vv9rfdb3DCDPNzOhz2X+a8dp+Gy
        zbg9lqemuHesU/RYn9SnA1hP+w==
X-Google-Smtp-Source: ABdhPJy3r8mCSdU2dsRhAILoa90OUJII3LPqOedt3yLx/88LCJxkEQaPzYBPOXFZrpZZcr/kewdEhw==
X-Received: by 2002:aca:d18:: with SMTP id 24mr1448467oin.56.1621914896177;
        Mon, 24 May 2021 20:54:56 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x5sm3414826otg.76.2021.05.24.20.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 20:54:55 -0700 (PDT)
Date:   Mon, 24 May 2021 22:54:53 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Martin Botka <martin.botka@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        konrad.dybcio@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 2/2] drivers: qcom: pinctrl: Add pinctrl driver for
 sm6125
Message-ID: <YKx1DTc4wD5adxgG@yoga>
References: <20210523211809.734107-1-martin.botka@somainline.org>
 <20210523211809.734107-2-martin.botka@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210523211809.734107-2-martin.botka@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 23 May 16:18 CDT 2021, Martin Botka wrote:
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm6125.c b/drivers/pinctrl/qcom/pinctrl-sm6125.c
[..]
> +static const struct msm_pingroup sm6125_groups[] = {
> +	[0] = PINGROUP(0, WEST, qup00, _, qdss_gpio6, _, _, _, _, _, _),

There's no individual pin where we need to distinguish between two
different qdss_gpio* functions, so please lump all of qdss_gpio*
together as "qdss".

> +	[1] = PINGROUP(1, WEST, qup00, _, qdss_gpio7, _, _, _, _, _, _),
> +	[2] = PINGROUP(2, WEST, qup00, _, qdss_gpio8, _, _, _, _, _, _),
> +	[3] = PINGROUP(3, WEST, qup00, _, qdss_gpio9, _, _, _, _, _, _),
> +	[4] = PINGROUP(4, WEST, qup01, _, _, _, _, _, _, _, _),
> +	[5] = PINGROUP(5, WEST, qup01, _, _, _, _, _, _, _, _),
> +	[6] = PINGROUP(6, WEST, qup02, ddr_pxi0, _, _, _, _, _, _, _),
> +	[7] = PINGROUP(7, WEST, qup02, ddr_bist, atest_tsens2, vsense_trigger,
> +		       atest_usb1, ddr_pxi0, _, _, _),

Please ignore the line length limit and leave all these unwrapped.

> +	[8] = PINGROUP(8, WEST, qup02, gp_pdm1, ddr_bist, _, phase_flag23, _,

As with qdss_gpioX, please join all phase_flagNN as "phase_flag".

> +		       _, _, _),
[..]
> +	[131] = PINGROUP(131, SOUTH, phase_flag20, _, _, _, _, _, _, _,
> +			 _),
> +	[132] = PINGROUP(132, SOUTH, _, _, _, _, _, _, _, _, _),
> +	[133] = SDC_QDSD_PINGROUP(sdc1_rclk, WEST, 0x18d000, 15, 0),
> +	[134] = SDC_QDSD_PINGROUP(sdc1_clk, WEST, 0x18d000, 13, 6),
> +	[135] = SDC_QDSD_PINGROUP(sdc1_cmd, WEST, 0x18d000, 11, 3),
> +	[136] = SDC_QDSD_PINGROUP(sdc1_data, WEST, 0x18d000, 9, 0),
> +	[137] = SDC_QDSD_PINGROUP(sdc2_clk, SOUTH, 0x58b000, 14, 6),
> +	[138] = SDC_QDSD_PINGROUP(sdc2_cmd, SOUTH, 0x58b000, 11, 3),
> +	[139] = SDC_QDSD_PINGROUP(sdc2_data, SOUTH, 0x58b000, 9, 0),
> +	[140] = UFS_RESET(ufs_reset, 0x190000),

Move this above the SDC nodes, to make it the item with index 133.
Together with ngpios = 134 this can then be accessed using the gpio
framework in the UFS driver.

> +};
> +
> +static const struct msm_pinctrl_soc_data sm6125_pinctrl = {
> +	.pins = sm6125_pins,
> +	.npins = ARRAY_SIZE(sm6125_pins),
> +	.functions = sm6125_functions,
> +	.nfunctions = ARRAY_SIZE(sm6125_functions),
> +	.groups = sm6125_groups,
> +	.ngroups = ARRAY_SIZE(sm6125_groups),
> +	.ngpios = 134,
> +	.tiles = sm6125_tiles,
> +	.ntiles = ARRAY_SIZE(sm6125_tiles),
> +};
> +
> +static int sm6125_pinctrl_probe(struct platform_device *pdev)
> +{
> +	return msm_pinctrl_probe(pdev, &sm6125_pinctrl);
> +}
> +
> +static const struct of_device_id sm6125_pinctrl_of_match[] = {
> +	{ .compatible = "qcom,sm6125-pinctrl", },

Please change "pinctrl" to "tlmm".

Regards,
Bjorn
