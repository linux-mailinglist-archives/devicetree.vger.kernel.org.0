Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 920822C74E9
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388500AbgK1Vtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732780AbgK1TDG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 14:03:06 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A83B8C094277
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:35:25 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id 34so6029696pgp.10
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=c3+ng2B+tTiUpQQ0lgESlSjKOYSVTBq9eyOCJWVLVTA=;
        b=Yc1WmqvYkaQLw3K6ZDAv8MpoSqsa2F2XC4Rnoy2ec2oMD3SIS1a2c/XpiJnl6kQ5cp
         mLRXJ1jPCzWNKi/MsIHnCZT2ac87iyLVYdp1j65opP1BggFaVrFf9CFL0jyHnvkKYDFS
         5AxCyDR2/gfc5kYxHis++OprDLdSKFgnOlO/E1Qfh9CCkcr2R/Ob5gXtGS5sKb2RTP1A
         45VeVjCc8IDgiyMyHM6tf+JPmNYWFMsDOXl5XpMrbv9ritn22naC91sM+k+wmhiyJXvz
         ZvpXGCOLN/UFhXdET/4GfhtnBU9mPHhwk29Yr7uYyoTwT6uPqZ8TdjU5HF9EtDRFttGa
         YiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=c3+ng2B+tTiUpQQ0lgESlSjKOYSVTBq9eyOCJWVLVTA=;
        b=jdafPj1c4ICQOWCt/0+6mTCMHxEC7JYQs2uY7myL4kLY8gjmroLzpW/edcTt4/IH1b
         SNiXGwZJUiUBlM7BjysCnSkGtsTIYoZHvcPfBlfcV3kCoXaK0xZw+AhwVzkTWQ4nHACS
         fFv+pnkOmIIqhQgAXvE6W6q4Z3MBTf99ZRCfHLW2Xl5R0LvKz08OLaZObbOTYbvBnu1h
         RfOiyv3qvQr2N0ge2HYVWG1F4ou5BsJe9Aw3Uwb+HLvmbR6roVeS5slN13phetgzzAQg
         wlTsb/IKs0PTSTwWGIc/NAGTwxKREDby9tAvmNVIIpdf65FejXg4DQMBEf9JqPJxekzU
         8xpQ==
X-Gm-Message-State: AOAM530noyNzpdTA6n57ikOvqR4932jReUNXhxu8arP1iE3JglbnIG6Q
        Yyj0diF7VncV1lJX0N+pzg2L
X-Google-Smtp-Source: ABdhPJxrT1tQMsiTju0IppUjhNYg+2/Hw6NeziuDvZctcQlDjDqIYd7LBPqt2UE8gwdAfhzQL589dQ==
X-Received: by 2002:a05:6a00:804:b029:198:28cb:5564 with SMTP id m4-20020a056a000804b029019828cb5564mr10418351pfk.34.1606548925202;
        Fri, 27 Nov 2020 23:35:25 -0800 (PST)
Received: from thinkpad ([2409:4072:15:c612:48ab:f1cc:6b16:2820])
        by smtp.gmail.com with ESMTPSA id l136sm9961463pga.27.2020.11.27.23.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 23:35:24 -0800 (PST)
Date:   Sat, 28 Nov 2020 13:05:16 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Wolfram Sang <wsa@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 13/18] arm: dts: owl-s500: Add I2C support
Message-ID: <20201128073516.GZ3077@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <99e81f582b19d0e13abf506c1d7dda0f0a857fd5.1605823502.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <99e81f582b19d0e13abf506c1d7dda0f0a857fd5.1605823502.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 01:56:07AM +0200, Cristian Ciocaltea wrote:
> Add I2C controller nodes for Actions Semi S500 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm/boot/dts/owl-s500.dtsi | 40 +++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
> index 7af7c9e1119d..55f8b8c2e149 100644
> --- a/arch/arm/boot/dts/owl-s500.dtsi
> +++ b/arch/arm/boot/dts/owl-s500.dtsi
> @@ -193,6 +193,46 @@ cmu: clock-controller@b0160000 {
>  			#reset-cells = <1>;
>  		};
>  
> +		i2c0: i2c@b0170000 {
> +			compatible = "actions,s500-i2c";
> +			reg = <0xb0170000 0x4000>;
> +			clocks = <&cmu CLK_I2C0>;
> +			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c1: i2c@b0174000 {
> +			compatible = "actions,s500-i2c";
> +			reg = <0xb0174000 0x4000>;
> +			clocks = <&cmu CLK_I2C1>;
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c2: i2c@b0178000 {
> +			compatible = "actions,s500-i2c";
> +			reg = <0xb0178000 0x4000>;
> +			clocks = <&cmu CLK_I2C2>;
> +			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c3: i2c@b017c000 {
> +			compatible = "actions,s500-i2c";
> +			reg = <0xb017c000 0x4000>;
> +			clocks = <&cmu CLK_I2C3>;
> +			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		timer: timer@b0168000 {
>  			compatible = "actions,s500-timer";
>  			reg = <0xb0168000 0x8000>;
> -- 
> 2.29.2
> 
