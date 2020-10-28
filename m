Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4915229DB3B
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 00:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725890AbgJ1XqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 19:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728764AbgJ1Xpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 19:45:46 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C53B1C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:45:45 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id a72so820112wme.5
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zrUkUnQWdd+Y/Q8i7IOb2KIFyQ5NaKYRP/IYCUM5/+o=;
        b=JrISsXlyRVaK23OpNAQoKp7miwW6GWni2F4aktn0FHoa2pYYDJAM5bgevk5mGCAmcb
         TxNkGiJk4LVTwLSfB22U8RzOJNxBQZkmKoWBOrgdwirKo0yFwscx2cJIPvLJS1oucsti
         46RuIPA96cI6uuIVXOz/aiul4/A3EnykMCPB97d46zs4npDhHui51LvugX8PsXisuYAc
         JcZMdH0a/PDKq4Hu1afYXYadQIlBr4UhKGY/e7gM8D/jM/juHmTav/9SmEskI/h374PL
         9zdmk0MDpmtovVF4oOJrMbT//x1fqnDH2WwGdgf6xC8Hrlr0ciOiMvLk5DK2YsYPiq8g
         c5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zrUkUnQWdd+Y/Q8i7IOb2KIFyQ5NaKYRP/IYCUM5/+o=;
        b=iEroudiseFelpBjW7IEEch0/Wmd7azoC3/jyUYSOVJPPTNItBPBSFDlXvNfEwLmWXg
         Q2tbQrydb2WryzQRNjyQQOQ9rhnCfaQ+wzBNy0l14DaMqsULNpwaQYsM8q4U5l7iWvAl
         +SjTskKaUcs/KJLYu9Vm2d/JzkMOTTLT2gSta0ZliQFNQk6VAwzKxlMpolxN1FZ/tGr1
         E/1TFTBUgm72qF4jvLeymLB/Nch6rWvwgHKZQTn2F09vFTOUrblbvt9wGkPmBwLS7sdN
         2/GqHs5VxHBgVZLrA3I02kWhh03j3mSaZ7NYmYOFAvbR4tXbUbGLftIC1vshwuqwE3um
         XUSA==
X-Gm-Message-State: AOAM5319yypBRn6J6lqBbgXtKs+8/FikOoC72VR6Cym9FgeIqS6+b04c
        rJzCjb2JADwtCFUIWaQlGAdD9JhtcZtXTQ==
X-Google-Smtp-Source: ABdhPJz6KFPLqOpMtLn/WZ00OwZap4cgejbdYYKNUcMROfqSYDKD75hda1r765JOz5gvn1Lj7mQU3A==
X-Received: by 2002:a7b:c1d5:: with SMTP id a21mr5110912wmj.38.1603896980631;
        Wed, 28 Oct 2020 07:56:20 -0700 (PDT)
Received: from holly.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id s2sm7540795wmh.9.2020.10.28.07.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 07:56:19 -0700 (PDT)
Date:   Wed, 28 Oct 2020 14:56:17 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Alexandru Stan <amstan@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: trogdor: Add brightness-levels
Message-ID: <20201028145617.ermdpqomthxxj7qe@holly.lan>
References: <20201022050445.930403-1-amstan@chromium.org>
 <20201021220404.v3.2.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201021220404.v3.2.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 21, 2020 at 10:04:44PM -0700, Alexandru Stan wrote:
> We want userspace to represent the human perceived brightness.
> Since the led drivers and the leds themselves don't have a
> linear response to the value we give them in terms of perceived
> brightness, we'll bake the curve into the dts.
> 
> The panel also doesn't have a good response under 5%, so we'll avoid
> sending it anything lower than that.
> 
> Note: Ideally this patch should be coupled with the driver change from
> "backlight: pwm_bl: Fix interpolation", but it can work without it,
> without looking too ugly.
> 
> Signed-off-by: Alexandru Stan <amstan@chromium.org>

Acked-by: Daniel Thompson <daniel.thompson@linaro.org>



> ---
> 
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index bf875589d364..ccdabc6c4994 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -179,6 +179,15 @@ pp3300_fp_tp: pp3300-fp-tp-regulator {
>  	backlight: backlight {
>  		compatible = "pwm-backlight";
>  
> +		/* The panels don't seem to like anything below ~ 5% */
> +		brightness-levels = <
> +			196 256 324 400 484 576 676 784 900 1024 1156 1296
> +			1444 1600 1764 1936 2116 2304 2500 2704 2916 3136
> +			3364 3600 3844 4096
> +		>;
> +		num-interpolated-steps = <64>;
> +		default-brightness-level = <951>;
> +
>  		pwms = <&cros_ec_pwm 1>;
>  		enable-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>;
>  		power-supply = <&ppvar_sys>;
> -- 
> 2.28.0
