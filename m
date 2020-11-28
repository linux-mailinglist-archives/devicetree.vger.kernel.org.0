Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3592C74C7
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388389AbgK1Vtg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731811AbgK1SzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 13:55:19 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BCE7C094271
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:33:40 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id 131so6394208pfb.9
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ihnYKrMMjwZQ5ASx933HV2MFt/S1a3530wjA+saFMm0=;
        b=OSMvJBUy3HqGbGUcMWKHNiGOHQCRFhjr9OZqhIL9Q+v1V34yiTWKsqln8Pasel3c/d
         Q9sTQaRWEmzF6YrupGPB4OG1K5jrJRppLT6Qqtk+O4reM2QBiO6BZL7aCsJy9D5zUfHc
         2FTA67D0bnp6TOzBuMzfy0XdYn3bdl/wpMuw/9Me/Hlg7iSZd/uVXt8hK/sjZucF5NXg
         FVwQlgghzrSRKe+np5c46nW7xdWDz1pWpV5PA0V+isL7Sq7iOlBLL0fzkJxRnSv6dqT/
         nd/r3rcmoHaWoz2PTu75OcW7xcxXeMgyogFasR0G3PdBVU3AoHJzINAMCYpGxBLyA2vU
         +stw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ihnYKrMMjwZQ5ASx933HV2MFt/S1a3530wjA+saFMm0=;
        b=P4nqPPBp7zkCCXDVfQdEnfXgv11RKu4ADNPmoq9+R4fIbSUN3k2AygsZfuUfwO5FGV
         HSs6pSXAIWilrVNBK8i2RXUkrt7B1rVE7CuvbUo6INlqpaDfz0dihQhEmXKWxTflloPM
         g8UcYU6T0Vs/tiRqzBrd4wlmOu0X/d5a++YyoSWXiRd3iNtF+lQ6SBBsh8vvliVeAeos
         11bPHVDpLVTZhQDfw5ddNMA34lauHsRMRA+kzrEFXRTcjXJlWKB9ujgZj5wL9ahnx5nJ
         ysI9dY8EWlAa4GPuq01qrJONNedqVB7eiheu9oxCw/DLlA8ZRcKSmshF6fTlD6/p5Wap
         YekQ==
X-Gm-Message-State: AOAM533awD7C0gXNhh12KoMfj1uMFQWwZpWmdtp+hWQ3EMCCKtTA7f9M
        kQBhWuYIJmm7PPfNJn/1Dtvr
X-Google-Smtp-Source: ABdhPJwbCDP8/+7G0x1dmJbEc8cAeBrMhbVdDjg8CH1Fq8Dda8QmWvqbYV1Epr/Z0CyuZA4fKt5ChA==
X-Received: by 2002:a17:90a:ec08:: with SMTP id l8mr14275331pjy.115.1606548820114;
        Fri, 27 Nov 2020 23:33:40 -0800 (PST)
Received: from thinkpad ([2409:4072:15:c612:48ab:f1cc:6b16:2820])
        by smtp.gmail.com with ESMTPSA id f5sm9194473pgg.74.2020.11.27.23.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 23:33:39 -0800 (PST)
Date:   Sat, 28 Nov 2020 13:03:31 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org
Subject: Re: [PATCH v2 09/18] arm: dts: owl-s500: Add MMC support
Message-ID: <20201128073331.GX3077@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <0556399f1ce8b1255d1f7961f04fcb95c96ab928.1605823502.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0556399f1ce8b1255d1f7961f04fcb95c96ab928.1605823502.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 01:56:03AM +0200, Cristian Ciocaltea wrote:
> Add MMC controller nodes for Actions Semi S500 SoC, in order to
> facilitate access to SD/EMMC/SDIO cards.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm/boot/dts/owl-s500.dtsi | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
> index b16172615db0..7af7c9e1119d 100644
> --- a/arch/arm/boot/dts/owl-s500.dtsi
> +++ b/arch/arm/boot/dts/owl-s500.dtsi
> @@ -241,5 +241,38 @@ dma: dma-controller@b0260000 {
>  			clocks = <&cmu CLK_DMAC>;
>  			power-domains = <&sps S500_PD_DMA>;
>  		};
> +
> +		mmc0: mmc@b0230000 {
> +			compatible = "actions,s500-mmc", "actions,owl-mmc";
> +			reg = <0xb0230000 0x38>;
> +			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD0>;
> +			resets = <&cmu RESET_SD0>;
> +			dmas = <&dma 2>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc1: mmc@b0234000 {
> +			compatible = "actions,s500-mmc", "actions,owl-mmc";
> +			reg = <0xb0234000 0x38>;
> +			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD1>;
> +			resets = <&cmu RESET_SD1>;
> +			dmas = <&dma 3>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc2: mmc@b0238000 {
> +			compatible = "actions,s500-mmc", "actions,owl-mmc";
> +			reg = <0xb0238000 0x38>;
> +			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD2>;
> +			resets = <&cmu RESET_SD2>;
> +			dmas = <&dma 4>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
>  	};
>  };
> -- 
> 2.29.2
> 
