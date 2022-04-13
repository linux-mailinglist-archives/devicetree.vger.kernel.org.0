Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABDF44FF653
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 13:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233812AbiDMMBE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 08:01:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235476AbiDMMAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 08:00:44 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A883C5DA04
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 04:58:14 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id bg10so3459183ejb.4
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 04:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=t+e8bSlO8HlFBx5QkC+YWhBBQ1KUbhRpOI9qNhDs95Q=;
        b=i3WWwCf7E9CLGuSIAfuJvq73Vxp3xh8JfHrEwq8LVCHc/Lqg0XG/6gf/RJ29vCQnMH
         NMbMNVFLkjmF88dC0oiBDKaY/HZRFuqP3yJe4UwvgvMDUjWYjHdX/wjwU7xAuii3U0uH
         H+I6DYLijb6SNsb01RPyEa5xpnfOtYw8FFUeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=t+e8bSlO8HlFBx5QkC+YWhBBQ1KUbhRpOI9qNhDs95Q=;
        b=LwmqDcXQBbV/+HQVylOSWYFKpG2w/Wh9TwId5zIZWfMvLCEKR5XULV9ga3VHw2UIn3
         jQN8wGcW/7hLYGYnhg75nYxZUE9l5+1LQhJLbrT267hNycnNXuW5AdqyCmCHJnN8WapG
         VPPw5En7OvdXkk9hZPNQlH1rY5g0S41fWgGd73UaSnOtbftZuuojKMWs6/ILlD54u/iS
         SB049jK8SStjdIfvpFk5qQRONSHyY7kcaVcp6VZXxZ8BQcSHodz5kl4d//wxvej5dutJ
         Axfh1RdQreB3dzM0OgUxaORk3QUlF+tJ3xefXlgyY5ch8hKc12b2bjhGHjauJkFnabch
         oxUg==
X-Gm-Message-State: AOAM5304XgaIc7TyxucOFMW+KZEx4+uLrcM9FzC30X3G4j2+/Xbrsmva
        0WERP/lbAKM/0Q15qay/3phWQg==
X-Google-Smtp-Source: ABdhPJwXevi2Yb3Y0tNYmPOsqfGxi/mGuGC3rrIyPQKgl7WIkrLCz3vEz1hoO92Z5sYeOExAS0ZJEw==
X-Received: by 2002:a17:906:d54e:b0:6db:b241:c0e2 with SMTP id cr14-20020a170906d54e00b006dbb241c0e2mr37937273ejc.724.1649851093155;
        Wed, 13 Apr 2022 04:58:13 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (host-95-245-147-71.retail.telecomitalia.it. [95.245.147.71])
        by smtp.gmail.com with ESMTPSA id s4-20020a170906bc4400b006e893908c4csm3262077ejv.60.2022.04.13.04.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 04:58:12 -0700 (PDT)
Date:   Wed, 13 Apr 2022 13:58:10 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-amarula@amarulasolutions.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, Li Jun <jun.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mm-evk: add pwm1/backlight support
Message-ID: <20220413115810.GA4713@tom-ThinkPad-T14s-Gen-2i>
References: <20220413102052.20207-1-tommaso.merciai@amarulasolutions.com>
 <c6fe3895-29b2-a371-ccae-c5a12c45d4f1@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6fe3895-29b2-a371-ccae-c5a12c45d4f1@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 13, 2022 at 12:28:00PM +0200, Krzysztof Kozlowski wrote:
> On 13/04/2022 12:20, Tommaso Merciai wrote:
> > Add pwm1/backlight support nodes for imx8mm_evk board. Align with u-boot
> > dts
> > 
> > References:
> >  - https://patchwork.ozlabs.org/project/uboot/patch/20220326111911.13720-9-tommaso.merciai@amarulasolutions.com/
> > 
> > Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 21 +++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > index 6d67df7692f1..55566708f667 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > @@ -59,6 +59,15 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
> >  		enable-active-high;
> >  	};
> >  
> > +	backlight: backlight {
> > +		status = "disabled";
> 
> Why disabled?
> 
> > +		compatible = "pwm-backlight";
> > +		pwms = <&pwm1 0 5000000>;
> > +		brightness-levels = <0 255>;
> > +		num-interpolated-steps = <255>;
> > +		default-brightness-level = <250>;
> > +	};
> > +
> >  	ir-receiver {
> >  		compatible = "gpio-ir-receiver";
> >  		gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
> > @@ -395,6 +404,12 @@ &wdog1 {
> >  	status = "okay";
> >  };
> >  
> > +&pwm1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_backlight>;
> > +	status = "disabled";
> 
> Same here.
> 
> 
> Best regards,
> Krzysztof

Hi Krzysztof,
I think is better to keep disable into .dtsi and enable it at .dts
level.
What do you think about?

Regards,
Tommaso
-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
