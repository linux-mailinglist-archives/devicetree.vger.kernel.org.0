Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B816673E593
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 18:45:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbjFZQpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 12:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbjFZQpU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 12:45:20 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAE401B1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 09:45:18 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so4774848e87.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 09:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687797917; x=1690389917;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIFt8n1nErZrh34dAomtKoLN8rbez3CVPdsde3QJRw4=;
        b=NPcZgQKm1MvmoCUf1GJ1m8W2/WCSKhm+Cp/pSJLZy2BQybI+bjSPEwdyBTGRzF8ahs
         sOzs3RcQOm5X+mxbNJmrJcWbA3qX4tAZNwJxqNqi3DMaGgf/4/+gQgn2RH2I4QDihF2F
         GVmEoFlVzt7TnWF0X/l1ALhGPtDST9LjJrcqjBZqsgy9rRYRcn+9T4fFzTlq95N6eKRw
         6OPQ2WVkqQ5mB2J+GqFm/5rwl355bi9SMN3YiN1Mbc6BvBnJFlbu7cpboRDzeziod0uL
         t5ENzbI0A09HLbd5dCTKapsFCAtBtFu8Jftb/idSBNx4xA4xuxJr4xa+XAzXWjkjOYT3
         /jNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687797917; x=1690389917;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIFt8n1nErZrh34dAomtKoLN8rbez3CVPdsde3QJRw4=;
        b=EjYgyaRSNF1u7O/JD6zMePYH1O8oblxzbg1KcSeWQvtzihCm4y2qUUBItgudFA/rzQ
         OD2kv5hVyDmIKwyVideiGcri6RcCHbNbyq4Ef3qeAcMOHUkIP+boex1ZD8cXGbLFXb86
         l3y2KmlAdp3FB4r4SoBDxp2rwHyUxO1Y538cwwQEsYIFwUeil6UILdPIqNifUfna5TqI
         OD3lIdVehKTqxuXNaf7RC3FE1vYE7vUIyHVP3CuMR4EOCgkl3aC9brExCaEZZHaV2lLt
         iCPZGXRth6P6k0/PqkiDxcavR1vNoHixaKKF++GHdZYeV9el9rW1EGTTyNzpjgBnmgdO
         x2Qg==
X-Gm-Message-State: AC+VfDwGniS9jvmzEAsy0dsRLH9Ct8/ewuEjprmoe+8+ualE/Ry4JKUR
        LYDO9oLKA2eC3Wcb7DhexalI3Q==
X-Google-Smtp-Source: ACHHUZ5neI4dd52E/aR0a1KOrTSHOMvDVvlYRgVBcRxcuzHdNwVc3D7dqRRoMp73xv6YR4ViXpfN8w==
X-Received: by 2002:a05:6512:5d0:b0:4fb:79b5:5512 with SMTP id o16-20020a05651205d000b004fb79b55512mr1282679lfo.66.1687797916950;
        Mon, 26 Jun 2023 09:45:16 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id s3-20020a19ad43000000b004fb745fd232sm604405lfd.30.2023.06.26.09.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 09:45:16 -0700 (PDT)
Message-ID: <467650f5-2398-0a1f-30de-a6f103b7ba05@linaro.org>
Date:   Mon, 26 Jun 2023 18:45:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 21/26] ARM: dts: qcom: apq8064-ifc6410: constraint
 cpufreq regulators
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
 <20230625202547.174647-22-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230625202547.174647-22-dmitry.baryshkov@linaro.org>
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

On 25.06.2023 22:25, Dmitry Baryshkov wrote:
> Add additional constraints to the CPUfreq-related regulators, it is
> better be safe than sorry there.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
same comment as in p20

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
> index 96307550523a..ad3cd45362df 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
> @@ -215,8 +215,8 @@ s1 {
>  		};
>  
>  		s3 {
> -			regulator-min-microvolt = <1000000>;
> -			regulator-max-microvolt = <1400000>;
> +			regulator-min-microvolt = <950000>;
> +			regulator-max-microvolt = <1150000>;
>  			qcom,switch-mode-frequency = <4800000>;
>  		};
>  
> @@ -262,6 +262,12 @@ l23 {
>  			bias-pull-down;
>  		};
>  
> +		l24 {
> +			regulator-min-microvolt = <1050000>;
> +			regulator-max-microvolt = <1150000>;
> +			bias-pull-down;
> +		};
> +
>  		lvs1 {
>  			bias-pull-down;
>  		};
> @@ -269,6 +275,14 @@ lvs1 {
>  		lvs6 {
>  			bias-pull-down;
>  		};
> +
> +		/* HFPLL regulator */
> +		lvs7 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-boot-on;
> +			regulator-always-on;
> +		};
>  	};
>  };
>  
