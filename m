Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 734D373E58B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 18:45:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229756AbjFZQpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 12:45:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjFZQpC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 12:45:02 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C9EF1B1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 09:45:01 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f95bf5c493so4429183e87.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 09:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687797900; x=1690389900;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3vEXeV/Sk4afVS/2MOXCGUZskBNt+XIgrmtods5sSss=;
        b=oAOpFc+88fn9vW+IK+6pi6kTtkakpeJjsK8u9ImEmturtp3kP/APCqB5Es/7Zv08I2
         JaH0yY4jELe9CHL0kXHQvKMm/qjxUj0f7OcSKX8d6Fys+sZSK7zfRyOukP8brAtG7QsR
         o8A6skgw6bzbaX6hO/WmC8zLsuT82iJts0J/1mlk8PpwuvjQYTKQI1x4Vs2rV7htUWli
         d1anJh2apk24mIm5w15t5ktBPVxGbLyllJZq2smJeY96AI3OaKj2MX20ZANeBpdrKZ64
         IkmjGUiYLuxHbLsko9sfx/iHRhUJup2SA0P8pRGaH18Qhu1S/h3Zq0bUdFE0VjscjNur
         nhhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687797900; x=1690389900;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3vEXeV/Sk4afVS/2MOXCGUZskBNt+XIgrmtods5sSss=;
        b=GbS4+5pzPzPTBqX2zh3FK2l3HTAsU3xt8N3VRzKx2xdv/qgMr4VXvPsCyJWYN28ntU
         ljC6sYvr3YQu58LuDZKWOrhZbCctA0EKaj742wqQIYVuGSgBsb4KV6/NXhsxj0Lx5cRZ
         zmz3nOxYkaXOZQZg/jpQxr4gEcF/3/fzG9I9i48Qj9Wuk/yJRMK2XzgWykAPInPT9ssW
         k3FpsEUxpZBCdclMXSZxPJa3wYMjQeE73I6rs4v9W/zgN0Yeb3oPC1eW4TtsFPU4C8ED
         LXm3eyHkqZZqyPXn5K9Lnowsko/eoLqlU0k2lEpDaDgRL6WX/eGzbcJuduVf8WAJ5+qH
         ccng==
X-Gm-Message-State: AC+VfDwVxt2asVn0od5xtoe3tv8BN7pkp1o58kDgB96ofyqMQbgZDLFV
        cyr+BTMcMjgqtVbpvJk54J/4pA==
X-Google-Smtp-Source: ACHHUZ6jVqx9ceHuLbFLOjAwGcH1EIuMniPO4N/EW1rznGKatGJNUANWGUKcYldFsYgISdx8zHzY4A==
X-Received: by 2002:a19:ab12:0:b0:4f8:6aec:1a7b with SMTP id u18-20020a19ab12000000b004f86aec1a7bmr12849626lfe.67.1687797899710;
        Mon, 26 Jun 2023 09:44:59 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id q16-20020a19a410000000b004fa5f4fd094sm1016610lfc.266.2023.06.26.09.44.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 09:44:59 -0700 (PDT)
Message-ID: <16c58f1e-7cd5-926f-046b-265e90022a1a@linaro.org>
Date:   Mon, 26 Jun 2023 18:44:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 20/26] ARM: dts: qcom: apq8064-asus-nexus7-flo:
 constraint cpufreq regulators
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
References: <20230625202547.174647-1-dmitry.baryshkov@linaro.org>
 <20230625202547.174647-21-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230625202547.174647-21-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25.06.2023 22:25, Dmitry Baryshkov wrote:
> Add additional constraints to the CPUfreq-related regulators, it is
> better be safe than sorry there.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
I'd say this and similar patches could go earlier in the series..

fwiw:

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
> index c57c27cd8a20..9f5d72727356 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
> @@ -218,9 +218,9 @@ s1 {
>  			bias-pull-down;
>  		};
>  
> -		/* msm otg HSUSB_VDDCX */
> +		/* msm otg HSUSB_VDDCX and VDD_DIG */
>  		s3 {
> -			regulator-min-microvolt = <500000>;
> +			regulator-min-microvolt = <950000>;
>  			regulator-max-microvolt = <1150000>;
>  			qcom,switch-mode-frequency = <4800000>;
>  		};
> @@ -301,6 +301,12 @@ l23 {
>  			bias-pull-down;
>  		};
>  
> +		/* VDD_MEM */
> +		l24 {
> +			regulator-min-microvolt = <1050000>;
> +			regulator-max-microvolt = <1150000>;
> +		};
> +
>  		/*
>  		 * tabla2x-slim-CDC_VDDA_A_1P2V
>  		 * tabla2x-slim-VDDD_CDC_D
> @@ -329,8 +335,12 @@ lvs6 {
>  		/*
>  		 * mipi_dsi.1-dsi1_vddio
>  		 * pil_riva-pll_vdd
> +		 * HFPLL regulator
>  		 */
>  		lvs7 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-boot-on;
>  			bias-pull-down;
>  		};
>  	};
