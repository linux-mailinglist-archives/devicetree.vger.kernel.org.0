Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F9E50013D
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 23:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbiDMViO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 17:38:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbiDMViN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 17:38:13 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EE2256766
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:35:51 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id r64so1883733wmr.4
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KgpH8E8Be3mLImfDuc7rcAzwOJ8eNCA0wVEOLBBjmmo=;
        b=Pyb/JtRmDglYafeGT9DnYvtGO7mseoHJWlxBWUNQO3xPD/Hfw5SdposQc/zLfC8TZE
         U0vyMgWVViLZ6BmQUTkt7TZihL80XxzSm9bCf29CGU8jBa/+ew2rBWQFncxLhTCaCiBy
         RJZW0bwS9uIhiIeYIn7MZ1+g37gTgzQQfg/jQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KgpH8E8Be3mLImfDuc7rcAzwOJ8eNCA0wVEOLBBjmmo=;
        b=axaZTQselrbvKr2eYr9LArtDvmrsr1cyDFlbwSOXzeJCJunp2bXm4RpL/DAEMZin7E
         FEtKw/qQLEaYS+X7fcWZfUT8kc44Hn6Mb26XWjnhREkYW/t/PDlxjInpW8P6HfuG1/ng
         nsk0jyOcILihYbMtSvlmW2d0cC5Kj3FoqIE4B+FzmMjYE7/QLbwMIRawkwyzDV5RJIse
         EfbqdJS1t7w8ENTFVYNXkszgWpBJ3SYzCvrslHtE0x0C//9tw1KAnH3HCxp6d/asWgZg
         U41Gdu8xGjzidmylu3kbXk4SQ3ItrHqnVSilbEAiMXBjaP/BBnawYaqRulXkVfuivezX
         XaYA==
X-Gm-Message-State: AOAM532lW11u5FJp/+Ow/Y28Yx8B3nfkLxNARqb0TpmcWIzQ4zHuo9w/
        6+M4X61Ebn0nbLoDu9RfY5uLeQ==
X-Google-Smtp-Source: ABdhPJylm1FwSAG+uiLlo8hTEXpIbhcw0aXer6Zn3oVPIznnRJNzbsJ2zE5Z9PwqlDrOi7TQ2BVALA==
X-Received: by 2002:a05:600c:34d4:b0:38c:5ec7:1e38 with SMTP id d20-20020a05600c34d400b0038c5ec71e38mr558062wmq.184.1649885749834;
        Wed, 13 Apr 2022 14:35:49 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-188-217-56-163.cust.vodafonedsl.it. [188.217.56.163])
        by smtp.gmail.com with ESMTPSA id t6-20020a05600c198600b0038cafe3d47dsm8705wmq.42.2022.04.13.14.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 14:35:49 -0700 (PDT)
Date:   Wed, 13 Apr 2022 23:35:46 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>,
        linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mm-evk: add pwm1/backlight support
Message-ID: <20220413213546.GA11567@tom-ThinkPad-T14s-Gen-2i>
References: <20220413160900.36271-1-tommaso.merciai@amarulasolutions.com>
 <11f8bf43-d6f7-12fe-f5da-1f7a397c4317@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11f8bf43-d6f7-12fe-f5da-1f7a397c4317@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 13, 2022 at 06:31:34PM +0200, Ahmad Fatoum wrote:
> Hello Tomasso,
> 
> On 13.04.22 18:08, Tommaso Merciai wrote:
> > Add pwm1/backlight support nodes for imx8mm_evk board.
> > Align with u-boot dts
> > 
> > References:
> >  - https://patchwork.ozlabs.org/project/uboot/patch/20220326111911.13720-9-tommaso.merciai@amarulasolutions.com/
> > 
> > Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> > ---
> > Changes since v1:
> >  - Fix commit body
> >  - Enable pwm, backlight
> > 
> > Changes since v2:
> >  - Remove status okay from pwm1,backlight (enable as default)
> > 
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > index 6d67df7692f1..c50d2cc3ca71 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > @@ -59,6 +59,14 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
> >  		enable-active-high;
> >  	};
> >  
> > +	backlight: backlight {
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
> > @@ -395,6 +403,11 @@ &wdog1 {
> >  	status = "okay";
> >  };
> >  
> > +&pwm1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_backlight>;
> 
> imx8mm.dtsi has &pwm1 { status = "disabled" };
> Where is it enabled?

Hi Ahmad,
Thanks for review, update in v4.

Tommaso
> 
> > +};
> > +
> >  &iomuxc {
> >  	pinctrl_fec1: fec1grp {
> >  		fsl,pins = <
> > @@ -549,4 +562,10 @@ pinctrl_wdog: wdoggrp {
> >  			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x166
> >  		>;
> >  	};
> > +
> > +	pinctrl_backlight: backlightgrp {
> > +		fsl,pins = <
> > +			MX8MM_IOMUXC_GPIO1_IO01_PWM1_OUT	0x06
> > +		>;
> > +	};
> >  };
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

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
