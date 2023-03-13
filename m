Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD0766B71D4
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 09:58:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbjCMI6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 04:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230499AbjCMI5a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 04:57:30 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E9C46149
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:54:04 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id s20so14674854lfb.11
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678697642;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=thVqMC7+HpRMTcybt95+ayTW4ay07A2B/Ji+gmQk5aQ=;
        b=EuDwLQDzlYNRnpgmaYBnZ2K0/obtIckQCYevgR6u0MuB18T6f36KsPCtm+vZYH8Qul
         NtCExx2XQNpSoTn6SbEtPulsIUhk0xo2nUdsY/IYEBCrzN/s8c9ffZNNzsqwqSSLNqvE
         EpVXpysl06IiL4fI0Q3kJQghjgdvUDDpk3hluS/VYlrLWSvQbSn00B4Nkzmt3pqONeVB
         wpi72bO/C9Sm9rUzfgaeYSild/MB87UoRytarQF0jEEik4xkgKnkVbZooERvDXQl7Fiz
         AkHUgnFhvJuH5KvLm8+eLQBcbu2C7DvYoUSAVKDlu06GGmqBdINQLVdHnMokYOZKfYA3
         3aEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678697642;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=thVqMC7+HpRMTcybt95+ayTW4ay07A2B/Ji+gmQk5aQ=;
        b=2gjSqIIJxjdakUXOhYpD9JSptJtwbrKqh9ZDNlLjl5nyXTtpoU7fnies8AwXxRaVNI
         g6aLONQ5CK+wIhyTgEkmXy0qDyNnLFCtP7KtDdQ044W5Bk+COXF3xiTXjeuX2DbQhzO/
         bLOyo08uTNi984h7IFBmucDeQsxyAiqRhwk04PoL1evgaW2vAEF9DZ8jdy7oo6SENnEN
         yfutoRQS6i02f0uXg4F9fdfG/5KwJCEFQMnIZX3gZkb0gFEDQxGFtgE7IMZOkHgJYb1j
         JN/drQdiK+s0Oli/kKNpjGR47/Jh6EF/IsxxjbECLbIptJ79UP5Bqa8jU39T3MHU9mx1
         VXFQ==
X-Gm-Message-State: AO0yUKXKUcCt9ZbKBRx/bAUdkJde4mhU7UYFj5sVf4/w9zj6jKGn1Q5w
        Pwy8eqxa0XMZ69ejoa2idOA5x58qdG478wh9WsM=
X-Google-Smtp-Source: AK7set8WyDTQWXy5IQPWjA0y0XVqMq5poQM6bVwqWY9LkhJNvBfPwmz0+gxqrfXLKauAi9bmx5Pw9g==
X-Received: by 2002:a19:f00c:0:b0:4d8:4f53:37b2 with SMTP id p12-20020a19f00c000000b004d84f5337b2mr8303766lfc.1.1678697642286;
        Mon, 13 Mar 2023 01:54:02 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id f6-20020ac25326000000b004d85f2acd8esm890012lfh.295.2023.03.13.01.54.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 01:54:02 -0700 (PDT)
Message-ID: <fb8ca99a-15d8-a8b6-9fd1-18d14e68bbcc@linaro.org>
Date:   Mon, 13 Mar 2023 09:54:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 8/8] arm64: dts: qcom: apq8096-db820c: drop unit address
 from PMI8994 regulator
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230312183622.460488-1-krzysztof.kozlowski@linaro.org>
 <20230312183622.460488-8-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230312183622.460488-8-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.03.2023 19:36, Krzysztof Kozlowski wrote:
> The PMIC regulators are not supposed to have unit addresses.
> 
> Fixes: 2317b87a2a6f ("arm64: dts: qcom: db820c: Add vdd_gfx and tie it into mmcc")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 3 +--
>  arch/arm64/boot/dts/qcom/pmi8994.dtsi       | 2 --
>  2 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
> index 5ceaab5d4039..4476e2e22816 100644
> --- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
> +++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
> @@ -704,8 +704,7 @@ pmi8994_mpp2_userled4: mpp2-userled4-state {
>  &pmi8994_spmi_regulators {
>  	vdd_s2-supply = <&vph_pwr>;
>  
> -	vdd_gfx: s2@1700 {
> -		reg = <0x1700 0x100>;
> +	vdd_gfx: s2 {
>  		regulator-name = "VDD_GFX";
>  		regulator-min-microvolt = <980000>;
>  		regulator-max-microvolt = <980000>;
> diff --git a/arch/arm64/boot/dts/qcom/pmi8994.dtsi b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
> index a0af91698d49..0192968f4d9b 100644
> --- a/arch/arm64/boot/dts/qcom/pmi8994.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
> @@ -49,8 +49,6 @@ pmi8994_lpg: pwm {
>  
>  		pmi8994_spmi_regulators: regulators {
>  			compatible = "qcom,pmi8994-regulators";
> -			#address-cells = <1>;
> -			#size-cells = <1>;
>  		};
>  
>  		pmi8994_wled: wled@d800 {
