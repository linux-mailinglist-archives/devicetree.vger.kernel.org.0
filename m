Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C04F42CF9ED
	for <lists+devicetree@lfdr.de>; Sat,  5 Dec 2020 07:02:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726247AbgLEGCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Dec 2020 01:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgLEGCP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Dec 2020 01:02:15 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C407C0613D1
        for <devicetree@vger.kernel.org>; Fri,  4 Dec 2020 22:01:35 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id 131so5277951pfb.9
        for <devicetree@vger.kernel.org>; Fri, 04 Dec 2020 22:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=u+a+qT7f8D/d0Caav9Ht6L5H18qAAw+85S67uYfFDyU=;
        b=WGnZwSDcwjCvbxb7j49Qj8y/JkNzwU1MdZzc6ypLp914aSUQJQVM7s8BzcOoEU8Whn
         qfTgNkZ90ogX62MdppZfPTFFr3DQO52tNc1+ewM2p8aGNp78diglTkHTb3vrBcDlKwWl
         DYBy2Ys8CNpCFbmUi0JGFoX+Opy6TrQCBzHlG/4aiTGpiwW/FPiWE6z+YZ9GmxKWONoU
         MxwsMQZHo3kWW43jaLkSencYnys9AJdf5dgTKzvgio4yot3STTopkyyfZKIwmT8kyV3e
         9Tz7NXko3B6om9oo63pd8eCG/puVgP3bzppFOh0GTkaBvUnJGnIBelsXHPfEJklKpum0
         6ofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=u+a+qT7f8D/d0Caav9Ht6L5H18qAAw+85S67uYfFDyU=;
        b=WyxW8elHGG8OxKDehfyvz+6Nxu6sbOiaD56GBwOpj+uN6Vu1PH5DCCqUH5LGKHjzD3
         hhfIjL/Tht4pobSKnIKosbZqzZKB99wu5guZ5dqHv7/LQM5BayIZTd6RMdfJdQ8j4oSd
         TBlmZLJ1icVkpBdfRESq9U9ViEchjKL7XGbUemzMJ1CcjIAb3nZD3abAESsU/RAsdLl2
         7+vwteOWmXCWEd2sfuGk33WmBsqeX32jj5eA+KaWdajpkqa//FUUKnPpWWcV0+OY6ymj
         sYeeWCFLI0ghjLnUFgEQOax4BFMMerMopmnZKUgYG70TO8pE9TzDokvYNQ9ac0Qp0rCs
         iXKw==
X-Gm-Message-State: AOAM531F+D5hwPNF40EUSMQxyp1R8jtiPOftk0BZlS6YW60mSJ/OwCnh
        5SAoh6ayUAI6yIrXa07/uE9i
X-Google-Smtp-Source: ABdhPJwfAXVWWP85FtFVslRYT27X+DX4uQGC7ZSv7wv/vgiFbOx/5+OY2+neT9kCGMlPO/+ZkBYkyg==
X-Received: by 2002:a63:fc5f:: with SMTP id r31mr10534755pgk.90.1607148094755;
        Fri, 04 Dec 2020 22:01:34 -0800 (PST)
Received: from thinkpad ([2409:4072:648e:8bd1:74b2:a4d8:e3fe:225b])
        by smtp.gmail.com with ESMTPSA id h31sm5507670pgh.42.2020.12.04.22.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Dec 2020 22:01:34 -0800 (PST)
Date:   Sat, 5 Dec 2020 11:31:25 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 16/18] arm: dts: owl-s500-roseapplepi: Add uSD support
Message-ID: <20201205055901.GA3730@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <cf62e297a18518d54dd887a0bc531b18a50da5c5.1605823502.git.cristian.ciocaltea@gmail.com>
 <20201128073851.GC3077@thinkpad>
 <20201129183532.GA748744@BV030612LT>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201129183532.GA748744@BV030612LT>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 29, 2020 at 08:35:32PM +0200, Cristian Ciocaltea wrote:
> On Sat, Nov 28, 2020 at 01:08:51PM +0530, Manivannan Sadhasivam wrote:
> > On Fri, Nov 20, 2020 at 01:56:10AM +0200, Cristian Ciocaltea wrote:
> > > Add uSD support for RoseapplePi SBC using a fixed regulator as a
> > > temporary solution until PMIC support becomes available.
> > > 
> > > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> > > ---
> > >  arch/arm/boot/dts/owl-s500-roseapplepi.dts | 50 ++++++++++++++++++++++
> > >  1 file changed, 50 insertions(+)
> > > 
> > > diff --git a/arch/arm/boot/dts/owl-s500-roseapplepi.dts b/arch/arm/boot/dts/owl-s500-roseapplepi.dts
> > > index 800edf5d2d12..fe9ae3619422 100644
> > > --- a/arch/arm/boot/dts/owl-s500-roseapplepi.dts
> > > +++ b/arch/arm/boot/dts/owl-s500-roseapplepi.dts
> > > @@ -14,6 +14,7 @@ / {
> > >  	model = "Roseapple Pi";
> > >  
> > >  	aliases {
> > > +		mmc0 = &mmc0;
> > >  		serial2 = &uart2;
> > >  	};
> > >  
> > > @@ -25,6 +26,55 @@ memory@0 {
> > >  		device_type = "memory";
> > >  		reg = <0x0 0x80000000>; /* 2GB */
> > >  	};
> > > +
> > > +	/* Fixed regulator used in the absence of PMIC */
> > > +	sd_vcc: sd-vcc {
> > 
> > Is this the exact name in the schematics?
> 
> Yes, it is referred as "SD_VCC". Once the support for the ATC260x PMIC
> will be available, the following item will be present in the regulators
> list:
> 
>   sd_vcc: switchldo1 {
> 	regulator-name = "SD_VCC";
> 	regulator-min-microvolt = <3000000>;
> 	regulator-max-microvolt = <3300000>;
> 	regulator-always-on;
> 	regulator-boot-on;
>   };

okay, looks fine to me.

Thanks,
Mani

> 
> Thanks,
> Cristi
> 
> > Thanks,
> > Mani
> > 
> > > +		compatible = "regulator-fixed";
> > > +		regulator-name = "fixed-3.1V";
> > > +		regulator-min-microvolt = <3100000>;
> > > +		regulator-max-microvolt = <3100000>;
> > > +		regulator-always-on;
> > > +	};
> > > +};
> > > +
> > > +&pinctrl {
> > > +	mmc0_pins: mmc0-pins {
> > > +		pinmux {
> > > +			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
> > > +				 "sd0_cmd_mfp", "sd0_clk_mfp";
> > > +			function = "sd0";
> > > +		};
> > > +
> > > +		drv-pinconf {
> > > +			groups = "sd0_d0_d3_drv", "sd0_cmd_drv", "sd0_clk_drv";
> > > +			drive-strength = <8>;
> > > +		};
> > > +
> > > +		bias0-pinconf {
> > > +			pins = "sd0_d0", "sd0_d1", "sd0_d2",
> > > +			       "sd0_d3", "sd0_cmd";
> > > +			bias-pull-up;
> > > +		};
> > > +
> > > +		bias1-pinconf {
> > > +			pins = "sd0_clk";
> > > +			bias-pull-down;
> > > +		};
> > > +	};
> > > +};
> > > +
> > > +/* uSD */
> > > +&mmc0 {
> > > +	status = "okay";
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&mmc0_pins>;
> > > +	no-sdio;
> > > +	no-mmc;
> > > +	no-1-8-v;
> > > +	cd-gpios = <&pinctrl 117 GPIO_ACTIVE_LOW>;
> > > +	bus-width = <4>;
> > > +	vmmc-supply = <&sd_vcc>;
> > > +	vqmmc-supply = <&sd_vcc>;
> > >  };
> > >  
> > >  &twd_timer {
> > > -- 
> > > 2.29.2
> > > 
