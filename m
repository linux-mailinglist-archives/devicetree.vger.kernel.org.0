Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D1D1759166
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 11:19:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231310AbjGSJTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 05:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230297AbjGSJTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 05:19:39 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A4A2188
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:19:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-992f15c36fcso913972366b.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689758376; x=1692350376;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UCTb0CeiLFm4PY3y7pzoV9K1yjymvqhL/I91kkBD0gk=;
        b=GWSvjEvsOf2B2KiLJDpvNGT6CecvzOd5fdjr0x22h4rhHISTdqQ3Uv83iIh7woXUDN
         gEMh+Dulw6y8+6B1g0wGto1ed2p8BQ2o69pXeYaUD0maQ52Ch6KBvqK7zqQnzv7oT89w
         F9Tg4S9+16YeOFiKDtO1JCwHl1oO/x8+kCX7hsNRJQbtYeSZdxL0gNz4crRXG/NslkK+
         TZ7uOrnmTRr1KJ7qgzOuNnm8bBSVWrZHX3romchdnlsCE3v4c2s+GPPTHJ/7t1Glpocu
         UuZO89iOHm5l2O9PLhaFNLlym5rIEgee0SrYhzk7qiTFDTZemLJ8t5SzzWeNGmDy9ADJ
         l0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689758376; x=1692350376;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCTb0CeiLFm4PY3y7pzoV9K1yjymvqhL/I91kkBD0gk=;
        b=d8lNjM9u9TPw6OxXgLfVMv5UY0MdR5IoU1L5+uzwlyecT3+k5pPH9Ot38fuUTPBxyI
         /cYyzdpewmV/x5tc60MfZeEq7TD5raCe8tJ2bXoW5X5NWjZjSBMwjGsiEXJNW7WEPwMf
         wvjY5mF6CyEHMR4x32WXdfxLuAIHwiOmsvr+UUl00K1uHcoz4PTwJj83DJFdHSTx7pzt
         TUQyZXu1+JEqXBM65KpG07qaCt4iafiCKustNt//qe9PVEweIspJDVYRiYf6ptbtmbgo
         kWzuhhhgPKanMzzp8aMBxTIZsQfqaUVQ7G5Ky7yuskuvSF5GR3sOoYX6JYtuVpFU/NkY
         4KFw==
X-Gm-Message-State: ABy/qLaS58vzHKqPwS+gXMprjpB4T4m+nI2WywT+3YWDJBLnwqvarObH
        xz4EOgtCyOobDs1RYGiTsF0Mqw==
X-Google-Smtp-Source: APBJJlEuanYoSn4+AGZxQuKVURtBEky1XwbGnKUFmzYTrx1uRuShWIo9iE/YUUZPDtMFtY0Lvpj90A==
X-Received: by 2002:a17:906:db:b0:994:1eb4:6898 with SMTP id 27-20020a17090600db00b009941eb46898mr2154381eji.9.1689758376500;
        Wed, 19 Jul 2023 02:19:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ks20-20020a170906f85400b009929c09abdfsm2108209ejb.70.2023.07.19.02.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 02:19:36 -0700 (PDT)
Message-ID: <b03be798-6fd6-71ea-7546-9f1dab9b65cb@linaro.org>
Date:   Wed, 19 Jul 2023 11:19:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 7/7] ARM: dts: exynos: k3g: Add display support
Content-Language: en-US
To:     Markuss Broks <markuss.broks@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230716220644.22158-1-markuss.broks@gmail.com>
 <20230716220644.22158-9-markuss.broks@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230716220644.22158-9-markuss.broks@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 00:05, Markuss Broks wrote:
> This device has Samsung S6E3FA2 DSI display installed,

Full stop.

> this adds the device-tree bindings for it but two things

Please do not use "This commit/patch", but imperative mood. See longer
explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> prevent it from being fully usable: one is a bug in Exynos5
> DSI subsystem, which I believe is not tested properly;

Full stop.

> the bug occurs randomly regardless of any variables, but it
> seems to occur less if the Exynos DRM kernel module is loaded
> later in the kernel boot process (the bug concludes in display
> filling with static) ; another issue is that efforts

Full stop.

> to support the S6E3FA2 panel are still going on, and the driver
> for the panel is not in the kernel tree yet.
> 
> Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
> ---
>  arch/arm/boot/dts/exynos5422-samsung-k3g.dts | 41 ++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos5422-samsung-k3g.dts b/arch/arm/boot/dts/exynos5422-samsung-k3g.dts
> index e019b630db94..954de392afbf 100644
> --- a/arch/arm/boot/dts/exynos5422-samsung-k3g.dts
> +++ b/arch/arm/boot/dts/exynos5422-samsung-k3g.dts
> @@ -203,6 +203,42 @@ &cpu4 {
>  	cpu-supply = <&buck6_reg>;
>  };
>  
> +&mixer {
> +	status = "okay";
> +};
> +
> +&fimd {

Mixed order.

> +	status = "okay";
> +	samsung,invert-vclk;
> +};
> +
> +&dsi {
> +	status = "okay";
> +
> +	samsung,pll-clock-frequency = <24000000>;
> +	samsung,burst-clock-frequency = <500000000>;
> +	samsung,esc-clock-frequency = <16000000>;
> +
> +	vddcore-supply = <&ldo8_reg>;
> +	vddio-supply = <&ldo10_reg>;
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	panel@0 {
> +		reg = <0>;
> +		compatible = "samsung,s6e3fa2";

Compatible is always the first property. Second is reg.



Best regards,
Krzysztof

