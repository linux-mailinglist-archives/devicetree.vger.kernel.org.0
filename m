Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D432968919F
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 09:09:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232594AbjBCIIL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 03:08:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232474AbjBCIHd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 03:07:33 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A950945CC
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 00:05:49 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso5411130wms.5
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 00:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TBb+YU7SO9tXMHbbbe3lRQtLl3hjjENAuVRnnvbAouQ=;
        b=QJE6CvGnrJbrhcbIULlyIgh7EGrD/BwwrwxSTGVar8/OGB3ZD664u+4mW1oeAiTvxL
         lVL2UzYpXKst2uCB87NqMeu42JuiEUyowVPupvbw1E3u7xoVew8l5r929Nyv1yn2I45F
         6xNvQLFq1Mt4/aVm0Rqk0xkqoyWVfSx5ZSbX0gS/mCCODuPDnAvCJvbaZv7KLQ9LiMyH
         0aQ4RZVrusZIOYaylhzODbwfpqZv309y+tOscnTGB+kO5qGnsB+zZb/A0S4+JNYWf9SR
         +So0qZD3DqezJR9T/jwRHnmbNKFKLAzWZPdmdLlKCwiN0S3sPbElJg1H7S3/Q851ywlB
         ffqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TBb+YU7SO9tXMHbbbe3lRQtLl3hjjENAuVRnnvbAouQ=;
        b=7ZBOXQxM15Cml2i6Q/9mH9uXUNpg9+hyhV3XCVg6+kMd+AVfLqGpLU3HY0sHOEkbHu
         HjrKKF7A8CBbcaI3VzFoM85+aqOxLPVMUtHMR+t5ef6prb+j/zj5Gk0WtwFRw4YFEyyC
         K//g/TxLENmPKkU24RvIqboH4+XfYZLRhyGnj85lcPzyBdX4WPcLGUSBzmi2PZNHixBz
         m7ntl5soLk9e7fmJePlB5/r0mk4GMPAkXbxRs2jDtxh4LbPhaRUbvtjGpKPHcBKJRLU5
         TTLCvgnoEJOplpvSP6tC3KLlSqEAP6BfZMB04T9edpzYAm8SDWhCqpMz/zpPFMUwVDRg
         wIHg==
X-Gm-Message-State: AO0yUKUO4u1CKSYuw3+yGyc2uzXuzHEdEI4aFCUQgmIg5EZsvWFjgs+z
        V/uzPV/mcWt6eDgIav+CdFuiRw==
X-Google-Smtp-Source: AK7set9Qeevei0rAJimV5DKfjxA3Glzr4ERMiDyhAqNUYlKx3bpWEPIWMw274SSUFsMq6LXct0E8iQ==
X-Received: by 2002:a05:600c:6018:b0:3dc:3f51:c697 with SMTP id az24-20020a05600c601800b003dc3f51c697mr3796816wmb.18.1675411547943;
        Fri, 03 Feb 2023 00:05:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:7407:d8b9:ec7a:537? ([2a01:e0a:982:cbb0:7407:d8b9:ec7a:537])
        by smtp.gmail.com with ESMTPSA id m5-20020a056000008500b002bf95500254sm1368211wrx.64.2023.02.03.00.05.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 00:05:46 -0800 (PST)
Message-ID: <7bf5f842-3471-b07b-704c-cc03b87f2ee3@linaro.org>
Date:   Fri, 3 Feb 2023 09:05:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/4] arm64: dts: meson: adjust order of some compatibles
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Thierry Reding <thierry.reding@gmail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, linux-pwm@vger.kernel.org
References: <8df4ceec-663c-dc68-d775-5caeb02c0cca@gmail.com>
 <1ce888df-6096-73de-a98a-354d086428d4@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <1ce888df-6096-73de-a98a-354d086428d4@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 20:59, Heiner Kallweit wrote:
> During review of a new yaml binding, affecting these dts, it turned out
> that some compatibles aren't ordered as they should be. Order should be
> most specific to least specific.
> 
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 4 ++--
>   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> index 923d2d8bb..12ef6e81c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
> @@ -300,8 +300,8 @@ &ethmac {
>   };
>   
>   &gpio_intc {
> -	compatible = "amlogic,meson-gpio-intc",
> -		     "amlogic,meson-gxbb-gpio-intc";
> +	compatible = "amlogic,meson-gxbb-gpio-intc",
> +		     "amlogic,meson-gpio-intc";
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> index 04e9d0f1b..af912f698 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> @@ -312,8 +312,8 @@ &clkc_AO {
>   };
>   
>   &gpio_intc {
> -	compatible = "amlogic,meson-gpio-intc",
> -		     "amlogic,meson-gxl-gpio-intc";
> +	compatible = "amlogic,meson-gxl-gpio-intc",
> +		     "amlogic,meson-gpio-intc";
>   	status = "okay";
>   };
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
