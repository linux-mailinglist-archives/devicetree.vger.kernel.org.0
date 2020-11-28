Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2240B2C74C3
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:22:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388329AbgK1Vtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731577AbgK1SxE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 13:53:04 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0498C094270
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:32:50 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id u2so3714754pls.10
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XAzzW0mavnqneibsETK+KKX6CT9p1psP1fRJO3+Q4pY=;
        b=J39DEjXzV7H1ZDOzklWFMSJOyzibGMKIFkvFOg/2cKo3bWff4eZLjaBYnkVFQgFfEc
         a0j/WBXF/vNfd9KR6z3MH1asTgtpm0HlYgyWWbvIoer3aNk2e7mNN+Jzk7njlEYJyvlZ
         3L5pesIbjvkpbPkdyYJsZ6yjR8308YT0ZFa0XbH48yeEIAFXOxkjfv0VzsO+5TS5PsY3
         JV7Z6/yOklEJsVZihOQZ2i6RF6GnAWeV2rbtYLM3NYuJjIyXOrqQ882nckh4EhedU7zO
         CD3+K2pfl16kFeK5wTDDHrcu2vaJ4dJ0IcBd8VX/l2cPetzrcOFPsB3gNtrXGYcU6kmo
         d92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XAzzW0mavnqneibsETK+KKX6CT9p1psP1fRJO3+Q4pY=;
        b=pf/RZQdnCqXR6uQ610amrjaXJkJ2JPfFooF28IN9x4+LvvB8YTRZ5iu1k4b7uGlAgB
         D3PdD7ZXVOTaG+sOrlerPGXz1L7UDbFEpm6+vUOzdJ3mvSBlD2UxyfOkT7NAxyMB2E48
         5EbUcaXcbYw/pr4YNILLNxIJfTMetq7wFZyouUZ24Lf+SmDCOy7YCgsBK22b4BXDzvf1
         8oPNh3bEW07h2mct1aKK+el51GqXEHiQ3OiRJRceB+4WLBBfilLgHA12WQhiOatoC13J
         Agj9yE+GK+Phi2KRN86R/KuA6oK5XieuZ/iGOza+nb5pmJng7f3LZkxqiRWJf081Pxei
         Dq6w==
X-Gm-Message-State: AOAM530YFqJcthSRv3cA1SDT7oaI1Faoik/D8h9/L6A4rXo97frhzdt2
        OShO5bTtBUYrOk1WEQ8pkIDi
X-Google-Smtp-Source: ABdhPJw1gMFLQnVw7U3VNOXKsSfMHwE3LZGNqKyXpik3yzK6QS6hCZ0koWP20Qzo1PTmrTJw3tZk3w==
X-Received: by 2002:a17:902:b18c:b029:d9:f:15fc with SMTP id s12-20020a170902b18cb02900d9000f15fcmr10099222plr.29.1606548770439;
        Fri, 27 Nov 2020 23:32:50 -0800 (PST)
Received: from thinkpad ([2409:4072:15:c612:48ab:f1cc:6b16:2820])
        by smtp.gmail.com with ESMTPSA id 196sm9860943pfz.11.2020.11.27.23.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 23:32:49 -0800 (PST)
Date:   Sat, 28 Nov 2020 13:02:42 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 07/18] arm: dts: owl-s500: Add pinctrl & GPIO support
Message-ID: <20201128073242.GW3077@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <d63b1486c93b4ccc1fca9b837b150acb67c6d402.1605823502.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d63b1486c93b4ccc1fca9b837b150acb67c6d402.1605823502.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 01:56:01AM +0200, Cristian Ciocaltea wrote:
> Add pinctrl node for Actions Semi S500 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm/boot/dts/owl-s500.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
> index 449e9807c4ec..b16172615db0 100644
> --- a/arch/arm/boot/dts/owl-s500.dtsi
> +++ b/arch/arm/boot/dts/owl-s500.dtsi
> @@ -6,6 +6,7 @@
>   */
>  
>  #include <dt-bindings/clock/actions,s500-cmu.h>
> +#include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/owl-s500-powergate.h>
>  #include <dt-bindings/reset/actions,s500-reset.h>
> @@ -208,6 +209,25 @@ sps: power-controller@b01b0100 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		pinctrl: pinctrl@b01b0000 {
> +			compatible = "actions,s500-pinctrl";
> +			reg = <0xb01b0000 0x40>, /* GPIO */
> +			      <0xb01b0040 0x10>, /* Multiplexing Control */
> +			      <0xb01b0060 0x18>, /* PAD Control */
> +			      <0xb01b0080 0xc>;  /* PAD Drive Capacity */
> +			clocks = <&cmu CLK_GPIO>;
> +			gpio-controller;
> +			gpio-ranges = <&pinctrl 0 0 132>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>, /* GPIOA */
> +				     <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>, /* GPIOB */
> +				     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>, /* GPIOC */
> +				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>, /* GPIOD */
> +				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>; /* GPIOE */
> +		};
> +
>  		dma: dma-controller@b0260000 {
>  			compatible = "actions,s500-dma";
>  			reg = <0xb0260000 0xd00>;
> -- 
> 2.29.2
> 
