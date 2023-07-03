Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0815D745BB0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:53:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231444AbjGCLxy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:53:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229905AbjGCLxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:53:53 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83C4F115
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 04:53:50 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b5c231c23aso69140771fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 04:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688385229; x=1690977229;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y7usuPUVen89FXxQjJ0r6siNHOeEWF2y6IE7I/8VmeU=;
        b=dCC++3vpB9hMLu3VAyG/OXDezHyiCzbfsOmIk0z/Ted+gewjfHrn6XIn32gvObCqga
         FoC9jgY39okPqZO+8TZQMxt73112Dm9kJxMRWsgB6RoNthBY+XkoSIKuGksczHaqkC1l
         5TryykDxsu8BEu+fRz7Ac6t8q39pkIGGuAvFOEOt5VT1s5BSjwTQBYStz9HuQ1aJSbWl
         mpehUi2KeHcDzbvFfaBTZMQHvmmBwF+1H99IzrP5H1h/OHDlPQUysE4mGxBAre5kBMLJ
         oBURRIFkU30xRAJO4O0Nl5LvQGDie4tcbOlKdOgeUsE4Y8IAFB3OYinUt5qgoU2rpvlg
         BLDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688385229; x=1690977229;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y7usuPUVen89FXxQjJ0r6siNHOeEWF2y6IE7I/8VmeU=;
        b=gWaBmNQuwRCu+atTB9ZgqsLFnLP9yDagl7C0LaIN/Ps8xT/3MlmrqMMK3TfMt3oMXP
         xHOXKabfhiD1ky3/z5EwIUyADTCyXkQsMhsnsXBXGe6l1w7KaYk5xOTw/tyF6ZeHyLBL
         f+vvYY8fDZCHktuoUvyoIGi32rLhZn5FYIfBE2UIw5GoC9RuifnrphgLLiKfIRBisxi7
         fu2nVWfHELwHtfbN/8WgpkGefi1HoAE6alR5mgu/zoF3k0EStUTnAUrob69f+GGPpUa5
         vS/cu6oFZdGDqh0b9bFS39Qy7lFTn48v5i2MJvBXju0lnADvNrqQwga3gEHgMkEVG0G0
         /ahw==
X-Gm-Message-State: ABy/qLYAS0F3tPIxIZdGxbyzkYth1fdEXnifxzHu9FssJXqwgHz/8Bg3
        E8mazhRBafUtMCHUiCY7+nwbfw==
X-Google-Smtp-Source: APBJJlH2i4M0RKSeYKmcxCnr6hMmvon9g/f3R6DCZ25ajn483qb0ExK+mEeTBf7aH1BhxQz0mKuxqQ==
X-Received: by 2002:a2e:978e:0:b0:2b4:79c3:ce04 with SMTP id y14-20020a2e978e000000b002b479c3ce04mr5988618lji.50.1688385228929;
        Mon, 03 Jul 2023 04:53:48 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id t22-20020a2e9556000000b002b6daf32c7csm1848580ljh.97.2023.07.03.04.53.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:53:48 -0700 (PDT)
Message-ID: <cde2d5e2-88b6-04c3-187c-c2110df741d9@linaro.org>
Date:   Mon, 3 Jul 2023 13:53:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 21/27] ARM: dts: qcom: pm8018: switch to
 interrupts-extended
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
 <20230702134320.98831-22-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230702134320.98831-22-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2.07.2023 15:43, Dmitry Baryshkov wrote:
> Merge interrups and interrupt-parent properties into a single
> interrupts-extended property.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom/pm8018.dtsi | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
> index 85ab36b6d006..22f3c7bac522 100644
> --- a/arch/arm/boot/dts/qcom/pm8018.dtsi
> +++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
> @@ -18,9 +18,8 @@ pwrkey@1c {
>  			compatible = "qcom,pm8018-pwrkey",
>  				     "qcom,pm8921-pwrkey";
>  			reg = <0x1c>;
> -			interrupt-parent = <&pm8018>;
> -			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
> -				     <51 IRQ_TYPE_EDGE_RISING>;
> +			interrupts-extended = <&pm8018 50 IRQ_TYPE_EDGE_RISING>,
> +					      <&pm8018 51 IRQ_TYPE_EDGE_RISING>;
>  			debounce = <15625>;
>  			pull-up;
>  		};
> @@ -38,8 +37,7 @@ pm8018_mpps: mpps@50 {
>  		rtc@11d {
>  			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
>  			reg = <0x11d>;
> -			interrupt-parent = <&pm8018>;
> -			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> +			interrupts-extended = <&pm8018 39 IRQ_TYPE_EDGE_RISING>;
>  			allow-set-time;
>  		};
>  
