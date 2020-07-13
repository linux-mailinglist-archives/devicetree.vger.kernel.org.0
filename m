Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6224D21CAAC
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2020 19:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729127AbgGLR25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jul 2020 13:28:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728882AbgGLR24 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jul 2020 13:28:56 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C91ABC061794
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2020 10:28:56 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id mn17so4986003pjb.4
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2020 10:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L5dSr1nC5D/IYDKhdvnMqPrHsXwtIdTJ8WWjQdsf8D8=;
        b=MLqBA+ESgd4NyRvFeI669J84ywiAGrd14vy7HyOanZr1zFRenEmrFvUXtdNPCixsy+
         yk0L3FwmzxNZ7CCGti2xLlKmaPIXoLIwUzanv7B+w8gR7sbrAxjOXvypsG7jdNlVLNmR
         BMHyEBymNE0c1GVdnySL8qSwfUlj18y9sPnmJLjbOEALWaWSPbzY2f+wnnsXm5Dk+5hx
         Wg51+8Wlo20c3MIW0mR++sAYvf4+SNsYknU+MSctB8EkfyzOzkcWmnop/rdWIWK/ItPS
         A5ovwfuRtaaBuqXPxOsVNwSYI4EOhHX9Sjlg+UcOmBJVVXErYmZPQxYOJWzOjHZSbMu3
         Dl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L5dSr1nC5D/IYDKhdvnMqPrHsXwtIdTJ8WWjQdsf8D8=;
        b=SuBhsUYlclSZf+urWhKLLvTsYgd/4Qp1FoSN8n2hQOC/LEC9nSSyofO9JuiDvJXQzp
         BmFbSTYNFF5ua/hKE0+WmxGNhmCSCCKdIieClxk0l8/PBiU7ziOn+XJly66HrMls9OyB
         tYW8/4GXeUHPMFNc9okxzsdQK12U7Cp5jDnjIaWrq8sHGX/Cdh7vL2RHT3aNLNm4sPPy
         XmIGLRNesRD8HaGQJB4h3uXwyWqKOUxBHg79UQUhuEnSK1rAgwgD/GlR/pVo01estYpR
         cJnmcZpIVgTXjbG1j6RMkrCn8+Yqjc9FeOLb8wkWK/7/sIxaM8BfU8vHN2JWcsE/9Pgx
         FFKw==
X-Gm-Message-State: AOAM531lVSGFK4UND/1c1qEApiAAA4Zq9BqwZNtd7ZCjbdkQ9IrIKwU2
        vWm8RhbbHJFIt0uz7aKErltP
X-Google-Smtp-Source: ABdhPJzSPuanrHhafW6G+C+jAuI9ngdx9Zo1hE63VaewrCghmMqCLco3/d4PW3NetlraPsWZZhQXxw==
X-Received: by 2002:a17:902:a708:: with SMTP id w8mr25369217plq.128.1594574936077;
        Sun, 12 Jul 2020 10:28:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6c81:c187:70f5:3123:b5de:e77f])
        by smtp.gmail.com with ESMTPSA id j5sm12140400pfa.5.2020.07.12.10.28.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 12 Jul 2020 10:28:55 -0700 (PDT)
Date:   Sun, 12 Jul 2020 22:58:50 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Amit Singh Tomar <amittomer25@gmail.com>
Cc:     andre.przywara@arm.com, afaerber@suse.de, robh+dt@kernel.org,
        cristian.ciocaltea@gmail.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 09/10] arm64: dts: actions: Add MMC controller support
 for S700
Message-ID: <20200712172850.GK6110@Mani-XPS-13-9360>
References: <1593701576-28580-1-git-send-email-amittomer25@gmail.com>
 <1593701576-28580-10-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1593701576-28580-10-git-send-email-amittomer25@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 02, 2020 at 08:22:55PM +0530, Amit Singh Tomar wrote:
> This commits adds support for MMC controllers present on Actions S700 SoC,
> there are 3 MMC controllers in this SoC which can be used for accessing
> SD/EMMC/SDIO cards.
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
> Changes since v4:
> 	* No change.
> Changes since v3:
>         * No change.
> Changes since v2:
>         * No change.
> Changes since v1:
>         * Added SoC specific compatibe string.
> Changes since RFC:
>         * No change
> ---
>  arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
> index 2c78caebf515..9ed88aafc2da 100644
> --- a/arch/arm64/boot/dts/actions/s700.dtsi
> +++ b/arch/arm64/boot/dts/actions/s700.dtsi
> @@ -259,5 +259,38 @@
>  			clocks = <&cmu CLK_DMAC>;
>  			power-domains = <&sps S700_PD_DMA>;
>  		};
> +
> +		mmc0: mmc@e0210000 {
> +			compatible = "actions,s700-mmc", "actions,owl-mmc";
> +			reg = <0x0 0xe0210000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD0>;
> +			resets = <&cmu RESET_SD0>;
> +			dmas = <&dma 2>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc1: mmc@e0214000 {
> +			compatible = "actions,s700-mmc", "actions,owl-mmc";
> +			reg = <0x0 0xe0214000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD1>;
> +			resets = <&cmu RESET_SD1>;
> +			dmas = <&dma 3>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc2: mmc@e0218000 {
> +			compatible = "actions,s700-mmc", "actions,owl-mmc";
> +			reg = <0x0 0xe0218000 0x0 0x4000>;
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
> 2.7.4
> 
