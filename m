Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 734F62C95B8
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 04:20:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727650AbgLADUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 22:20:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726877AbgLADUq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 22:20:46 -0500
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CC8C0613CF
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 19:20:06 -0800 (PST)
Received: by mail-oi1-x241.google.com with SMTP id t143so313293oif.10
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 19:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=z0jYbSuM2A7vj2WRSnCHpCXmrIAzvssFmwAmhCHBSEo=;
        b=XqI9UrtwtN+Xkgx9qqN1YpdIsr6BCmdt1rKQKFt7pEhILlu4Pj/Le6iJMF+WhAOETY
         A1tu2xf189iKGMPNVQECBebYglBbJzmwEg+sSVVHfEoXAdTuiJjBe9Ir8z1j0+R0dVBm
         HYQ00J7UwnYAqA1Nxdn9nw2wQRdbvPilvYXoE7ioGCITj7zVdzjB4ifT46aDZO0jpKmK
         nS3jobLJsNm1kfK1FIG4FZQ3M2CMWM6OUMNT3Ltxazz9OI9PAPVgLsAfRYPIEfrWtVkL
         1AK5TURlrwTkqXxpvOs46WIIvJFlzFF9U9DyBWq4I9GrSV/nrcJHHLPXazZ3kUH+TfqL
         vtrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=z0jYbSuM2A7vj2WRSnCHpCXmrIAzvssFmwAmhCHBSEo=;
        b=Ovyi+zBrStESJPrcWVsBVAH+in9VuBKSksY6fBu3f9GttK6CaLKrjsTFewyoAPGHBs
         M9dhHeGpCGOORSZMI3lMKZhYI/tB+CgKh+kX/fXqDEINw3Yeq/ex5fHzyeJqUTKvBnpl
         vh/XpdzMm43FUU23O7DCcbKM9vjz0+0s8Cl9Y0sAQdyhbmv9eTh3NFyBaaSuwxfA3maA
         YTVNPvB5PkgyiK3zbICDqtfQgMW9H8CUc8bhklmun7gVMHi0SgxiBlF/EceySHxG4XSC
         QO2Fg9Y0bY5lbYepd63a4InH2VZykWqq7q+iMEooz3FB3gUMNwJF8PDuJPfAZODMGx8Y
         KOOg==
X-Gm-Message-State: AOAM533FgLt1g6XVoHg9Sk93OR5JIoxboJa0yU3hsrb7BFqMQgW4sEZZ
        0h6CsL+ykgqFx/C0GS4T1kGc0w==
X-Google-Smtp-Source: ABdhPJyN6aZnDw4AEl91NWEpYuIybD/5h2IcygpeviYHF8UN9qRx/2maQBrEcAUtwwRmtlRlduj85Q==
X-Received: by 2002:aca:fc92:: with SMTP id a140mr603776oii.4.1606792806105;
        Mon, 30 Nov 2020 19:20:06 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 189sm127035oob.26.2020.11.30.19.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 19:20:05 -0800 (PST)
Date:   Mon, 30 Nov 2020 21:20:03 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: Add gpi dma node
Message-ID: <X8W2Y9gH7HBrx20v@builder.lan>
References: <20201130063946.2060317-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201130063946.2060317-1-vkoul@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 30 Nov 00:39 CST 2020, Vinod Koul wrote:

> This add the device node for gpi_dma0 and gpi_dma1 instances found in
> sdm845.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 45 ++++++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 6465a6653ad9..a6f41678794c 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -1114,6 +1114,28 @@ opp-128000000 {
>  			};
>  		};
>  
> +		gpi_dma0: dma-controller@800000 {
> +			#dma-cells = <3>;

I know you like dma, but may I have the compatible etc first in the
nodes? Perhaps move #dma-cells down by the other dma- properties?

> +			compatible = "qcom,sdm845-gpi-dma";
> +			reg = <0 0x00800000 0 0x60000>;
> +			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-channels = <13>;
> +			dma-channel-mask = <0xfa>;
> +			iommus = <&apps_smmu 0x0016 0x0>;
> +		};
> +
>  		qupv3_id_0: geniqup@8c0000 {
>  			compatible = "qcom,geni-se-qup";
>  			reg = <0 0x008c0000 0 0x6000>;
> @@ -1454,6 +1476,29 @@ uart7: serial@89c000 {
>  			};
>  		};
>  
> +		gpi_dma1: dma-controller@0xa00000 {
> +			#dma-cells = <3>;
> +			compatible = "qcom,sdm845-gpi-dma";
> +			reg = <0 0x00a00000 0 0x60000>;
> +			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 295 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 299 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-channels = <13>;
> +			dma-channel-mask = <0xfa>;
> +			iommus = <&apps_smmu 0x06d6 0x0>;
> +			status = "disabled";

I don't think it's nice to keep gpi_dma0 enabled and gpi_dma1 disabled.
Either we do both enabled in sdm845.dtsi or we do both disabled and rely
on the boards to enable what they need.

Regards,
Bjorn

> +		};
> +
>  		qupv3_id_1: geniqup@ac0000 {
>  			compatible = "qcom,geni-se-qup";
>  			reg = <0 0x00ac0000 0 0x6000>;
> -- 
> 2.26.2
> 
