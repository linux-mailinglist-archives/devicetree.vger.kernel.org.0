Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCF7973DE40
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 13:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbjFZLxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 07:53:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjFZLxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 07:53:09 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 082BD1AC
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 04:53:07 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so4177498e87.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 04:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687780385; x=1690372385;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vBX4dytAHIXFt5nhzzMI9O3bPG1Rgi/scCR0pv2SFl4=;
        b=T1rR2RUU9+R3h1zabiadV+TlvQK8bQ4ONxfcZOJieqYXSadwTi/aKlkqpa4EIEyAJq
         OArHmD+131v4Oi3LPnxij5P/YPMltxm7mEHRE5Hje8sW7puappN/RSdoZuFF3uZqQhbu
         tFeYE8HZloow0Q4YqGoQKTxh+tzDpvSawxSIechvZYZX1PFrJga+j5f3ASRvtWv34aoJ
         zgSHVbYTxH7F287G8azSkNjAO7UGtTAf52gg3La2tefrSMwfQlCemKSmtQ0boinqrC1Z
         un++5ejSHq6dPTDN4jhJGtI+w6OG4EFi9ZlyXVerR/bp2uAC4jaUApYP6RGJu6LUV3Ff
         fLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687780385; x=1690372385;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vBX4dytAHIXFt5nhzzMI9O3bPG1Rgi/scCR0pv2SFl4=;
        b=eV7DSy3vaKUcjDeQViBkrqlD46c1hqSfFhs1EKiNeIjt5ZcKTj6qzPD8bwSa+s/R/X
         kvsTB/0hhXL6dwtp9OJ1sTLa4n+poT8/rTXi/yhbH2WtqQdOQYHuRzMWC+Tmtjp+x569
         UhJ0OpEmf76eNH8jV0UihrDcUsbt/8R7N5d8zXbhbtU1J9RmNjMJPboRRV6qh5OPv02T
         L+P35xK3owIXvJzRuuexIxL1AJ/Y96qXgIvvlMc38c8rE4LyXLLSF7dHbWbJoPUcPRiu
         As6kwYzM/oaUEguYAcuA8niCjD7M8xQjt6y/Trta8j+i0OPnBfSN4YAr/eyxHJ2l9DaO
         LmiQ==
X-Gm-Message-State: AC+VfDymV9YV8w7pDCwFdrdZPr6FAlh9/MyYeefLqKo76+QGP7H7gTZM
        agBcs1ZrVxcdh42TFVmvneWh8g==
X-Google-Smtp-Source: ACHHUZ4AVTUTy7bGjzfLDoxi4U06H1byhZ08pOEsTGZXM8WvljLoAQul9s6R4ixF8GSw7hKjA+X3jQ==
X-Received: by 2002:a19:434a:0:b0:4f8:6e1d:cf98 with SMTP id m10-20020a19434a000000b004f86e1dcf98mr12152471lfj.66.1687780385236;
        Mon, 26 Jun 2023 04:53:05 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id t4-20020ac24c04000000b004fb7584b7absm397429lfq.5.2023.06.26.04.53.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 04:53:04 -0700 (PDT)
Message-ID: <a2b3d87c-244d-5705-2400-8ffe5d6cb5b7@linaro.org>
Date:   Mon, 26 Jun 2023 13:53:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 15/26] ARM: dts: qcom: apq8064: declare SAW2 regulators
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
 <20230625202547.174647-16-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230625202547.174647-16-dmitry.baryshkov@linaro.org>
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
> The SAW2 (SPM and AVS Wrapper) among other things is yet another way to
> handle CPU-related PMIC regulators. Provide a way to control voltage of
> these regulators.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 24 ++++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> index 471eeca6a589..1eb6d752ebae 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -425,25 +425,41 @@ acc3: clock-controller@20b8000 {
>  		saw0: power-manager@2089000 {
>  			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
>  			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
> -			regulator;
> +
> +			saw0_vreg: regulator {
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <1300000>;
> +			};
>  		};
>  
>  		saw1: power-manager@2099000 {
>  			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
>  			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
> -			regulator;
> +
> +			saw1_vreg: regulator {
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <1300000>;
> +			};
>  		};
>  
>  		saw2: power-manager@20a9000 {
>  			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
>  			reg = <0x020a9000 0x1000>, <0x02009000 0x1000>;
> -			regulator;
> +
> +			saw2_vreg: regulator {
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <1300000>;
> +			};
>  		};
>  
>  		saw3: power-manager@20b9000 {
>  			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
>  			reg = <0x020b9000 0x1000>, <0x02009000 0x1000>;
> -			regulator;
> +
> +			saw3_vreg: regulator {
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <1300000>;
> +			};
>  		};
>  
>  		sps_sic_non_secure: sps-sic-non-secure@12100000 {
